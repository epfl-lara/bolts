; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46428 () Bool)

(assert start!46428)

(declare-fun b!513361 () Bool)

(declare-fun e!299770 () Bool)

(declare-fun e!299772 () Bool)

(assert (=> b!513361 (= e!299770 (not e!299772))))

(declare-fun res!313817 () Bool)

(assert (=> b!513361 (=> res!313817 e!299772)))

(declare-fun lt!235083 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4309 0))(
  ( (MissingZero!4309 (index!19424 (_ BitVec 32))) (Found!4309 (index!19425 (_ BitVec 32))) (Intermediate!4309 (undefined!5121 Bool) (index!19426 (_ BitVec 32)) (x!48403 (_ BitVec 32))) (Undefined!4309) (MissingVacant!4309 (index!19427 (_ BitVec 32))) )
))
(declare-fun lt!235082 () SeekEntryResult!4309)

(declare-datatypes ((array!32928 0))(
  ( (array!32929 (arr!15835 (Array (_ BitVec 32) (_ BitVec 64))) (size!16199 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32928)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32928 (_ BitVec 32)) SeekEntryResult!4309)

(assert (=> b!513361 (= res!313817 (= lt!235082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235083 (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176) (array!32929 (store (arr!15835 a!3235) i!1204 k0!2280) (size!16199 a!3235)) mask!3524)))))

(declare-fun lt!235085 () (_ BitVec 32))

(assert (=> b!513361 (= lt!235082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235085 (select (arr!15835 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513361 (= lt!235083 (toIndex!0 (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!513361 (= lt!235085 (toIndex!0 (select (arr!15835 a!3235) j!176) mask!3524))))

(declare-fun e!299769 () Bool)

(assert (=> b!513361 e!299769))

(declare-fun res!313815 () Bool)

(assert (=> b!513361 (=> (not res!313815) (not e!299769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32928 (_ BitVec 32)) Bool)

(assert (=> b!513361 (= res!313815 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15868 0))(
  ( (Unit!15869) )
))
(declare-fun lt!235081 () Unit!15868)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32928 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15868)

(assert (=> b!513361 (= lt!235081 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!513362 () Bool)

(declare-fun res!313813 () Bool)

(assert (=> b!513362 (=> (not res!313813) (not e!299770))))

(declare-datatypes ((List!10046 0))(
  ( (Nil!10043) (Cons!10042 (h!10928 (_ BitVec 64)) (t!16282 List!10046)) )
))
(declare-fun arrayNoDuplicates!0 (array!32928 (_ BitVec 32) List!10046) Bool)

(assert (=> b!513362 (= res!313813 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10043))))

(declare-fun b!513363 () Bool)

(declare-fun res!313808 () Bool)

(assert (=> b!513363 (=> res!313808 e!299772)))

(get-info :version)

(assert (=> b!513363 (= res!313808 (or (undefined!5121 lt!235082) (not ((_ is Intermediate!4309) lt!235082))))))

(declare-fun b!513364 () Bool)

(declare-fun res!313816 () Bool)

(declare-fun e!299773 () Bool)

(assert (=> b!513364 (=> (not res!313816) (not e!299773))))

(assert (=> b!513364 (= res!313816 (and (= (size!16199 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16199 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16199 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!513365 () Bool)

(assert (=> b!513365 (= e!299773 e!299770)))

(declare-fun res!313809 () Bool)

(assert (=> b!513365 (=> (not res!313809) (not e!299770))))

(declare-fun lt!235084 () SeekEntryResult!4309)

(assert (=> b!513365 (= res!313809 (or (= lt!235084 (MissingZero!4309 i!1204)) (= lt!235084 (MissingVacant!4309 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32928 (_ BitVec 32)) SeekEntryResult!4309)

(assert (=> b!513365 (= lt!235084 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!313807 () Bool)

(assert (=> start!46428 (=> (not res!313807) (not e!299773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46428 (= res!313807 (validMask!0 mask!3524))))

(assert (=> start!46428 e!299773))

(assert (=> start!46428 true))

(declare-fun array_inv!11609 (array!32928) Bool)

(assert (=> start!46428 (array_inv!11609 a!3235)))

(declare-fun b!513366 () Bool)

(assert (=> b!513366 (= e!299769 (= (seekEntryOrOpen!0 (select (arr!15835 a!3235) j!176) a!3235 mask!3524) (Found!4309 j!176)))))

(declare-fun b!513367 () Bool)

(declare-fun res!313810 () Bool)

(assert (=> b!513367 (=> (not res!313810) (not e!299773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!513367 (= res!313810 (validKeyInArray!0 k0!2280))))

(declare-fun b!513368 () Bool)

(declare-fun res!313814 () Bool)

(assert (=> b!513368 (=> (not res!313814) (not e!299773))))

(assert (=> b!513368 (= res!313814 (validKeyInArray!0 (select (arr!15835 a!3235) j!176)))))

(declare-fun b!513369 () Bool)

(declare-fun res!313811 () Bool)

(assert (=> b!513369 (=> (not res!313811) (not e!299770))))

(assert (=> b!513369 (= res!313811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!513370 () Bool)

(assert (=> b!513370 (= e!299772 (or (= (select (arr!15835 a!3235) (index!19426 lt!235082)) (select (arr!15835 a!3235) j!176)) (and (bvsge (index!19426 lt!235082) #b00000000000000000000000000000000) (bvslt (index!19426 lt!235082) (size!16199 a!3235)))))))

(assert (=> b!513370 (bvslt (x!48403 lt!235082) #b01111111111111111111111111111110)))

(declare-fun b!513371 () Bool)

(declare-fun res!313812 () Bool)

(assert (=> b!513371 (=> (not res!313812) (not e!299773))))

(declare-fun arrayContainsKey!0 (array!32928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!513371 (= res!313812 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46428 res!313807) b!513364))

(assert (= (and b!513364 res!313816) b!513368))

(assert (= (and b!513368 res!313814) b!513367))

(assert (= (and b!513367 res!313810) b!513371))

(assert (= (and b!513371 res!313812) b!513365))

(assert (= (and b!513365 res!313809) b!513369))

(assert (= (and b!513369 res!313811) b!513362))

(assert (= (and b!513362 res!313813) b!513361))

(assert (= (and b!513361 res!313815) b!513366))

(assert (= (and b!513361 (not res!313817)) b!513363))

(assert (= (and b!513363 (not res!313808)) b!513370))

(declare-fun m!494973 () Bool)

(assert (=> b!513371 m!494973))

(declare-fun m!494975 () Bool)

(assert (=> b!513369 m!494975))

(declare-fun m!494977 () Bool)

(assert (=> b!513362 m!494977))

(declare-fun m!494979 () Bool)

(assert (=> b!513366 m!494979))

(assert (=> b!513366 m!494979))

(declare-fun m!494981 () Bool)

(assert (=> b!513366 m!494981))

(declare-fun m!494983 () Bool)

(assert (=> b!513370 m!494983))

(assert (=> b!513370 m!494979))

(assert (=> b!513368 m!494979))

(assert (=> b!513368 m!494979))

(declare-fun m!494985 () Bool)

(assert (=> b!513368 m!494985))

(declare-fun m!494987 () Bool)

(assert (=> b!513361 m!494987))

(declare-fun m!494989 () Bool)

(assert (=> b!513361 m!494989))

(declare-fun m!494991 () Bool)

(assert (=> b!513361 m!494991))

(assert (=> b!513361 m!494979))

(declare-fun m!494993 () Bool)

(assert (=> b!513361 m!494993))

(declare-fun m!494995 () Bool)

(assert (=> b!513361 m!494995))

(assert (=> b!513361 m!494991))

(declare-fun m!494997 () Bool)

(assert (=> b!513361 m!494997))

(assert (=> b!513361 m!494991))

(declare-fun m!494999 () Bool)

(assert (=> b!513361 m!494999))

(assert (=> b!513361 m!494979))

(declare-fun m!495001 () Bool)

(assert (=> b!513361 m!495001))

(assert (=> b!513361 m!494979))

(declare-fun m!495003 () Bool)

(assert (=> b!513367 m!495003))

(declare-fun m!495005 () Bool)

(assert (=> b!513365 m!495005))

(declare-fun m!495007 () Bool)

(assert (=> start!46428 m!495007))

(declare-fun m!495009 () Bool)

(assert (=> start!46428 m!495009))

(check-sat (not b!513365) (not start!46428) (not b!513362) (not b!513369) (not b!513371) (not b!513366) (not b!513367) (not b!513361) (not b!513368))
(check-sat)
(get-model)

(declare-fun b!513413 () Bool)

(declare-fun e!299797 () Bool)

(declare-fun e!299795 () Bool)

(assert (=> b!513413 (= e!299797 e!299795)))

(declare-fun lt!235109 () (_ BitVec 64))

(assert (=> b!513413 (= lt!235109 (select (arr!15835 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235108 () Unit!15868)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32928 (_ BitVec 64) (_ BitVec 32)) Unit!15868)

(assert (=> b!513413 (= lt!235108 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235109 #b00000000000000000000000000000000))))

(assert (=> b!513413 (arrayContainsKey!0 a!3235 lt!235109 #b00000000000000000000000000000000)))

(declare-fun lt!235107 () Unit!15868)

(assert (=> b!513413 (= lt!235107 lt!235108)))

(declare-fun res!313855 () Bool)

(assert (=> b!513413 (= res!313855 (= (seekEntryOrOpen!0 (select (arr!15835 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4309 #b00000000000000000000000000000000)))))

(assert (=> b!513413 (=> (not res!313855) (not e!299795))))

(declare-fun b!513414 () Bool)

(declare-fun call!31556 () Bool)

(assert (=> b!513414 (= e!299797 call!31556)))

(declare-fun d!79051 () Bool)

(declare-fun res!313856 () Bool)

(declare-fun e!299796 () Bool)

(assert (=> d!79051 (=> res!313856 e!299796)))

(assert (=> d!79051 (= res!313856 (bvsge #b00000000000000000000000000000000 (size!16199 a!3235)))))

(assert (=> d!79051 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!299796)))

(declare-fun b!513415 () Bool)

(assert (=> b!513415 (= e!299795 call!31556)))

(declare-fun b!513416 () Bool)

(assert (=> b!513416 (= e!299796 e!299797)))

(declare-fun c!60062 () Bool)

(assert (=> b!513416 (= c!60062 (validKeyInArray!0 (select (arr!15835 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31553 () Bool)

(assert (=> bm!31553 (= call!31556 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79051 (not res!313856)) b!513416))

(assert (= (and b!513416 c!60062) b!513413))

(assert (= (and b!513416 (not c!60062)) b!513414))

(assert (= (and b!513413 res!313855) b!513415))

(assert (= (or b!513415 b!513414) bm!31553))

(declare-fun m!495049 () Bool)

(assert (=> b!513413 m!495049))

(declare-fun m!495051 () Bool)

(assert (=> b!513413 m!495051))

(declare-fun m!495053 () Bool)

(assert (=> b!513413 m!495053))

(assert (=> b!513413 m!495049))

(declare-fun m!495055 () Bool)

(assert (=> b!513413 m!495055))

(assert (=> b!513416 m!495049))

(assert (=> b!513416 m!495049))

(declare-fun m!495057 () Bool)

(assert (=> b!513416 m!495057))

(declare-fun m!495059 () Bool)

(assert (=> bm!31553 m!495059))

(assert (=> b!513369 d!79051))

(declare-fun b!513427 () Bool)

(declare-fun e!299806 () Bool)

(declare-fun call!31559 () Bool)

(assert (=> b!513427 (= e!299806 call!31559)))

(declare-fun b!513428 () Bool)

(declare-fun e!299809 () Bool)

(declare-fun contains!2736 (List!10046 (_ BitVec 64)) Bool)

(assert (=> b!513428 (= e!299809 (contains!2736 Nil!10043 (select (arr!15835 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513429 () Bool)

(assert (=> b!513429 (= e!299806 call!31559)))

(declare-fun b!513430 () Bool)

(declare-fun e!299807 () Bool)

(assert (=> b!513430 (= e!299807 e!299806)))

(declare-fun c!60065 () Bool)

(assert (=> b!513430 (= c!60065 (validKeyInArray!0 (select (arr!15835 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79053 () Bool)

(declare-fun res!313863 () Bool)

(declare-fun e!299808 () Bool)

(assert (=> d!79053 (=> res!313863 e!299808)))

(assert (=> d!79053 (= res!313863 (bvsge #b00000000000000000000000000000000 (size!16199 a!3235)))))

(assert (=> d!79053 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10043) e!299808)))

(declare-fun b!513431 () Bool)

(assert (=> b!513431 (= e!299808 e!299807)))

(declare-fun res!313865 () Bool)

(assert (=> b!513431 (=> (not res!313865) (not e!299807))))

(assert (=> b!513431 (= res!313865 (not e!299809))))

(declare-fun res!313864 () Bool)

(assert (=> b!513431 (=> (not res!313864) (not e!299809))))

(assert (=> b!513431 (= res!313864 (validKeyInArray!0 (select (arr!15835 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31556 () Bool)

(assert (=> bm!31556 (= call!31559 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60065 (Cons!10042 (select (arr!15835 a!3235) #b00000000000000000000000000000000) Nil!10043) Nil!10043)))))

(assert (= (and d!79053 (not res!313863)) b!513431))

(assert (= (and b!513431 res!313864) b!513428))

(assert (= (and b!513431 res!313865) b!513430))

(assert (= (and b!513430 c!60065) b!513427))

(assert (= (and b!513430 (not c!60065)) b!513429))

(assert (= (or b!513427 b!513429) bm!31556))

(assert (=> b!513428 m!495049))

(assert (=> b!513428 m!495049))

(declare-fun m!495061 () Bool)

(assert (=> b!513428 m!495061))

(assert (=> b!513430 m!495049))

(assert (=> b!513430 m!495049))

(assert (=> b!513430 m!495057))

(assert (=> b!513431 m!495049))

(assert (=> b!513431 m!495049))

(assert (=> b!513431 m!495057))

(assert (=> bm!31556 m!495049))

(declare-fun m!495063 () Bool)

(assert (=> bm!31556 m!495063))

(assert (=> b!513362 d!79053))

(declare-fun d!79055 () Bool)

(assert (=> d!79055 (= (validKeyInArray!0 (select (arr!15835 a!3235) j!176)) (and (not (= (select (arr!15835 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15835 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513368 d!79055))

(declare-fun d!79057 () Bool)

(declare-fun lt!235115 () (_ BitVec 32))

(declare-fun lt!235114 () (_ BitVec 32))

(assert (=> d!79057 (= lt!235115 (bvmul (bvxor lt!235114 (bvlshr lt!235114 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79057 (= lt!235114 ((_ extract 31 0) (bvand (bvxor (select (arr!15835 a!3235) j!176) (bvlshr (select (arr!15835 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79057 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313866 (let ((h!10930 ((_ extract 31 0) (bvand (bvxor (select (arr!15835 a!3235) j!176) (bvlshr (select (arr!15835 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48405 (bvmul (bvxor h!10930 (bvlshr h!10930 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48405 (bvlshr x!48405 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313866 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313866 #b00000000000000000000000000000000))))))

(assert (=> d!79057 (= (toIndex!0 (select (arr!15835 a!3235) j!176) mask!3524) (bvand (bvxor lt!235115 (bvlshr lt!235115 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513361 d!79057))

(declare-fun b!513468 () Bool)

(declare-fun e!299838 () SeekEntryResult!4309)

(assert (=> b!513468 (= e!299838 (Intermediate!4309 true lt!235085 #b00000000000000000000000000000000))))

(declare-fun b!513469 () Bool)

(declare-fun e!299839 () Bool)

(declare-fun e!299835 () Bool)

(assert (=> b!513469 (= e!299839 e!299835)))

(declare-fun res!313886 () Bool)

(declare-fun lt!235130 () SeekEntryResult!4309)

(assert (=> b!513469 (= res!313886 (and ((_ is Intermediate!4309) lt!235130) (not (undefined!5121 lt!235130)) (bvslt (x!48403 lt!235130) #b01111111111111111111111111111110) (bvsge (x!48403 lt!235130) #b00000000000000000000000000000000) (bvsge (x!48403 lt!235130) #b00000000000000000000000000000000)))))

(assert (=> b!513469 (=> (not res!313886) (not e!299835))))

(declare-fun d!79059 () Bool)

(assert (=> d!79059 e!299839))

(declare-fun c!60075 () Bool)

(assert (=> d!79059 (= c!60075 (and ((_ is Intermediate!4309) lt!235130) (undefined!5121 lt!235130)))))

(assert (=> d!79059 (= lt!235130 e!299838)))

(declare-fun c!60076 () Bool)

(assert (=> d!79059 (= c!60076 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235129 () (_ BitVec 64))

(assert (=> d!79059 (= lt!235129 (select (arr!15835 a!3235) lt!235085))))

(assert (=> d!79059 (validMask!0 mask!3524)))

(assert (=> d!79059 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235085 (select (arr!15835 a!3235) j!176) a!3235 mask!3524) lt!235130)))

(declare-fun b!513470 () Bool)

(declare-fun e!299836 () SeekEntryResult!4309)

(assert (=> b!513470 (= e!299838 e!299836)))

(declare-fun c!60077 () Bool)

(assert (=> b!513470 (= c!60077 (or (= lt!235129 (select (arr!15835 a!3235) j!176)) (= (bvadd lt!235129 lt!235129) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513471 () Bool)

(assert (=> b!513471 (and (bvsge (index!19426 lt!235130) #b00000000000000000000000000000000) (bvslt (index!19426 lt!235130) (size!16199 a!3235)))))

(declare-fun e!299837 () Bool)

(assert (=> b!513471 (= e!299837 (= (select (arr!15835 a!3235) (index!19426 lt!235130)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513472 () Bool)

(assert (=> b!513472 (= e!299839 (bvsge (x!48403 lt!235130) #b01111111111111111111111111111110))))

(declare-fun b!513473 () Bool)

(assert (=> b!513473 (= e!299836 (Intermediate!4309 false lt!235085 #b00000000000000000000000000000000))))

(declare-fun b!513474 () Bool)

(assert (=> b!513474 (and (bvsge (index!19426 lt!235130) #b00000000000000000000000000000000) (bvslt (index!19426 lt!235130) (size!16199 a!3235)))))

(declare-fun res!313887 () Bool)

(assert (=> b!513474 (= res!313887 (= (select (arr!15835 a!3235) (index!19426 lt!235130)) (select (arr!15835 a!3235) j!176)))))

(assert (=> b!513474 (=> res!313887 e!299837)))

(assert (=> b!513474 (= e!299835 e!299837)))

(declare-fun b!513475 () Bool)

(assert (=> b!513475 (and (bvsge (index!19426 lt!235130) #b00000000000000000000000000000000) (bvslt (index!19426 lt!235130) (size!16199 a!3235)))))

(declare-fun res!313885 () Bool)

(assert (=> b!513475 (= res!313885 (= (select (arr!15835 a!3235) (index!19426 lt!235130)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513475 (=> res!313885 e!299837)))

(declare-fun b!513476 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513476 (= e!299836 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235085 #b00000000000000000000000000000000 mask!3524) (select (arr!15835 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!79059 c!60076) b!513468))

(assert (= (and d!79059 (not c!60076)) b!513470))

(assert (= (and b!513470 c!60077) b!513473))

(assert (= (and b!513470 (not c!60077)) b!513476))

(assert (= (and d!79059 c!60075) b!513472))

(assert (= (and d!79059 (not c!60075)) b!513469))

(assert (= (and b!513469 res!313886) b!513474))

(assert (= (and b!513474 (not res!313887)) b!513475))

(assert (= (and b!513475 (not res!313885)) b!513471))

(declare-fun m!495079 () Bool)

(assert (=> b!513475 m!495079))

(assert (=> b!513471 m!495079))

(declare-fun m!495081 () Bool)

(assert (=> b!513476 m!495081))

(assert (=> b!513476 m!495081))

(assert (=> b!513476 m!494979))

(declare-fun m!495083 () Bool)

(assert (=> b!513476 m!495083))

(assert (=> b!513474 m!495079))

(declare-fun m!495085 () Bool)

(assert (=> d!79059 m!495085))

(assert (=> d!79059 m!495007))

(assert (=> b!513361 d!79059))

(declare-fun b!513477 () Bool)

(declare-fun e!299842 () Bool)

(declare-fun e!299840 () Bool)

(assert (=> b!513477 (= e!299842 e!299840)))

(declare-fun lt!235133 () (_ BitVec 64))

(assert (=> b!513477 (= lt!235133 (select (arr!15835 a!3235) j!176))))

(declare-fun lt!235132 () Unit!15868)

(assert (=> b!513477 (= lt!235132 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235133 j!176))))

(assert (=> b!513477 (arrayContainsKey!0 a!3235 lt!235133 #b00000000000000000000000000000000)))

(declare-fun lt!235131 () Unit!15868)

(assert (=> b!513477 (= lt!235131 lt!235132)))

(declare-fun res!313889 () Bool)

(assert (=> b!513477 (= res!313889 (= (seekEntryOrOpen!0 (select (arr!15835 a!3235) j!176) a!3235 mask!3524) (Found!4309 j!176)))))

(assert (=> b!513477 (=> (not res!313889) (not e!299840))))

(declare-fun b!513478 () Bool)

(declare-fun call!31563 () Bool)

(assert (=> b!513478 (= e!299842 call!31563)))

(declare-fun d!79069 () Bool)

(declare-fun res!313890 () Bool)

(declare-fun e!299841 () Bool)

(assert (=> d!79069 (=> res!313890 e!299841)))

(assert (=> d!79069 (= res!313890 (bvsge j!176 (size!16199 a!3235)))))

(assert (=> d!79069 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!299841)))

(declare-fun b!513479 () Bool)

(assert (=> b!513479 (= e!299840 call!31563)))

(declare-fun b!513480 () Bool)

(assert (=> b!513480 (= e!299841 e!299842)))

(declare-fun c!60078 () Bool)

(assert (=> b!513480 (= c!60078 (validKeyInArray!0 (select (arr!15835 a!3235) j!176)))))

(declare-fun bm!31560 () Bool)

(assert (=> bm!31560 (= call!31563 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79069 (not res!313890)) b!513480))

(assert (= (and b!513480 c!60078) b!513477))

(assert (= (and b!513480 (not c!60078)) b!513478))

(assert (= (and b!513477 res!313889) b!513479))

(assert (= (or b!513479 b!513478) bm!31560))

(assert (=> b!513477 m!494979))

(declare-fun m!495087 () Bool)

(assert (=> b!513477 m!495087))

(declare-fun m!495089 () Bool)

(assert (=> b!513477 m!495089))

(assert (=> b!513477 m!494979))

(assert (=> b!513477 m!494981))

(assert (=> b!513480 m!494979))

(assert (=> b!513480 m!494979))

(assert (=> b!513480 m!494985))

(declare-fun m!495091 () Bool)

(assert (=> bm!31560 m!495091))

(assert (=> b!513361 d!79069))

(declare-fun d!79071 () Bool)

(declare-fun lt!235135 () (_ BitVec 32))

(declare-fun lt!235134 () (_ BitVec 32))

(assert (=> d!79071 (= lt!235135 (bvmul (bvxor lt!235134 (bvlshr lt!235134 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79071 (= lt!235134 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79071 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313866 (let ((h!10930 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48405 (bvmul (bvxor h!10930 (bvlshr h!10930 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48405 (bvlshr x!48405 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313866 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313866 #b00000000000000000000000000000000))))))

(assert (=> d!79071 (= (toIndex!0 (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!235135 (bvlshr lt!235135 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513361 d!79071))

(declare-fun d!79073 () Bool)

(assert (=> d!79073 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235147 () Unit!15868)

(declare-fun choose!38 (array!32928 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15868)

(assert (=> d!79073 (= lt!235147 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79073 (validMask!0 mask!3524)))

(assert (=> d!79073 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235147)))

(declare-fun bs!16251 () Bool)

(assert (= bs!16251 d!79073))

(assert (=> bs!16251 m!494995))

(declare-fun m!495099 () Bool)

(assert (=> bs!16251 m!495099))

(assert (=> bs!16251 m!495007))

(assert (=> b!513361 d!79073))

(declare-fun b!513485 () Bool)

(declare-fun e!299849 () SeekEntryResult!4309)

(assert (=> b!513485 (= e!299849 (Intermediate!4309 true lt!235083 #b00000000000000000000000000000000))))

(declare-fun b!513486 () Bool)

(declare-fun e!299850 () Bool)

(declare-fun e!299846 () Bool)

(assert (=> b!513486 (= e!299850 e!299846)))

(declare-fun res!313894 () Bool)

(declare-fun lt!235149 () SeekEntryResult!4309)

(assert (=> b!513486 (= res!313894 (and ((_ is Intermediate!4309) lt!235149) (not (undefined!5121 lt!235149)) (bvslt (x!48403 lt!235149) #b01111111111111111111111111111110) (bvsge (x!48403 lt!235149) #b00000000000000000000000000000000) (bvsge (x!48403 lt!235149) #b00000000000000000000000000000000)))))

(assert (=> b!513486 (=> (not res!313894) (not e!299846))))

(declare-fun d!79079 () Bool)

(assert (=> d!79079 e!299850))

(declare-fun c!60080 () Bool)

(assert (=> d!79079 (= c!60080 (and ((_ is Intermediate!4309) lt!235149) (undefined!5121 lt!235149)))))

(assert (=> d!79079 (= lt!235149 e!299849)))

(declare-fun c!60081 () Bool)

(assert (=> d!79079 (= c!60081 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235148 () (_ BitVec 64))

(assert (=> d!79079 (= lt!235148 (select (arr!15835 (array!32929 (store (arr!15835 a!3235) i!1204 k0!2280) (size!16199 a!3235))) lt!235083))))

(assert (=> d!79079 (validMask!0 mask!3524)))

(assert (=> d!79079 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235083 (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176) (array!32929 (store (arr!15835 a!3235) i!1204 k0!2280) (size!16199 a!3235)) mask!3524) lt!235149)))

(declare-fun b!513487 () Bool)

(declare-fun e!299847 () SeekEntryResult!4309)

(assert (=> b!513487 (= e!299849 e!299847)))

(declare-fun c!60082 () Bool)

(assert (=> b!513487 (= c!60082 (or (= lt!235148 (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!235148 lt!235148) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513488 () Bool)

(assert (=> b!513488 (and (bvsge (index!19426 lt!235149) #b00000000000000000000000000000000) (bvslt (index!19426 lt!235149) (size!16199 (array!32929 (store (arr!15835 a!3235) i!1204 k0!2280) (size!16199 a!3235)))))))

(declare-fun e!299848 () Bool)

(assert (=> b!513488 (= e!299848 (= (select (arr!15835 (array!32929 (store (arr!15835 a!3235) i!1204 k0!2280) (size!16199 a!3235))) (index!19426 lt!235149)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513489 () Bool)

(assert (=> b!513489 (= e!299850 (bvsge (x!48403 lt!235149) #b01111111111111111111111111111110))))

(declare-fun b!513490 () Bool)

(assert (=> b!513490 (= e!299847 (Intermediate!4309 false lt!235083 #b00000000000000000000000000000000))))

(declare-fun b!513491 () Bool)

(assert (=> b!513491 (and (bvsge (index!19426 lt!235149) #b00000000000000000000000000000000) (bvslt (index!19426 lt!235149) (size!16199 (array!32929 (store (arr!15835 a!3235) i!1204 k0!2280) (size!16199 a!3235)))))))

(declare-fun res!313895 () Bool)

(assert (=> b!513491 (= res!313895 (= (select (arr!15835 (array!32929 (store (arr!15835 a!3235) i!1204 k0!2280) (size!16199 a!3235))) (index!19426 lt!235149)) (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176)))))

(assert (=> b!513491 (=> res!313895 e!299848)))

(assert (=> b!513491 (= e!299846 e!299848)))

(declare-fun b!513492 () Bool)

(assert (=> b!513492 (and (bvsge (index!19426 lt!235149) #b00000000000000000000000000000000) (bvslt (index!19426 lt!235149) (size!16199 (array!32929 (store (arr!15835 a!3235) i!1204 k0!2280) (size!16199 a!3235)))))))

(declare-fun res!313893 () Bool)

(assert (=> b!513492 (= res!313893 (= (select (arr!15835 (array!32929 (store (arr!15835 a!3235) i!1204 k0!2280) (size!16199 a!3235))) (index!19426 lt!235149)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513492 (=> res!313893 e!299848)))

(declare-fun b!513493 () Bool)

(assert (=> b!513493 (= e!299847 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235083 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15835 a!3235) i!1204 k0!2280) j!176) (array!32929 (store (arr!15835 a!3235) i!1204 k0!2280) (size!16199 a!3235)) mask!3524))))

(assert (= (and d!79079 c!60081) b!513485))

(assert (= (and d!79079 (not c!60081)) b!513487))

(assert (= (and b!513487 c!60082) b!513490))

(assert (= (and b!513487 (not c!60082)) b!513493))

(assert (= (and d!79079 c!60080) b!513489))

(assert (= (and d!79079 (not c!60080)) b!513486))

(assert (= (and b!513486 res!313894) b!513491))

(assert (= (and b!513491 (not res!313895)) b!513492))

(assert (= (and b!513492 (not res!313893)) b!513488))

(declare-fun m!495101 () Bool)

(assert (=> b!513492 m!495101))

(assert (=> b!513488 m!495101))

(declare-fun m!495103 () Bool)

(assert (=> b!513493 m!495103))

(assert (=> b!513493 m!495103))

(assert (=> b!513493 m!494991))

(declare-fun m!495105 () Bool)

(assert (=> b!513493 m!495105))

(assert (=> b!513491 m!495101))

(declare-fun m!495107 () Bool)

(assert (=> d!79079 m!495107))

(assert (=> d!79079 m!495007))

(assert (=> b!513361 d!79079))

(declare-fun lt!235176 () SeekEntryResult!4309)

(declare-fun e!299901 () SeekEntryResult!4309)

(declare-fun b!513581 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32928 (_ BitVec 32)) SeekEntryResult!4309)

(assert (=> b!513581 (= e!299901 (seekKeyOrZeroReturnVacant!0 (x!48403 lt!235176) (index!19426 lt!235176) (index!19426 lt!235176) (select (arr!15835 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513582 () Bool)

(declare-fun e!299903 () SeekEntryResult!4309)

(declare-fun e!299902 () SeekEntryResult!4309)

(assert (=> b!513582 (= e!299903 e!299902)))

(declare-fun lt!235177 () (_ BitVec 64))

(assert (=> b!513582 (= lt!235177 (select (arr!15835 a!3235) (index!19426 lt!235176)))))

(declare-fun c!60118 () Bool)

(assert (=> b!513582 (= c!60118 (= lt!235177 (select (arr!15835 a!3235) j!176)))))

(declare-fun b!513583 () Bool)

(assert (=> b!513583 (= e!299901 (MissingZero!4309 (index!19426 lt!235176)))))

(declare-fun d!79081 () Bool)

(declare-fun lt!235178 () SeekEntryResult!4309)

(assert (=> d!79081 (and (or ((_ is Undefined!4309) lt!235178) (not ((_ is Found!4309) lt!235178)) (and (bvsge (index!19425 lt!235178) #b00000000000000000000000000000000) (bvslt (index!19425 lt!235178) (size!16199 a!3235)))) (or ((_ is Undefined!4309) lt!235178) ((_ is Found!4309) lt!235178) (not ((_ is MissingZero!4309) lt!235178)) (and (bvsge (index!19424 lt!235178) #b00000000000000000000000000000000) (bvslt (index!19424 lt!235178) (size!16199 a!3235)))) (or ((_ is Undefined!4309) lt!235178) ((_ is Found!4309) lt!235178) ((_ is MissingZero!4309) lt!235178) (not ((_ is MissingVacant!4309) lt!235178)) (and (bvsge (index!19427 lt!235178) #b00000000000000000000000000000000) (bvslt (index!19427 lt!235178) (size!16199 a!3235)))) (or ((_ is Undefined!4309) lt!235178) (ite ((_ is Found!4309) lt!235178) (= (select (arr!15835 a!3235) (index!19425 lt!235178)) (select (arr!15835 a!3235) j!176)) (ite ((_ is MissingZero!4309) lt!235178) (= (select (arr!15835 a!3235) (index!19424 lt!235178)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4309) lt!235178) (= (select (arr!15835 a!3235) (index!19427 lt!235178)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79081 (= lt!235178 e!299903)))

(declare-fun c!60116 () Bool)

(assert (=> d!79081 (= c!60116 (and ((_ is Intermediate!4309) lt!235176) (undefined!5121 lt!235176)))))

(assert (=> d!79081 (= lt!235176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15835 a!3235) j!176) mask!3524) (select (arr!15835 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79081 (validMask!0 mask!3524)))

(assert (=> d!79081 (= (seekEntryOrOpen!0 (select (arr!15835 a!3235) j!176) a!3235 mask!3524) lt!235178)))

(declare-fun b!513584 () Bool)

(declare-fun c!60117 () Bool)

(assert (=> b!513584 (= c!60117 (= lt!235177 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513584 (= e!299902 e!299901)))

(declare-fun b!513585 () Bool)

(assert (=> b!513585 (= e!299902 (Found!4309 (index!19426 lt!235176)))))

(declare-fun b!513586 () Bool)

(assert (=> b!513586 (= e!299903 Undefined!4309)))

(assert (= (and d!79081 c!60116) b!513586))

(assert (= (and d!79081 (not c!60116)) b!513582))

(assert (= (and b!513582 c!60118) b!513585))

(assert (= (and b!513582 (not c!60118)) b!513584))

(assert (= (and b!513584 c!60117) b!513583))

(assert (= (and b!513584 (not c!60117)) b!513581))

(assert (=> b!513581 m!494979))

(declare-fun m!495159 () Bool)

(assert (=> b!513581 m!495159))

(declare-fun m!495161 () Bool)

(assert (=> b!513582 m!495161))

(declare-fun m!495163 () Bool)

(assert (=> d!79081 m!495163))

(assert (=> d!79081 m!494993))

(assert (=> d!79081 m!494979))

(declare-fun m!495165 () Bool)

(assert (=> d!79081 m!495165))

(declare-fun m!495167 () Bool)

(assert (=> d!79081 m!495167))

(assert (=> d!79081 m!495007))

(declare-fun m!495169 () Bool)

(assert (=> d!79081 m!495169))

(assert (=> d!79081 m!494979))

(assert (=> d!79081 m!494993))

(assert (=> b!513366 d!79081))

(declare-fun d!79095 () Bool)

(assert (=> d!79095 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513367 d!79095))

(declare-fun e!299904 () SeekEntryResult!4309)

(declare-fun lt!235179 () SeekEntryResult!4309)

(declare-fun b!513587 () Bool)

(assert (=> b!513587 (= e!299904 (seekKeyOrZeroReturnVacant!0 (x!48403 lt!235179) (index!19426 lt!235179) (index!19426 lt!235179) k0!2280 a!3235 mask!3524))))

(declare-fun b!513588 () Bool)

(declare-fun e!299906 () SeekEntryResult!4309)

(declare-fun e!299905 () SeekEntryResult!4309)

(assert (=> b!513588 (= e!299906 e!299905)))

(declare-fun lt!235180 () (_ BitVec 64))

(assert (=> b!513588 (= lt!235180 (select (arr!15835 a!3235) (index!19426 lt!235179)))))

(declare-fun c!60121 () Bool)

(assert (=> b!513588 (= c!60121 (= lt!235180 k0!2280))))

(declare-fun b!513589 () Bool)

(assert (=> b!513589 (= e!299904 (MissingZero!4309 (index!19426 lt!235179)))))

(declare-fun d!79097 () Bool)

(declare-fun lt!235181 () SeekEntryResult!4309)

(assert (=> d!79097 (and (or ((_ is Undefined!4309) lt!235181) (not ((_ is Found!4309) lt!235181)) (and (bvsge (index!19425 lt!235181) #b00000000000000000000000000000000) (bvslt (index!19425 lt!235181) (size!16199 a!3235)))) (or ((_ is Undefined!4309) lt!235181) ((_ is Found!4309) lt!235181) (not ((_ is MissingZero!4309) lt!235181)) (and (bvsge (index!19424 lt!235181) #b00000000000000000000000000000000) (bvslt (index!19424 lt!235181) (size!16199 a!3235)))) (or ((_ is Undefined!4309) lt!235181) ((_ is Found!4309) lt!235181) ((_ is MissingZero!4309) lt!235181) (not ((_ is MissingVacant!4309) lt!235181)) (and (bvsge (index!19427 lt!235181) #b00000000000000000000000000000000) (bvslt (index!19427 lt!235181) (size!16199 a!3235)))) (or ((_ is Undefined!4309) lt!235181) (ite ((_ is Found!4309) lt!235181) (= (select (arr!15835 a!3235) (index!19425 lt!235181)) k0!2280) (ite ((_ is MissingZero!4309) lt!235181) (= (select (arr!15835 a!3235) (index!19424 lt!235181)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4309) lt!235181) (= (select (arr!15835 a!3235) (index!19427 lt!235181)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79097 (= lt!235181 e!299906)))

(declare-fun c!60119 () Bool)

(assert (=> d!79097 (= c!60119 (and ((_ is Intermediate!4309) lt!235179) (undefined!5121 lt!235179)))))

(assert (=> d!79097 (= lt!235179 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!79097 (validMask!0 mask!3524)))

(assert (=> d!79097 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!235181)))

(declare-fun b!513590 () Bool)

(declare-fun c!60120 () Bool)

(assert (=> b!513590 (= c!60120 (= lt!235180 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513590 (= e!299905 e!299904)))

(declare-fun b!513591 () Bool)

(assert (=> b!513591 (= e!299905 (Found!4309 (index!19426 lt!235179)))))

(declare-fun b!513592 () Bool)

(assert (=> b!513592 (= e!299906 Undefined!4309)))

(assert (= (and d!79097 c!60119) b!513592))

(assert (= (and d!79097 (not c!60119)) b!513588))

(assert (= (and b!513588 c!60121) b!513591))

(assert (= (and b!513588 (not c!60121)) b!513590))

(assert (= (and b!513590 c!60120) b!513589))

(assert (= (and b!513590 (not c!60120)) b!513587))

(declare-fun m!495171 () Bool)

(assert (=> b!513587 m!495171))

(declare-fun m!495173 () Bool)

(assert (=> b!513588 m!495173))

(declare-fun m!495175 () Bool)

(assert (=> d!79097 m!495175))

(declare-fun m!495177 () Bool)

(assert (=> d!79097 m!495177))

(declare-fun m!495179 () Bool)

(assert (=> d!79097 m!495179))

(declare-fun m!495181 () Bool)

(assert (=> d!79097 m!495181))

(assert (=> d!79097 m!495007))

(declare-fun m!495183 () Bool)

(assert (=> d!79097 m!495183))

(assert (=> d!79097 m!495177))

(assert (=> b!513365 d!79097))

(declare-fun d!79099 () Bool)

(declare-fun res!313923 () Bool)

(declare-fun e!299915 () Bool)

(assert (=> d!79099 (=> res!313923 e!299915)))

(assert (=> d!79099 (= res!313923 (= (select (arr!15835 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!79099 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!299915)))

(declare-fun b!513603 () Bool)

(declare-fun e!299916 () Bool)

(assert (=> b!513603 (= e!299915 e!299916)))

(declare-fun res!313924 () Bool)

(assert (=> b!513603 (=> (not res!313924) (not e!299916))))

(assert (=> b!513603 (= res!313924 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16199 a!3235)))))

(declare-fun b!513604 () Bool)

(assert (=> b!513604 (= e!299916 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79099 (not res!313923)) b!513603))

(assert (= (and b!513603 res!313924) b!513604))

(assert (=> d!79099 m!495049))

(declare-fun m!495187 () Bool)

(assert (=> b!513604 m!495187))

(assert (=> b!513371 d!79099))

(declare-fun d!79103 () Bool)

(assert (=> d!79103 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46428 d!79103))

(declare-fun d!79109 () Bool)

(assert (=> d!79109 (= (array_inv!11609 a!3235) (bvsge (size!16199 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46428 d!79109))

(check-sat (not b!513431) (not b!513413) (not b!513430) (not b!513604) (not bm!31560) (not b!513581) (not d!79097) (not b!513587) (not b!513416) (not d!79059) (not b!513480) (not bm!31556) (not b!513428) (not b!513477) (not d!79073) (not b!513476) (not d!79079) (not b!513493) (not d!79081) (not bm!31553))
(check-sat)
