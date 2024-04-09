; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46140 () Bool)

(assert start!46140)

(declare-fun b!510858 () Bool)

(declare-fun res!311859 () Bool)

(declare-fun e!298533 () Bool)

(assert (=> b!510858 (=> (not res!311859) (not e!298533))))

(declare-datatypes ((array!32811 0))(
  ( (array!32812 (arr!15781 (Array (_ BitVec 32) (_ BitVec 64))) (size!16145 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32811)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32811 (_ BitVec 32)) Bool)

(assert (=> b!510858 (= res!311859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510859 () Bool)

(declare-fun e!298534 () Bool)

(assert (=> b!510859 (= e!298534 e!298533)))

(declare-fun res!311860 () Bool)

(assert (=> b!510859 (=> (not res!311860) (not e!298533))))

(declare-datatypes ((SeekEntryResult!4255 0))(
  ( (MissingZero!4255 (index!19208 (_ BitVec 32))) (Found!4255 (index!19209 (_ BitVec 32))) (Intermediate!4255 (undefined!5067 Bool) (index!19210 (_ BitVec 32)) (x!48187 (_ BitVec 32))) (Undefined!4255) (MissingVacant!4255 (index!19211 (_ BitVec 32))) )
))
(declare-fun lt!233755 () SeekEntryResult!4255)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510859 (= res!311860 (or (= lt!233755 (MissingZero!4255 i!1204)) (= lt!233755 (MissingVacant!4255 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32811 (_ BitVec 32)) SeekEntryResult!4255)

(assert (=> b!510859 (= lt!233755 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!510860 () Bool)

(declare-fun res!311857 () Bool)

(assert (=> b!510860 (=> (not res!311857) (not e!298534))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510860 (= res!311857 (validKeyInArray!0 (select (arr!15781 a!3235) j!176)))))

(declare-fun b!510861 () Bool)

(declare-fun e!298531 () Bool)

(assert (=> b!510861 (= e!298533 (not e!298531))))

(declare-fun res!311856 () Bool)

(assert (=> b!510861 (=> res!311856 e!298531)))

(declare-fun lt!233759 () (_ BitVec 32))

(declare-fun lt!233757 () SeekEntryResult!4255)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32811 (_ BitVec 32)) SeekEntryResult!4255)

(assert (=> b!510861 (= res!311856 (= lt!233757 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233759 (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176) (array!32812 (store (arr!15781 a!3235) i!1204 k0!2280) (size!16145 a!3235)) mask!3524)))))

(declare-fun lt!233756 () (_ BitVec 32))

(assert (=> b!510861 (= lt!233757 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233756 (select (arr!15781 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510861 (= lt!233759 (toIndex!0 (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!510861 (= lt!233756 (toIndex!0 (select (arr!15781 a!3235) j!176) mask!3524))))

(declare-fun lt!233758 () SeekEntryResult!4255)

(assert (=> b!510861 (= lt!233758 (Found!4255 j!176))))

(assert (=> b!510861 (= lt!233758 (seekEntryOrOpen!0 (select (arr!15781 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!510861 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15760 0))(
  ( (Unit!15761) )
))
(declare-fun lt!233754 () Unit!15760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15760)

(assert (=> b!510861 (= lt!233754 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510862 () Bool)

(declare-fun res!311853 () Bool)

(assert (=> b!510862 (=> (not res!311853) (not e!298534))))

(assert (=> b!510862 (= res!311853 (validKeyInArray!0 k0!2280))))

(declare-fun res!311861 () Bool)

(assert (=> start!46140 (=> (not res!311861) (not e!298534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46140 (= res!311861 (validMask!0 mask!3524))))

(assert (=> start!46140 e!298534))

(assert (=> start!46140 true))

(declare-fun array_inv!11555 (array!32811) Bool)

(assert (=> start!46140 (array_inv!11555 a!3235)))

(declare-fun b!510863 () Bool)

(declare-fun res!311858 () Bool)

(assert (=> b!510863 (=> (not res!311858) (not e!298533))))

(declare-datatypes ((List!9992 0))(
  ( (Nil!9989) (Cons!9988 (h!10865 (_ BitVec 64)) (t!16228 List!9992)) )
))
(declare-fun arrayNoDuplicates!0 (array!32811 (_ BitVec 32) List!9992) Bool)

(assert (=> b!510863 (= res!311858 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9989))))

(declare-fun b!510864 () Bool)

(declare-fun res!311854 () Bool)

(assert (=> b!510864 (=> (not res!311854) (not e!298534))))

(assert (=> b!510864 (= res!311854 (and (= (size!16145 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16145 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16145 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510865 () Bool)

(get-info :version)

(assert (=> b!510865 (= e!298531 (or (not ((_ is Intermediate!4255) lt!233757)) (not (undefined!5067 lt!233757)) (= lt!233758 Undefined!4255)))))

(declare-fun b!510866 () Bool)

(declare-fun res!311855 () Bool)

(assert (=> b!510866 (=> (not res!311855) (not e!298534))))

(declare-fun arrayContainsKey!0 (array!32811 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510866 (= res!311855 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46140 res!311861) b!510864))

(assert (= (and b!510864 res!311854) b!510860))

(assert (= (and b!510860 res!311857) b!510862))

(assert (= (and b!510862 res!311853) b!510866))

(assert (= (and b!510866 res!311855) b!510859))

(assert (= (and b!510859 res!311860) b!510858))

(assert (= (and b!510858 res!311859) b!510863))

(assert (= (and b!510863 res!311858) b!510861))

(assert (= (and b!510861 (not res!311856)) b!510865))

(declare-fun m!492415 () Bool)

(assert (=> b!510859 m!492415))

(declare-fun m!492417 () Bool)

(assert (=> b!510861 m!492417))

(declare-fun m!492419 () Bool)

(assert (=> b!510861 m!492419))

(declare-fun m!492421 () Bool)

(assert (=> b!510861 m!492421))

(declare-fun m!492423 () Bool)

(assert (=> b!510861 m!492423))

(assert (=> b!510861 m!492421))

(declare-fun m!492425 () Bool)

(assert (=> b!510861 m!492425))

(assert (=> b!510861 m!492419))

(declare-fun m!492427 () Bool)

(assert (=> b!510861 m!492427))

(declare-fun m!492429 () Bool)

(assert (=> b!510861 m!492429))

(assert (=> b!510861 m!492419))

(declare-fun m!492431 () Bool)

(assert (=> b!510861 m!492431))

(assert (=> b!510861 m!492421))

(declare-fun m!492433 () Bool)

(assert (=> b!510861 m!492433))

(assert (=> b!510861 m!492421))

(declare-fun m!492435 () Bool)

(assert (=> b!510861 m!492435))

(declare-fun m!492437 () Bool)

(assert (=> b!510866 m!492437))

(assert (=> b!510860 m!492421))

(assert (=> b!510860 m!492421))

(declare-fun m!492439 () Bool)

(assert (=> b!510860 m!492439))

(declare-fun m!492441 () Bool)

(assert (=> b!510863 m!492441))

(declare-fun m!492443 () Bool)

(assert (=> b!510862 m!492443))

(declare-fun m!492445 () Bool)

(assert (=> start!46140 m!492445))

(declare-fun m!492447 () Bool)

(assert (=> start!46140 m!492447))

(declare-fun m!492449 () Bool)

(assert (=> b!510858 m!492449))

(check-sat (not b!510866) (not b!510861) (not b!510859) (not b!510862) (not b!510860) (not b!510863) (not b!510858) (not start!46140))
(check-sat)
(get-model)

(declare-fun d!78745 () Bool)

(declare-fun lt!233783 () (_ BitVec 32))

(declare-fun lt!233782 () (_ BitVec 32))

(assert (=> d!78745 (= lt!233783 (bvmul (bvxor lt!233782 (bvlshr lt!233782 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78745 (= lt!233782 ((_ extract 31 0) (bvand (bvxor (select (arr!15781 a!3235) j!176) (bvlshr (select (arr!15781 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78745 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!311889 (let ((h!10867 ((_ extract 31 0) (bvand (bvxor (select (arr!15781 a!3235) j!176) (bvlshr (select (arr!15781 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48189 (bvmul (bvxor h!10867 (bvlshr h!10867 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48189 (bvlshr x!48189 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!311889 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!311889 #b00000000000000000000000000000000))))))

(assert (=> d!78745 (= (toIndex!0 (select (arr!15781 a!3235) j!176) mask!3524) (bvand (bvxor lt!233783 (bvlshr lt!233783 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!510861 d!78745))

(declare-fun d!78747 () Bool)

(declare-fun e!298579 () Bool)

(assert (=> d!78747 e!298579))

(declare-fun c!59793 () Bool)

(declare-fun lt!233789 () SeekEntryResult!4255)

(assert (=> d!78747 (= c!59793 (and ((_ is Intermediate!4255) lt!233789) (undefined!5067 lt!233789)))))

(declare-fun e!298581 () SeekEntryResult!4255)

(assert (=> d!78747 (= lt!233789 e!298581)))

(declare-fun c!59794 () Bool)

(assert (=> d!78747 (= c!59794 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!233788 () (_ BitVec 64))

(assert (=> d!78747 (= lt!233788 (select (arr!15781 a!3235) lt!233756))))

(assert (=> d!78747 (validMask!0 mask!3524)))

(assert (=> d!78747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233756 (select (arr!15781 a!3235) j!176) a!3235 mask!3524) lt!233789)))

(declare-fun b!510937 () Bool)

(assert (=> b!510937 (and (bvsge (index!19210 lt!233789) #b00000000000000000000000000000000) (bvslt (index!19210 lt!233789) (size!16145 a!3235)))))

(declare-fun res!311911 () Bool)

(assert (=> b!510937 (= res!311911 (= (select (arr!15781 a!3235) (index!19210 lt!233789)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!298577 () Bool)

(assert (=> b!510937 (=> res!311911 e!298577)))

(declare-fun b!510938 () Bool)

(assert (=> b!510938 (= e!298579 (bvsge (x!48187 lt!233789) #b01111111111111111111111111111110))))

(declare-fun b!510939 () Bool)

(declare-fun e!298578 () SeekEntryResult!4255)

(assert (=> b!510939 (= e!298578 (Intermediate!4255 false lt!233756 #b00000000000000000000000000000000))))

(declare-fun b!510940 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510940 (= e!298578 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!233756 #b00000000000000000000000000000000 mask!3524) (select (arr!15781 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!510941 () Bool)

(assert (=> b!510941 (= e!298581 e!298578)))

(declare-fun c!59792 () Bool)

(assert (=> b!510941 (= c!59792 (or (= lt!233788 (select (arr!15781 a!3235) j!176)) (= (bvadd lt!233788 lt!233788) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!510942 () Bool)

(assert (=> b!510942 (= e!298581 (Intermediate!4255 true lt!233756 #b00000000000000000000000000000000))))

(declare-fun b!510943 () Bool)

(declare-fun e!298580 () Bool)

(assert (=> b!510943 (= e!298579 e!298580)))

(declare-fun res!311913 () Bool)

(assert (=> b!510943 (= res!311913 (and ((_ is Intermediate!4255) lt!233789) (not (undefined!5067 lt!233789)) (bvslt (x!48187 lt!233789) #b01111111111111111111111111111110) (bvsge (x!48187 lt!233789) #b00000000000000000000000000000000) (bvsge (x!48187 lt!233789) #b00000000000000000000000000000000)))))

(assert (=> b!510943 (=> (not res!311913) (not e!298580))))

(declare-fun b!510944 () Bool)

(assert (=> b!510944 (and (bvsge (index!19210 lt!233789) #b00000000000000000000000000000000) (bvslt (index!19210 lt!233789) (size!16145 a!3235)))))

(declare-fun res!311912 () Bool)

(assert (=> b!510944 (= res!311912 (= (select (arr!15781 a!3235) (index!19210 lt!233789)) (select (arr!15781 a!3235) j!176)))))

(assert (=> b!510944 (=> res!311912 e!298577)))

(assert (=> b!510944 (= e!298580 e!298577)))

(declare-fun b!510945 () Bool)

(assert (=> b!510945 (and (bvsge (index!19210 lt!233789) #b00000000000000000000000000000000) (bvslt (index!19210 lt!233789) (size!16145 a!3235)))))

(assert (=> b!510945 (= e!298577 (= (select (arr!15781 a!3235) (index!19210 lt!233789)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!78747 c!59794) b!510942))

(assert (= (and d!78747 (not c!59794)) b!510941))

(assert (= (and b!510941 c!59792) b!510939))

(assert (= (and b!510941 (not c!59792)) b!510940))

(assert (= (and d!78747 c!59793) b!510938))

(assert (= (and d!78747 (not c!59793)) b!510943))

(assert (= (and b!510943 res!311913) b!510944))

(assert (= (and b!510944 (not res!311912)) b!510937))

(assert (= (and b!510937 (not res!311911)) b!510945))

(declare-fun m!492495 () Bool)

(assert (=> b!510937 m!492495))

(declare-fun m!492497 () Bool)

(assert (=> b!510940 m!492497))

(assert (=> b!510940 m!492497))

(assert (=> b!510940 m!492421))

(declare-fun m!492501 () Bool)

(assert (=> b!510940 m!492501))

(declare-fun m!492505 () Bool)

(assert (=> d!78747 m!492505))

(assert (=> d!78747 m!492445))

(assert (=> b!510945 m!492495))

(assert (=> b!510944 m!492495))

(assert (=> b!510861 d!78747))

(declare-fun e!298608 () SeekEntryResult!4255)

(declare-fun lt!233813 () SeekEntryResult!4255)

(declare-fun b!510987 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32811 (_ BitVec 32)) SeekEntryResult!4255)

(assert (=> b!510987 (= e!298608 (seekKeyOrZeroReturnVacant!0 (x!48187 lt!233813) (index!19210 lt!233813) (index!19210 lt!233813) (select (arr!15781 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!510988 () Bool)

(declare-fun e!298607 () SeekEntryResult!4255)

(assert (=> b!510988 (= e!298607 Undefined!4255)))

(declare-fun b!510989 () Bool)

(declare-fun e!298609 () SeekEntryResult!4255)

(assert (=> b!510989 (= e!298609 (Found!4255 (index!19210 lt!233813)))))

(declare-fun d!78759 () Bool)

(declare-fun lt!233812 () SeekEntryResult!4255)

(assert (=> d!78759 (and (or ((_ is Undefined!4255) lt!233812) (not ((_ is Found!4255) lt!233812)) (and (bvsge (index!19209 lt!233812) #b00000000000000000000000000000000) (bvslt (index!19209 lt!233812) (size!16145 a!3235)))) (or ((_ is Undefined!4255) lt!233812) ((_ is Found!4255) lt!233812) (not ((_ is MissingZero!4255) lt!233812)) (and (bvsge (index!19208 lt!233812) #b00000000000000000000000000000000) (bvslt (index!19208 lt!233812) (size!16145 a!3235)))) (or ((_ is Undefined!4255) lt!233812) ((_ is Found!4255) lt!233812) ((_ is MissingZero!4255) lt!233812) (not ((_ is MissingVacant!4255) lt!233812)) (and (bvsge (index!19211 lt!233812) #b00000000000000000000000000000000) (bvslt (index!19211 lt!233812) (size!16145 a!3235)))) (or ((_ is Undefined!4255) lt!233812) (ite ((_ is Found!4255) lt!233812) (= (select (arr!15781 a!3235) (index!19209 lt!233812)) (select (arr!15781 a!3235) j!176)) (ite ((_ is MissingZero!4255) lt!233812) (= (select (arr!15781 a!3235) (index!19208 lt!233812)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4255) lt!233812) (= (select (arr!15781 a!3235) (index!19211 lt!233812)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78759 (= lt!233812 e!298607)))

(declare-fun c!59812 () Bool)

(assert (=> d!78759 (= c!59812 (and ((_ is Intermediate!4255) lt!233813) (undefined!5067 lt!233813)))))

(assert (=> d!78759 (= lt!233813 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15781 a!3235) j!176) mask!3524) (select (arr!15781 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78759 (validMask!0 mask!3524)))

(assert (=> d!78759 (= (seekEntryOrOpen!0 (select (arr!15781 a!3235) j!176) a!3235 mask!3524) lt!233812)))

(declare-fun b!510990 () Bool)

(assert (=> b!510990 (= e!298607 e!298609)))

(declare-fun lt!233811 () (_ BitVec 64))

(assert (=> b!510990 (= lt!233811 (select (arr!15781 a!3235) (index!19210 lt!233813)))))

(declare-fun c!59811 () Bool)

(assert (=> b!510990 (= c!59811 (= lt!233811 (select (arr!15781 a!3235) j!176)))))

(declare-fun b!510991 () Bool)

(assert (=> b!510991 (= e!298608 (MissingZero!4255 (index!19210 lt!233813)))))

(declare-fun b!510992 () Bool)

(declare-fun c!59813 () Bool)

(assert (=> b!510992 (= c!59813 (= lt!233811 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!510992 (= e!298609 e!298608)))

(assert (= (and d!78759 c!59812) b!510988))

(assert (= (and d!78759 (not c!59812)) b!510990))

(assert (= (and b!510990 c!59811) b!510989))

(assert (= (and b!510990 (not c!59811)) b!510992))

(assert (= (and b!510992 c!59813) b!510991))

(assert (= (and b!510992 (not c!59813)) b!510987))

(assert (=> b!510987 m!492421))

(declare-fun m!492521 () Bool)

(assert (=> b!510987 m!492521))

(assert (=> d!78759 m!492421))

(assert (=> d!78759 m!492423))

(declare-fun m!492527 () Bool)

(assert (=> d!78759 m!492527))

(declare-fun m!492531 () Bool)

(assert (=> d!78759 m!492531))

(declare-fun m!492535 () Bool)

(assert (=> d!78759 m!492535))

(assert (=> d!78759 m!492445))

(assert (=> d!78759 m!492423))

(assert (=> d!78759 m!492421))

(declare-fun m!492541 () Bool)

(assert (=> d!78759 m!492541))

(declare-fun m!492543 () Bool)

(assert (=> b!510990 m!492543))

(assert (=> b!510861 d!78759))

(declare-fun b!511031 () Bool)

(declare-fun e!298634 () Bool)

(declare-fun call!31502 () Bool)

(assert (=> b!511031 (= e!298634 call!31502)))

(declare-fun bm!31499 () Bool)

(assert (=> bm!31499 (= call!31502 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!511032 () Bool)

(declare-fun e!298636 () Bool)

(assert (=> b!511032 (= e!298634 e!298636)))

(declare-fun lt!233832 () (_ BitVec 64))

(assert (=> b!511032 (= lt!233832 (select (arr!15781 a!3235) j!176))))

(declare-fun lt!233833 () Unit!15760)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32811 (_ BitVec 64) (_ BitVec 32)) Unit!15760)

(assert (=> b!511032 (= lt!233833 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!233832 j!176))))

(assert (=> b!511032 (arrayContainsKey!0 a!3235 lt!233832 #b00000000000000000000000000000000)))

(declare-fun lt!233834 () Unit!15760)

(assert (=> b!511032 (= lt!233834 lt!233833)))

(declare-fun res!311933 () Bool)

(assert (=> b!511032 (= res!311933 (= (seekEntryOrOpen!0 (select (arr!15781 a!3235) j!176) a!3235 mask!3524) (Found!4255 j!176)))))

(assert (=> b!511032 (=> (not res!311933) (not e!298636))))

(declare-fun d!78767 () Bool)

(declare-fun res!311934 () Bool)

(declare-fun e!298635 () Bool)

(assert (=> d!78767 (=> res!311934 e!298635)))

(assert (=> d!78767 (= res!311934 (bvsge j!176 (size!16145 a!3235)))))

(assert (=> d!78767 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!298635)))

(declare-fun b!511033 () Bool)

(assert (=> b!511033 (= e!298636 call!31502)))

(declare-fun b!511034 () Bool)

(assert (=> b!511034 (= e!298635 e!298634)))

(declare-fun c!59828 () Bool)

(assert (=> b!511034 (= c!59828 (validKeyInArray!0 (select (arr!15781 a!3235) j!176)))))

(assert (= (and d!78767 (not res!311934)) b!511034))

(assert (= (and b!511034 c!59828) b!511032))

(assert (= (and b!511034 (not c!59828)) b!511031))

(assert (= (and b!511032 res!311933) b!511033))

(assert (= (or b!511033 b!511031) bm!31499))

(declare-fun m!492561 () Bool)

(assert (=> bm!31499 m!492561))

(assert (=> b!511032 m!492421))

(declare-fun m!492563 () Bool)

(assert (=> b!511032 m!492563))

(declare-fun m!492565 () Bool)

(assert (=> b!511032 m!492565))

(assert (=> b!511032 m!492421))

(assert (=> b!511032 m!492433))

(assert (=> b!511034 m!492421))

(assert (=> b!511034 m!492421))

(assert (=> b!511034 m!492439))

(assert (=> b!510861 d!78767))

(declare-fun d!78775 () Bool)

(declare-fun e!298639 () Bool)

(assert (=> d!78775 e!298639))

(declare-fun c!59830 () Bool)

(declare-fun lt!233836 () SeekEntryResult!4255)

(assert (=> d!78775 (= c!59830 (and ((_ is Intermediate!4255) lt!233836) (undefined!5067 lt!233836)))))

(declare-fun e!298641 () SeekEntryResult!4255)

(assert (=> d!78775 (= lt!233836 e!298641)))

(declare-fun c!59831 () Bool)

(assert (=> d!78775 (= c!59831 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!233835 () (_ BitVec 64))

(assert (=> d!78775 (= lt!233835 (select (arr!15781 (array!32812 (store (arr!15781 a!3235) i!1204 k0!2280) (size!16145 a!3235))) lt!233759))))

(assert (=> d!78775 (validMask!0 mask!3524)))

(assert (=> d!78775 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233759 (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176) (array!32812 (store (arr!15781 a!3235) i!1204 k0!2280) (size!16145 a!3235)) mask!3524) lt!233836)))

(declare-fun b!511035 () Bool)

(assert (=> b!511035 (and (bvsge (index!19210 lt!233836) #b00000000000000000000000000000000) (bvslt (index!19210 lt!233836) (size!16145 (array!32812 (store (arr!15781 a!3235) i!1204 k0!2280) (size!16145 a!3235)))))))

(declare-fun res!311936 () Bool)

(assert (=> b!511035 (= res!311936 (= (select (arr!15781 (array!32812 (store (arr!15781 a!3235) i!1204 k0!2280) (size!16145 a!3235))) (index!19210 lt!233836)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!298637 () Bool)

(assert (=> b!511035 (=> res!311936 e!298637)))

(declare-fun b!511036 () Bool)

(assert (=> b!511036 (= e!298639 (bvsge (x!48187 lt!233836) #b01111111111111111111111111111110))))

(declare-fun b!511037 () Bool)

(declare-fun e!298638 () SeekEntryResult!4255)

(assert (=> b!511037 (= e!298638 (Intermediate!4255 false lt!233759 #b00000000000000000000000000000000))))

(declare-fun b!511038 () Bool)

(assert (=> b!511038 (= e!298638 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!233759 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176) (array!32812 (store (arr!15781 a!3235) i!1204 k0!2280) (size!16145 a!3235)) mask!3524))))

(declare-fun b!511039 () Bool)

(assert (=> b!511039 (= e!298641 e!298638)))

(declare-fun c!59829 () Bool)

(assert (=> b!511039 (= c!59829 (or (= lt!233835 (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!233835 lt!233835) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!511040 () Bool)

(assert (=> b!511040 (= e!298641 (Intermediate!4255 true lt!233759 #b00000000000000000000000000000000))))

(declare-fun b!511041 () Bool)

(declare-fun e!298640 () Bool)

(assert (=> b!511041 (= e!298639 e!298640)))

(declare-fun res!311938 () Bool)

(assert (=> b!511041 (= res!311938 (and ((_ is Intermediate!4255) lt!233836) (not (undefined!5067 lt!233836)) (bvslt (x!48187 lt!233836) #b01111111111111111111111111111110) (bvsge (x!48187 lt!233836) #b00000000000000000000000000000000) (bvsge (x!48187 lt!233836) #b00000000000000000000000000000000)))))

(assert (=> b!511041 (=> (not res!311938) (not e!298640))))

(declare-fun b!511042 () Bool)

(assert (=> b!511042 (and (bvsge (index!19210 lt!233836) #b00000000000000000000000000000000) (bvslt (index!19210 lt!233836) (size!16145 (array!32812 (store (arr!15781 a!3235) i!1204 k0!2280) (size!16145 a!3235)))))))

(declare-fun res!311937 () Bool)

(assert (=> b!511042 (= res!311937 (= (select (arr!15781 (array!32812 (store (arr!15781 a!3235) i!1204 k0!2280) (size!16145 a!3235))) (index!19210 lt!233836)) (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176)))))

(assert (=> b!511042 (=> res!311937 e!298637)))

(assert (=> b!511042 (= e!298640 e!298637)))

(declare-fun b!511043 () Bool)

(assert (=> b!511043 (and (bvsge (index!19210 lt!233836) #b00000000000000000000000000000000) (bvslt (index!19210 lt!233836) (size!16145 (array!32812 (store (arr!15781 a!3235) i!1204 k0!2280) (size!16145 a!3235)))))))

(assert (=> b!511043 (= e!298637 (= (select (arr!15781 (array!32812 (store (arr!15781 a!3235) i!1204 k0!2280) (size!16145 a!3235))) (index!19210 lt!233836)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!78775 c!59831) b!511040))

(assert (= (and d!78775 (not c!59831)) b!511039))

(assert (= (and b!511039 c!59829) b!511037))

(assert (= (and b!511039 (not c!59829)) b!511038))

(assert (= (and d!78775 c!59830) b!511036))

(assert (= (and d!78775 (not c!59830)) b!511041))

(assert (= (and b!511041 res!311938) b!511042))

(assert (= (and b!511042 (not res!311937)) b!511035))

(assert (= (and b!511035 (not res!311936)) b!511043))

(declare-fun m!492567 () Bool)

(assert (=> b!511035 m!492567))

(declare-fun m!492569 () Bool)

(assert (=> b!511038 m!492569))

(assert (=> b!511038 m!492569))

(assert (=> b!511038 m!492419))

(declare-fun m!492571 () Bool)

(assert (=> b!511038 m!492571))

(declare-fun m!492573 () Bool)

(assert (=> d!78775 m!492573))

(assert (=> d!78775 m!492445))

(assert (=> b!511043 m!492567))

(assert (=> b!511042 m!492567))

(assert (=> b!510861 d!78775))

(declare-fun d!78777 () Bool)

(assert (=> d!78777 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233851 () Unit!15760)

(declare-fun choose!38 (array!32811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15760)

(assert (=> d!78777 (= lt!233851 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78777 (validMask!0 mask!3524)))

(assert (=> d!78777 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!233851)))

(declare-fun bs!16188 () Bool)

(assert (= bs!16188 d!78777))

(assert (=> bs!16188 m!492425))

(declare-fun m!492593 () Bool)

(assert (=> bs!16188 m!492593))

(assert (=> bs!16188 m!492445))

(assert (=> b!510861 d!78777))

(declare-fun d!78785 () Bool)

(declare-fun lt!233853 () (_ BitVec 32))

(declare-fun lt!233852 () (_ BitVec 32))

(assert (=> d!78785 (= lt!233853 (bvmul (bvxor lt!233852 (bvlshr lt!233852 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78785 (= lt!233852 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78785 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!311889 (let ((h!10867 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48189 (bvmul (bvxor h!10867 (bvlshr h!10867 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48189 (bvlshr x!48189 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!311889 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!311889 #b00000000000000000000000000000000))))))

(assert (=> d!78785 (= (toIndex!0 (select (store (arr!15781 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!233853 (bvlshr lt!233853 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!510861 d!78785))

(declare-fun d!78787 () Bool)

(declare-fun res!311951 () Bool)

(declare-fun e!298662 () Bool)

(assert (=> d!78787 (=> res!311951 e!298662)))

(assert (=> d!78787 (= res!311951 (= (select (arr!15781 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!78787 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!298662)))

(declare-fun b!511076 () Bool)

(declare-fun e!298663 () Bool)

(assert (=> b!511076 (= e!298662 e!298663)))

(declare-fun res!311952 () Bool)

(assert (=> b!511076 (=> (not res!311952) (not e!298663))))

(assert (=> b!511076 (= res!311952 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16145 a!3235)))))

(declare-fun b!511077 () Bool)

(assert (=> b!511077 (= e!298663 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78787 (not res!311951)) b!511076))

(assert (= (and b!511076 res!311952) b!511077))

(declare-fun m!492595 () Bool)

(assert (=> d!78787 m!492595))

(declare-fun m!492597 () Bool)

(assert (=> b!511077 m!492597))

(assert (=> b!510866 d!78787))

(declare-fun b!511097 () Bool)

(declare-fun e!298678 () Bool)

(declare-fun call!31506 () Bool)

(assert (=> b!511097 (= e!298678 call!31506)))

(declare-fun b!511098 () Bool)

(declare-fun e!298679 () Bool)

(assert (=> b!511098 (= e!298679 e!298678)))

(declare-fun c!59847 () Bool)

(assert (=> b!511098 (= c!59847 (validKeyInArray!0 (select (arr!15781 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31503 () Bool)

(assert (=> bm!31503 (= call!31506 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59847 (Cons!9988 (select (arr!15781 a!3235) #b00000000000000000000000000000000) Nil!9989) Nil!9989)))))

(declare-fun b!511099 () Bool)

(assert (=> b!511099 (= e!298678 call!31506)))

(declare-fun b!511100 () Bool)

(declare-fun e!298680 () Bool)

(assert (=> b!511100 (= e!298680 e!298679)))

(declare-fun res!311963 () Bool)

(assert (=> b!511100 (=> (not res!311963) (not e!298679))))

(declare-fun e!298677 () Bool)

(assert (=> b!511100 (= res!311963 (not e!298677))))

(declare-fun res!311964 () Bool)

(assert (=> b!511100 (=> (not res!311964) (not e!298677))))

(assert (=> b!511100 (= res!311964 (validKeyInArray!0 (select (arr!15781 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!511101 () Bool)

(declare-fun contains!2730 (List!9992 (_ BitVec 64)) Bool)

(assert (=> b!511101 (= e!298677 (contains!2730 Nil!9989 (select (arr!15781 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78789 () Bool)

(declare-fun res!311965 () Bool)

(assert (=> d!78789 (=> res!311965 e!298680)))

(assert (=> d!78789 (= res!311965 (bvsge #b00000000000000000000000000000000 (size!16145 a!3235)))))

(assert (=> d!78789 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9989) e!298680)))

(assert (= (and d!78789 (not res!311965)) b!511100))

(assert (= (and b!511100 res!311964) b!511101))

(assert (= (and b!511100 res!311963) b!511098))

(assert (= (and b!511098 c!59847) b!511097))

(assert (= (and b!511098 (not c!59847)) b!511099))

(assert (= (or b!511097 b!511099) bm!31503))

(assert (=> b!511098 m!492595))

(assert (=> b!511098 m!492595))

(declare-fun m!492607 () Bool)

(assert (=> b!511098 m!492607))

(assert (=> bm!31503 m!492595))

(declare-fun m!492609 () Bool)

(assert (=> bm!31503 m!492609))

(assert (=> b!511100 m!492595))

(assert (=> b!511100 m!492595))

(assert (=> b!511100 m!492607))

(assert (=> b!511101 m!492595))

(assert (=> b!511101 m!492595))

(declare-fun m!492611 () Bool)

(assert (=> b!511101 m!492611))

(assert (=> b!510863 d!78789))

(declare-fun d!78793 () Bool)

(assert (=> d!78793 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!510862 d!78793))

(declare-fun d!78795 () Bool)

(assert (=> d!78795 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46140 d!78795))

(declare-fun d!78801 () Bool)

(assert (=> d!78801 (= (array_inv!11555 a!3235) (bvsge (size!16145 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46140 d!78801))

(declare-fun e!298709 () SeekEntryResult!4255)

(declare-fun b!511147 () Bool)

(declare-fun lt!233886 () SeekEntryResult!4255)

(assert (=> b!511147 (= e!298709 (seekKeyOrZeroReturnVacant!0 (x!48187 lt!233886) (index!19210 lt!233886) (index!19210 lt!233886) k0!2280 a!3235 mask!3524))))

(declare-fun b!511148 () Bool)

(declare-fun e!298708 () SeekEntryResult!4255)

(assert (=> b!511148 (= e!298708 Undefined!4255)))

(declare-fun b!511149 () Bool)

(declare-fun e!298710 () SeekEntryResult!4255)

(assert (=> b!511149 (= e!298710 (Found!4255 (index!19210 lt!233886)))))

(declare-fun d!78805 () Bool)

(declare-fun lt!233885 () SeekEntryResult!4255)

(assert (=> d!78805 (and (or ((_ is Undefined!4255) lt!233885) (not ((_ is Found!4255) lt!233885)) (and (bvsge (index!19209 lt!233885) #b00000000000000000000000000000000) (bvslt (index!19209 lt!233885) (size!16145 a!3235)))) (or ((_ is Undefined!4255) lt!233885) ((_ is Found!4255) lt!233885) (not ((_ is MissingZero!4255) lt!233885)) (and (bvsge (index!19208 lt!233885) #b00000000000000000000000000000000) (bvslt (index!19208 lt!233885) (size!16145 a!3235)))) (or ((_ is Undefined!4255) lt!233885) ((_ is Found!4255) lt!233885) ((_ is MissingZero!4255) lt!233885) (not ((_ is MissingVacant!4255) lt!233885)) (and (bvsge (index!19211 lt!233885) #b00000000000000000000000000000000) (bvslt (index!19211 lt!233885) (size!16145 a!3235)))) (or ((_ is Undefined!4255) lt!233885) (ite ((_ is Found!4255) lt!233885) (= (select (arr!15781 a!3235) (index!19209 lt!233885)) k0!2280) (ite ((_ is MissingZero!4255) lt!233885) (= (select (arr!15781 a!3235) (index!19208 lt!233885)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4255) lt!233885) (= (select (arr!15781 a!3235) (index!19211 lt!233885)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78805 (= lt!233885 e!298708)))

(declare-fun c!59864 () Bool)

(assert (=> d!78805 (= c!59864 (and ((_ is Intermediate!4255) lt!233886) (undefined!5067 lt!233886)))))

(assert (=> d!78805 (= lt!233886 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!78805 (validMask!0 mask!3524)))

(assert (=> d!78805 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!233885)))

(declare-fun b!511150 () Bool)

(assert (=> b!511150 (= e!298708 e!298710)))

(declare-fun lt!233884 () (_ BitVec 64))

(assert (=> b!511150 (= lt!233884 (select (arr!15781 a!3235) (index!19210 lt!233886)))))

(declare-fun c!59863 () Bool)

(assert (=> b!511150 (= c!59863 (= lt!233884 k0!2280))))

(declare-fun b!511151 () Bool)

(assert (=> b!511151 (= e!298709 (MissingZero!4255 (index!19210 lt!233886)))))

(declare-fun b!511152 () Bool)

(declare-fun c!59865 () Bool)

(assert (=> b!511152 (= c!59865 (= lt!233884 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!511152 (= e!298710 e!298709)))

(assert (= (and d!78805 c!59864) b!511148))

(assert (= (and d!78805 (not c!59864)) b!511150))

(assert (= (and b!511150 c!59863) b!511149))

(assert (= (and b!511150 (not c!59863)) b!511152))

(assert (= (and b!511152 c!59865) b!511151))

(assert (= (and b!511152 (not c!59865)) b!511147))

(declare-fun m!492639 () Bool)

(assert (=> b!511147 m!492639))

(declare-fun m!492641 () Bool)

(assert (=> d!78805 m!492641))

(declare-fun m!492643 () Bool)

(assert (=> d!78805 m!492643))

(declare-fun m!492645 () Bool)

(assert (=> d!78805 m!492645))

(declare-fun m!492647 () Bool)

(assert (=> d!78805 m!492647))

(assert (=> d!78805 m!492445))

(assert (=> d!78805 m!492641))

(declare-fun m!492649 () Bool)

(assert (=> d!78805 m!492649))

(declare-fun m!492651 () Bool)

(assert (=> b!511150 m!492651))

(assert (=> b!510859 d!78805))

(declare-fun b!511162 () Bool)

(declare-fun e!298716 () Bool)

(declare-fun call!31510 () Bool)

(assert (=> b!511162 (= e!298716 call!31510)))

(declare-fun bm!31507 () Bool)

(assert (=> bm!31507 (= call!31510 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!511163 () Bool)

(declare-fun e!298718 () Bool)

(assert (=> b!511163 (= e!298716 e!298718)))

(declare-fun lt!233889 () (_ BitVec 64))

(assert (=> b!511163 (= lt!233889 (select (arr!15781 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!233890 () Unit!15760)

(assert (=> b!511163 (= lt!233890 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!233889 #b00000000000000000000000000000000))))

(assert (=> b!511163 (arrayContainsKey!0 a!3235 lt!233889 #b00000000000000000000000000000000)))

(declare-fun lt!233891 () Unit!15760)

(assert (=> b!511163 (= lt!233891 lt!233890)))

(declare-fun res!311984 () Bool)

(assert (=> b!511163 (= res!311984 (= (seekEntryOrOpen!0 (select (arr!15781 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4255 #b00000000000000000000000000000000)))))

(assert (=> b!511163 (=> (not res!311984) (not e!298718))))

(declare-fun d!78809 () Bool)

(declare-fun res!311985 () Bool)

(declare-fun e!298717 () Bool)

(assert (=> d!78809 (=> res!311985 e!298717)))

(assert (=> d!78809 (= res!311985 (bvsge #b00000000000000000000000000000000 (size!16145 a!3235)))))

(assert (=> d!78809 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!298717)))

(declare-fun b!511164 () Bool)

(assert (=> b!511164 (= e!298718 call!31510)))

(declare-fun b!511165 () Bool)

(assert (=> b!511165 (= e!298717 e!298716)))

(declare-fun c!59869 () Bool)

(assert (=> b!511165 (= c!59869 (validKeyInArray!0 (select (arr!15781 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78809 (not res!311985)) b!511165))

(assert (= (and b!511165 c!59869) b!511163))

(assert (= (and b!511165 (not c!59869)) b!511162))

(assert (= (and b!511163 res!311984) b!511164))

(assert (= (or b!511164 b!511162) bm!31507))

(declare-fun m!492653 () Bool)

(assert (=> bm!31507 m!492653))

(assert (=> b!511163 m!492595))

(declare-fun m!492655 () Bool)

(assert (=> b!511163 m!492655))

(declare-fun m!492659 () Bool)

(assert (=> b!511163 m!492659))

(assert (=> b!511163 m!492595))

(declare-fun m!492663 () Bool)

(assert (=> b!511163 m!492663))

(assert (=> b!511165 m!492595))

(assert (=> b!511165 m!492595))

(assert (=> b!511165 m!492607))

(assert (=> b!510858 d!78809))

(declare-fun d!78811 () Bool)

(assert (=> d!78811 (= (validKeyInArray!0 (select (arr!15781 a!3235) j!176)) (and (not (= (select (arr!15781 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15781 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!510860 d!78811))

(check-sat (not b!511165) (not b!511077) (not bm!31499) (not b!511038) (not d!78805) (not d!78747) (not d!78759) (not bm!31507) (not b!511098) (not bm!31503) (not b!511163) (not d!78775) (not b!510940) (not b!510987) (not b!511101) (not b!511100) (not b!511032) (not b!511034) (not d!78777) (not b!511147))
