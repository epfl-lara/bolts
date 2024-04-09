; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30178 () Bool)

(assert start!30178)

(declare-datatypes ((array!15327 0))(
  ( (array!15328 (arr!7251 (Array (_ BitVec 32) (_ BitVec 64))) (size!7603 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15327)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun e!190414 () Bool)

(declare-fun b!301971 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!301971 (= e!190414 (and (= (select (arr!7251 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7603 a!3293)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!301972 () Bool)

(declare-fun res!159742 () Bool)

(assert (=> b!301972 (=> (not res!159742) (not e!190414))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301972 (= res!159742 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301973 () Bool)

(declare-fun res!159740 () Bool)

(assert (=> b!301973 (=> (not res!159740) (not e!190414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15327 (_ BitVec 32)) Bool)

(assert (=> b!301973 (= res!159740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301974 () Bool)

(declare-fun res!159738 () Bool)

(assert (=> b!301974 (=> (not res!159738) (not e!190414))))

(declare-datatypes ((SeekEntryResult!2402 0))(
  ( (MissingZero!2402 (index!11784 (_ BitVec 32))) (Found!2402 (index!11785 (_ BitVec 32))) (Intermediate!2402 (undefined!3214 Bool) (index!11786 (_ BitVec 32)) (x!30016 (_ BitVec 32))) (Undefined!2402) (MissingVacant!2402 (index!11787 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15327 (_ BitVec 32)) SeekEntryResult!2402)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301974 (= res!159738 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2402 false resIndex!52 resX!52)))))

(declare-fun b!301975 () Bool)

(declare-fun res!159741 () Bool)

(assert (=> b!301975 (=> (not res!159741) (not e!190414))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301975 (= res!159741 (validKeyInArray!0 k!2441))))

(declare-fun res!159743 () Bool)

(assert (=> start!30178 (=> (not res!159743) (not e!190414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30178 (= res!159743 (validMask!0 mask!3709))))

(assert (=> start!30178 e!190414))

(declare-fun array_inv!5205 (array!15327) Bool)

(assert (=> start!30178 (array_inv!5205 a!3293)))

(assert (=> start!30178 true))

(declare-fun b!301976 () Bool)

(declare-fun res!159739 () Bool)

(assert (=> b!301976 (=> (not res!159739) (not e!190414))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15327 (_ BitVec 32)) SeekEntryResult!2402)

(assert (=> b!301976 (= res!159739 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2402 i!1240)))))

(declare-fun b!301977 () Bool)

(declare-fun res!159744 () Bool)

(assert (=> b!301977 (=> (not res!159744) (not e!190414))))

(assert (=> b!301977 (= res!159744 (and (= (size!7603 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7603 a!3293))))))

(assert (= (and start!30178 res!159743) b!301977))

(assert (= (and b!301977 res!159744) b!301975))

(assert (= (and b!301975 res!159741) b!301972))

(assert (= (and b!301972 res!159742) b!301976))

(assert (= (and b!301976 res!159739) b!301973))

(assert (= (and b!301973 res!159740) b!301974))

(assert (= (and b!301974 res!159738) b!301971))

(declare-fun m!313645 () Bool)

(assert (=> b!301972 m!313645))

(declare-fun m!313647 () Bool)

(assert (=> b!301974 m!313647))

(assert (=> b!301974 m!313647))

(declare-fun m!313649 () Bool)

(assert (=> b!301974 m!313649))

(declare-fun m!313651 () Bool)

(assert (=> b!301976 m!313651))

(declare-fun m!313653 () Bool)

(assert (=> b!301975 m!313653))

(declare-fun m!313655 () Bool)

(assert (=> b!301971 m!313655))

(declare-fun m!313657 () Bool)

(assert (=> b!301973 m!313657))

(declare-fun m!313659 () Bool)

(assert (=> start!30178 m!313659))

(declare-fun m!313661 () Bool)

(assert (=> start!30178 m!313661))

(push 1)

(assert (not start!30178))

(assert (not b!301975))

(assert (not b!301972))

(assert (not b!301973))

(assert (not b!301974))

(assert (not b!301976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67831 () Bool)

(assert (=> d!67831 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!301975 d!67831))

(declare-fun d!67833 () Bool)

(declare-fun e!190462 () Bool)

(assert (=> d!67833 e!190462))

(declare-fun c!48743 () Bool)

(declare-fun lt!149977 () SeekEntryResult!2402)

(assert (=> d!67833 (= c!48743 (and (is-Intermediate!2402 lt!149977) (undefined!3214 lt!149977)))))

(declare-fun e!190460 () SeekEntryResult!2402)

(assert (=> d!67833 (= lt!149977 e!190460)))

(declare-fun c!48741 () Bool)

(assert (=> d!67833 (= c!48741 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149978 () (_ BitVec 64))

(assert (=> d!67833 (= lt!149978 (select (arr!7251 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!67833 (validMask!0 mask!3709)))

(assert (=> d!67833 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!149977)))

(declare-fun b!302053 () Bool)

(assert (=> b!302053 (= e!190462 (bvsge (x!30016 lt!149977) #b01111111111111111111111111111110))))

(declare-fun b!302054 () Bool)

(assert (=> b!302054 (and (bvsge (index!11786 lt!149977) #b00000000000000000000000000000000) (bvslt (index!11786 lt!149977) (size!7603 a!3293)))))

(declare-fun res!159767 () Bool)

(assert (=> b!302054 (= res!159767 (= (select (arr!7251 a!3293) (index!11786 lt!149977)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!190459 () Bool)

(assert (=> b!302054 (=> res!159767 e!190459)))

(declare-fun b!302055 () Bool)

(declare-fun e!190461 () SeekEntryResult!2402)

(assert (=> b!302055 (= e!190461 (Intermediate!2402 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!302056 () Bool)

(assert (=> b!302056 (= e!190460 e!190461)))

(declare-fun c!48742 () Bool)

(assert (=> b!302056 (= c!48742 (or (= lt!149978 k!2441) (= (bvadd lt!149978 lt!149978) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!302057 () Bool)

(assert (=> b!302057 (= e!190460 (Intermediate!2402 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!302058 () Bool)

(assert (=> b!302058 (and (bvsge (index!11786 lt!149977) #b00000000000000000000000000000000) (bvslt (index!11786 lt!149977) (size!7603 a!3293)))))

(declare-fun res!159768 () Bool)

(assert (=> b!302058 (= res!159768 (= (select (arr!7251 a!3293) (index!11786 lt!149977)) k!2441))))

(assert (=> b!302058 (=> res!159768 e!190459)))

(declare-fun e!190458 () Bool)

(assert (=> b!302058 (= e!190458 e!190459)))

(declare-fun b!302059 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302059 (= e!190461 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!302060 () Bool)

(assert (=> b!302060 (= e!190462 e!190458)))

(declare-fun res!159769 () Bool)

(assert (=> b!302060 (= res!159769 (and (is-Intermediate!2402 lt!149977) (not (undefined!3214 lt!149977)) (bvslt (x!30016 lt!149977) #b01111111111111111111111111111110) (bvsge (x!30016 lt!149977) #b00000000000000000000000000000000) (bvsge (x!30016 lt!149977) #b00000000000000000000000000000000)))))

(assert (=> b!302060 (=> (not res!159769) (not e!190458))))

(declare-fun b!302061 () Bool)

(assert (=> b!302061 (and (bvsge (index!11786 lt!149977) #b00000000000000000000000000000000) (bvslt (index!11786 lt!149977) (size!7603 a!3293)))))

(assert (=> b!302061 (= e!190459 (= (select (arr!7251 a!3293) (index!11786 lt!149977)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!67833 c!48741) b!302057))

(assert (= (and d!67833 (not c!48741)) b!302056))

(assert (= (and b!302056 c!48742) b!302055))

(assert (= (and b!302056 (not c!48742)) b!302059))

(assert (= (and d!67833 c!48743) b!302053))

(assert (= (and d!67833 (not c!48743)) b!302060))

(assert (= (and b!302060 res!159769) b!302058))

(assert (= (and b!302058 (not res!159768)) b!302054))

(assert (= (and b!302054 (not res!159767)) b!302061))

(declare-fun m!313693 () Bool)

(assert (=> b!302058 m!313693))

(assert (=> b!302059 m!313647))

(declare-fun m!313695 () Bool)

(assert (=> b!302059 m!313695))

(assert (=> b!302059 m!313695))

(declare-fun m!313697 () Bool)

(assert (=> b!302059 m!313697))

(assert (=> b!302054 m!313693))

(assert (=> b!302061 m!313693))

(assert (=> d!67833 m!313647))

(declare-fun m!313699 () Bool)

(assert (=> d!67833 m!313699))

(assert (=> d!67833 m!313659))

(assert (=> b!301974 d!67833))

(declare-fun d!67841 () Bool)

(declare-fun lt!149996 () (_ BitVec 32))

(declare-fun lt!149995 () (_ BitVec 32))

(assert (=> d!67841 (= lt!149996 (bvmul (bvxor lt!149995 (bvlshr lt!149995 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67841 (= lt!149995 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67841 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!159770 (let ((h!5352 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30020 (bvmul (bvxor h!5352 (bvlshr h!5352 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30020 (bvlshr x!30020 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!159770 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!159770 #b00000000000000000000000000000000))))))

(assert (=> d!67841 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!149996 (bvlshr lt!149996 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!301974 d!67841))

(declare-fun b!302088 () Bool)

(declare-fun e!190486 () Bool)

(declare-fun call!25886 () Bool)

(assert (=> b!302088 (= e!190486 call!25886)))

(declare-fun b!302089 () Bool)

(declare-fun e!190485 () Bool)

(assert (=> b!302089 (= e!190486 e!190485)))

(declare-fun lt!150008 () (_ BitVec 64))

(assert (=> b!302089 (= lt!150008 (select (arr!7251 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9376 0))(
  ( (Unit!9377) )
))
(declare-fun lt!150007 () Unit!9376)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15327 (_ BitVec 64) (_ BitVec 32)) Unit!9376)

(assert (=> b!302089 (= lt!150007 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!150008 #b00000000000000000000000000000000))))

(assert (=> b!302089 (arrayContainsKey!0 a!3293 lt!150008 #b00000000000000000000000000000000)))

(declare-fun lt!150006 () Unit!9376)

(assert (=> b!302089 (= lt!150006 lt!150007)))

(declare-fun res!159788 () Bool)

(assert (=> b!302089 (= res!159788 (= (seekEntryOrOpen!0 (select (arr!7251 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2402 #b00000000000000000000000000000000)))))

(assert (=> b!302089 (=> (not res!159788) (not e!190485))))

(declare-fun d!67845 () Bool)

(declare-fun res!159787 () Bool)

(declare-fun e!190484 () Bool)

(assert (=> d!67845 (=> res!159787 e!190484)))

(assert (=> d!67845 (= res!159787 (bvsge #b00000000000000000000000000000000 (size!7603 a!3293)))))

(assert (=> d!67845 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!190484)))

(declare-fun bm!25883 () Bool)

(assert (=> bm!25883 (= call!25886 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!302090 () Bool)

(assert (=> b!302090 (= e!190484 e!190486)))

(declare-fun c!48749 () Bool)

(assert (=> b!302090 (= c!48749 (validKeyInArray!0 (select (arr!7251 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!302091 () Bool)

(assert (=> b!302091 (= e!190485 call!25886)))

(assert (= (and d!67845 (not res!159787)) b!302090))

(assert (= (and b!302090 c!48749) b!302089))

(assert (= (and b!302090 (not c!48749)) b!302088))

(assert (= (and b!302089 res!159788) b!302091))

(assert (= (or b!302091 b!302088) bm!25883))

(declare-fun m!313715 () Bool)

(assert (=> b!302089 m!313715))

(declare-fun m!313717 () Bool)

(assert (=> b!302089 m!313717))

(declare-fun m!313719 () Bool)

(assert (=> b!302089 m!313719))

(assert (=> b!302089 m!313715))

(declare-fun m!313721 () Bool)

(assert (=> b!302089 m!313721))

(declare-fun m!313723 () Bool)

(assert (=> bm!25883 m!313723))

(assert (=> b!302090 m!313715))

(assert (=> b!302090 m!313715))

(declare-fun m!313725 () Bool)

(assert (=> b!302090 m!313725))

(assert (=> b!301973 d!67845))

(declare-fun d!67851 () Bool)

(assert (=> d!67851 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30178 d!67851))

(declare-fun d!67863 () Bool)

(assert (=> d!67863 (= (array_inv!5205 a!3293) (bvsge (size!7603 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30178 d!67863))

(declare-fun d!67865 () Bool)

(declare-fun res!159799 () Bool)

(declare-fun e!190497 () Bool)

(assert (=> d!67865 (=> res!159799 e!190497)))

(assert (=> d!67865 (= res!159799 (= (select (arr!7251 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!67865 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!190497)))

(declare-fun b!302102 () Bool)

(declare-fun e!190498 () Bool)

(assert (=> b!302102 (= e!190497 e!190498)))

(declare-fun res!159800 () Bool)

(assert (=> b!302102 (=> (not res!159800) (not e!190498))))

(assert (=> b!302102 (= res!159800 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7603 a!3293)))))

(declare-fun b!302103 () Bool)

(assert (=> b!302103 (= e!190498 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67865 (not res!159799)) b!302102))

(assert (= (and b!302102 res!159800) b!302103))

(assert (=> d!67865 m!313715))

(declare-fun m!313729 () Bool)

(assert (=> b!302103 m!313729))

(assert (=> b!301972 d!67865))

(declare-fun b!302161 () Bool)

(declare-fun c!48774 () Bool)

(declare-fun lt!150036 () (_ BitVec 64))

(assert (=> b!302161 (= c!48774 (= lt!150036 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!190529 () SeekEntryResult!2402)

(declare-fun e!190530 () SeekEntryResult!2402)

(assert (=> b!302161 (= e!190529 e!190530)))

(declare-fun lt!150038 () SeekEntryResult!2402)

(declare-fun b!302162 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15327 (_ BitVec 32)) SeekEntryResult!2402)

(assert (=> b!302162 (= e!190530 (seekKeyOrZeroReturnVacant!0 (x!30016 lt!150038) (index!11786 lt!150038) (index!11786 lt!150038) k!2441 a!3293 mask!3709))))

(declare-fun b!302163 () Bool)

(assert (=> b!302163 (= e!190530 (MissingZero!2402 (index!11786 lt!150038)))))

(declare-fun b!302164 () Bool)

(assert (=> b!302164 (= e!190529 (Found!2402 (index!11786 lt!150038)))))

(declare-fun b!302165 () Bool)

(declare-fun e!190531 () SeekEntryResult!2402)

(assert (=> b!302165 (= e!190531 Undefined!2402)))

(declare-fun d!67867 () Bool)

(declare-fun lt!150037 () SeekEntryResult!2402)

(assert (=> d!67867 (and (or (is-Undefined!2402 lt!150037) (not (is-Found!2402 lt!150037)) (and (bvsge (index!11785 lt!150037) #b00000000000000000000000000000000) (bvslt (index!11785 lt!150037) (size!7603 a!3293)))) (or (is-Undefined!2402 lt!150037) (is-Found!2402 lt!150037) (not (is-MissingZero!2402 lt!150037)) (and (bvsge (index!11784 lt!150037) #b00000000000000000000000000000000) (bvslt (index!11784 lt!150037) (size!7603 a!3293)))) (or (is-Undefined!2402 lt!150037) (is-Found!2402 lt!150037) (is-MissingZero!2402 lt!150037) (not (is-MissingVacant!2402 lt!150037)) (and (bvsge (index!11787 lt!150037) #b00000000000000000000000000000000) (bvslt (index!11787 lt!150037) (size!7603 a!3293)))) (or (is-Undefined!2402 lt!150037) (ite (is-Found!2402 lt!150037) (= (select (arr!7251 a!3293) (index!11785 lt!150037)) k!2441) (ite (is-MissingZero!2402 lt!150037) (= (select (arr!7251 a!3293) (index!11784 lt!150037)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2402 lt!150037) (= (select (arr!7251 a!3293) (index!11787 lt!150037)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67867 (= lt!150037 e!190531)))

(declare-fun c!48776 () Bool)

(assert (=> d!67867 (= c!48776 (and (is-Intermediate!2402 lt!150038) (undefined!3214 lt!150038)))))

