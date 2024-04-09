; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46356 () Bool)

(assert start!46356)

(declare-fun b!512872 () Bool)

(declare-fun res!313503 () Bool)

(declare-fun e!299496 () Bool)

(assert (=> b!512872 (=> (not res!313503) (not e!299496))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32913 0))(
  ( (array!32914 (arr!15829 (Array (_ BitVec 32) (_ BitVec 64))) (size!16193 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32913)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!512872 (= res!313503 (and (= (size!16193 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16193 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16193 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512873 () Bool)

(declare-fun res!313510 () Bool)

(declare-fun e!299497 () Bool)

(assert (=> b!512873 (=> res!313510 e!299497)))

(declare-datatypes ((SeekEntryResult!4303 0))(
  ( (MissingZero!4303 (index!19400 (_ BitVec 32))) (Found!4303 (index!19401 (_ BitVec 32))) (Intermediate!4303 (undefined!5115 Bool) (index!19402 (_ BitVec 32)) (x!48375 (_ BitVec 32))) (Undefined!4303) (MissingVacant!4303 (index!19403 (_ BitVec 32))) )
))
(declare-fun lt!234863 () SeekEntryResult!4303)

(get-info :version)

(assert (=> b!512873 (= res!313510 (or (undefined!5115 lt!234863) (not ((_ is Intermediate!4303) lt!234863))))))

(declare-fun b!512874 () Bool)

(declare-fun res!313501 () Bool)

(assert (=> b!512874 (=> (not res!313501) (not e!299496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512874 (= res!313501 (validKeyInArray!0 (select (arr!15829 a!3235) j!176)))))

(declare-fun b!512875 () Bool)

(declare-fun res!313506 () Bool)

(declare-fun e!299495 () Bool)

(assert (=> b!512875 (=> (not res!313506) (not e!299495))))

(declare-datatypes ((List!10040 0))(
  ( (Nil!10037) (Cons!10036 (h!10919 (_ BitVec 64)) (t!16276 List!10040)) )
))
(declare-fun arrayNoDuplicates!0 (array!32913 (_ BitVec 32) List!10040) Bool)

(assert (=> b!512875 (= res!313506 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10037))))

(declare-fun b!512876 () Bool)

(assert (=> b!512876 (= e!299495 (not e!299497))))

(declare-fun res!313504 () Bool)

(assert (=> b!512876 (=> res!313504 e!299497)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!234862 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32913 (_ BitVec 32)) SeekEntryResult!4303)

(assert (=> b!512876 (= res!313504 (= lt!234863 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234862 (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176) (array!32914 (store (arr!15829 a!3235) i!1204 k0!2280) (size!16193 a!3235)) mask!3524)))))

(declare-fun lt!234864 () (_ BitVec 32))

(assert (=> b!512876 (= lt!234863 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234864 (select (arr!15829 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512876 (= lt!234862 (toIndex!0 (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!512876 (= lt!234864 (toIndex!0 (select (arr!15829 a!3235) j!176) mask!3524))))

(declare-fun e!299493 () Bool)

(assert (=> b!512876 e!299493))

(declare-fun res!313508 () Bool)

(assert (=> b!512876 (=> (not res!313508) (not e!299493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32913 (_ BitVec 32)) Bool)

(assert (=> b!512876 (= res!313508 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15856 0))(
  ( (Unit!15857) )
))
(declare-fun lt!234865 () Unit!15856)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32913 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15856)

(assert (=> b!512876 (= lt!234865 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512878 () Bool)

(declare-fun res!313511 () Bool)

(assert (=> b!512878 (=> (not res!313511) (not e!299496))))

(declare-fun arrayContainsKey!0 (array!32913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512878 (= res!313511 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512879 () Bool)

(assert (=> b!512879 (= e!299497 (and (bvsge (index!19402 lt!234863) #b00000000000000000000000000000000) (bvslt (index!19402 lt!234863) (size!16193 a!3235))))))

(assert (=> b!512879 (bvslt (x!48375 lt!234863) #b01111111111111111111111111111110)))

(declare-fun b!512880 () Bool)

(assert (=> b!512880 (= e!299496 e!299495)))

(declare-fun res!313505 () Bool)

(assert (=> b!512880 (=> (not res!313505) (not e!299495))))

(declare-fun lt!234866 () SeekEntryResult!4303)

(assert (=> b!512880 (= res!313505 (or (= lt!234866 (MissingZero!4303 i!1204)) (= lt!234866 (MissingVacant!4303 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32913 (_ BitVec 32)) SeekEntryResult!4303)

(assert (=> b!512880 (= lt!234866 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!512877 () Bool)

(assert (=> b!512877 (= e!299493 (= (seekEntryOrOpen!0 (select (arr!15829 a!3235) j!176) a!3235 mask!3524) (Found!4303 j!176)))))

(declare-fun res!313509 () Bool)

(assert (=> start!46356 (=> (not res!313509) (not e!299496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46356 (= res!313509 (validMask!0 mask!3524))))

(assert (=> start!46356 e!299496))

(assert (=> start!46356 true))

(declare-fun array_inv!11603 (array!32913) Bool)

(assert (=> start!46356 (array_inv!11603 a!3235)))

(declare-fun b!512881 () Bool)

(declare-fun res!313502 () Bool)

(assert (=> b!512881 (=> (not res!313502) (not e!299496))))

(assert (=> b!512881 (= res!313502 (validKeyInArray!0 k0!2280))))

(declare-fun b!512882 () Bool)

(declare-fun res!313507 () Bool)

(assert (=> b!512882 (=> (not res!313507) (not e!299495))))

(assert (=> b!512882 (= res!313507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46356 res!313509) b!512872))

(assert (= (and b!512872 res!313503) b!512874))

(assert (= (and b!512874 res!313501) b!512881))

(assert (= (and b!512881 res!313502) b!512878))

(assert (= (and b!512878 res!313511) b!512880))

(assert (= (and b!512880 res!313505) b!512882))

(assert (= (and b!512882 res!313507) b!512875))

(assert (= (and b!512875 res!313506) b!512876))

(assert (= (and b!512876 res!313508) b!512877))

(assert (= (and b!512876 (not res!313504)) b!512873))

(assert (= (and b!512873 (not res!313510)) b!512879))

(declare-fun m!494551 () Bool)

(assert (=> b!512877 m!494551))

(assert (=> b!512877 m!494551))

(declare-fun m!494553 () Bool)

(assert (=> b!512877 m!494553))

(assert (=> b!512874 m!494551))

(assert (=> b!512874 m!494551))

(declare-fun m!494555 () Bool)

(assert (=> b!512874 m!494555))

(declare-fun m!494557 () Bool)

(assert (=> b!512882 m!494557))

(declare-fun m!494559 () Bool)

(assert (=> b!512878 m!494559))

(declare-fun m!494561 () Bool)

(assert (=> start!46356 m!494561))

(declare-fun m!494563 () Bool)

(assert (=> start!46356 m!494563))

(declare-fun m!494565 () Bool)

(assert (=> b!512876 m!494565))

(declare-fun m!494567 () Bool)

(assert (=> b!512876 m!494567))

(declare-fun m!494569 () Bool)

(assert (=> b!512876 m!494569))

(assert (=> b!512876 m!494551))

(declare-fun m!494571 () Bool)

(assert (=> b!512876 m!494571))

(assert (=> b!512876 m!494551))

(declare-fun m!494573 () Bool)

(assert (=> b!512876 m!494573))

(assert (=> b!512876 m!494569))

(declare-fun m!494575 () Bool)

(assert (=> b!512876 m!494575))

(assert (=> b!512876 m!494551))

(declare-fun m!494577 () Bool)

(assert (=> b!512876 m!494577))

(assert (=> b!512876 m!494569))

(declare-fun m!494579 () Bool)

(assert (=> b!512876 m!494579))

(declare-fun m!494581 () Bool)

(assert (=> b!512881 m!494581))

(declare-fun m!494583 () Bool)

(assert (=> b!512880 m!494583))

(declare-fun m!494585 () Bool)

(assert (=> b!512875 m!494585))

(check-sat (not b!512878) (not b!512874) (not b!512881) (not b!512877) (not b!512880) (not b!512876) (not b!512882) (not start!46356) (not b!512875))
(check-sat)
(get-model)

(declare-fun b!512943 () Bool)

(declare-fun e!299531 () SeekEntryResult!4303)

(assert (=> b!512943 (= e!299531 Undefined!4303)))

(declare-fun d!78957 () Bool)

(declare-fun lt!234889 () SeekEntryResult!4303)

(assert (=> d!78957 (and (or ((_ is Undefined!4303) lt!234889) (not ((_ is Found!4303) lt!234889)) (and (bvsge (index!19401 lt!234889) #b00000000000000000000000000000000) (bvslt (index!19401 lt!234889) (size!16193 a!3235)))) (or ((_ is Undefined!4303) lt!234889) ((_ is Found!4303) lt!234889) (not ((_ is MissingZero!4303) lt!234889)) (and (bvsge (index!19400 lt!234889) #b00000000000000000000000000000000) (bvslt (index!19400 lt!234889) (size!16193 a!3235)))) (or ((_ is Undefined!4303) lt!234889) ((_ is Found!4303) lt!234889) ((_ is MissingZero!4303) lt!234889) (not ((_ is MissingVacant!4303) lt!234889)) (and (bvsge (index!19403 lt!234889) #b00000000000000000000000000000000) (bvslt (index!19403 lt!234889) (size!16193 a!3235)))) (or ((_ is Undefined!4303) lt!234889) (ite ((_ is Found!4303) lt!234889) (= (select (arr!15829 a!3235) (index!19401 lt!234889)) (select (arr!15829 a!3235) j!176)) (ite ((_ is MissingZero!4303) lt!234889) (= (select (arr!15829 a!3235) (index!19400 lt!234889)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4303) lt!234889) (= (select (arr!15829 a!3235) (index!19403 lt!234889)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78957 (= lt!234889 e!299531)))

(declare-fun c!59978 () Bool)

(declare-fun lt!234890 () SeekEntryResult!4303)

(assert (=> d!78957 (= c!59978 (and ((_ is Intermediate!4303) lt!234890) (undefined!5115 lt!234890)))))

(assert (=> d!78957 (= lt!234890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15829 a!3235) j!176) mask!3524) (select (arr!15829 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78957 (validMask!0 mask!3524)))

(assert (=> d!78957 (= (seekEntryOrOpen!0 (select (arr!15829 a!3235) j!176) a!3235 mask!3524) lt!234889)))

(declare-fun e!299533 () SeekEntryResult!4303)

(declare-fun b!512944 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32913 (_ BitVec 32)) SeekEntryResult!4303)

(assert (=> b!512944 (= e!299533 (seekKeyOrZeroReturnVacant!0 (x!48375 lt!234890) (index!19402 lt!234890) (index!19402 lt!234890) (select (arr!15829 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!512945 () Bool)

(assert (=> b!512945 (= e!299533 (MissingZero!4303 (index!19402 lt!234890)))))

(declare-fun b!512946 () Bool)

(declare-fun e!299532 () SeekEntryResult!4303)

(assert (=> b!512946 (= e!299531 e!299532)))

(declare-fun lt!234888 () (_ BitVec 64))

(assert (=> b!512946 (= lt!234888 (select (arr!15829 a!3235) (index!19402 lt!234890)))))

(declare-fun c!59976 () Bool)

(assert (=> b!512946 (= c!59976 (= lt!234888 (select (arr!15829 a!3235) j!176)))))

(declare-fun b!512947 () Bool)

(declare-fun c!59977 () Bool)

(assert (=> b!512947 (= c!59977 (= lt!234888 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!512947 (= e!299532 e!299533)))

(declare-fun b!512948 () Bool)

(assert (=> b!512948 (= e!299532 (Found!4303 (index!19402 lt!234890)))))

(assert (= (and d!78957 c!59978) b!512943))

(assert (= (and d!78957 (not c!59978)) b!512946))

(assert (= (and b!512946 c!59976) b!512948))

(assert (= (and b!512946 (not c!59976)) b!512947))

(assert (= (and b!512947 c!59977) b!512945))

(assert (= (and b!512947 (not c!59977)) b!512944))

(assert (=> d!78957 m!494551))

(assert (=> d!78957 m!494571))

(assert (=> d!78957 m!494561))

(declare-fun m!494631 () Bool)

(assert (=> d!78957 m!494631))

(assert (=> d!78957 m!494571))

(assert (=> d!78957 m!494551))

(declare-fun m!494633 () Bool)

(assert (=> d!78957 m!494633))

(declare-fun m!494635 () Bool)

(assert (=> d!78957 m!494635))

(declare-fun m!494637 () Bool)

(assert (=> d!78957 m!494637))

(assert (=> b!512944 m!494551))

(declare-fun m!494639 () Bool)

(assert (=> b!512944 m!494639))

(declare-fun m!494641 () Bool)

(assert (=> b!512946 m!494641))

(assert (=> b!512877 d!78957))

(declare-fun d!78963 () Bool)

(declare-fun res!313558 () Bool)

(declare-fun e!299538 () Bool)

(assert (=> d!78963 (=> res!313558 e!299538)))

(assert (=> d!78963 (= res!313558 (= (select (arr!15829 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!78963 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!299538)))

(declare-fun b!512953 () Bool)

(declare-fun e!299539 () Bool)

(assert (=> b!512953 (= e!299538 e!299539)))

(declare-fun res!313559 () Bool)

(assert (=> b!512953 (=> (not res!313559) (not e!299539))))

(assert (=> b!512953 (= res!313559 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16193 a!3235)))))

(declare-fun b!512954 () Bool)

(assert (=> b!512954 (= e!299539 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78963 (not res!313558)) b!512953))

(assert (= (and b!512953 res!313559) b!512954))

(declare-fun m!494643 () Bool)

(assert (=> d!78963 m!494643))

(declare-fun m!494645 () Bool)

(assert (=> b!512954 m!494645))

(assert (=> b!512878 d!78963))

(declare-fun d!78965 () Bool)

(assert (=> d!78965 (= (validKeyInArray!0 (select (arr!15829 a!3235) j!176)) (and (not (= (select (arr!15829 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15829 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512874 d!78965))

(declare-fun b!512955 () Bool)

(declare-fun e!299540 () SeekEntryResult!4303)

(assert (=> b!512955 (= e!299540 Undefined!4303)))

(declare-fun d!78967 () Bool)

(declare-fun lt!234892 () SeekEntryResult!4303)

(assert (=> d!78967 (and (or ((_ is Undefined!4303) lt!234892) (not ((_ is Found!4303) lt!234892)) (and (bvsge (index!19401 lt!234892) #b00000000000000000000000000000000) (bvslt (index!19401 lt!234892) (size!16193 a!3235)))) (or ((_ is Undefined!4303) lt!234892) ((_ is Found!4303) lt!234892) (not ((_ is MissingZero!4303) lt!234892)) (and (bvsge (index!19400 lt!234892) #b00000000000000000000000000000000) (bvslt (index!19400 lt!234892) (size!16193 a!3235)))) (or ((_ is Undefined!4303) lt!234892) ((_ is Found!4303) lt!234892) ((_ is MissingZero!4303) lt!234892) (not ((_ is MissingVacant!4303) lt!234892)) (and (bvsge (index!19403 lt!234892) #b00000000000000000000000000000000) (bvslt (index!19403 lt!234892) (size!16193 a!3235)))) (or ((_ is Undefined!4303) lt!234892) (ite ((_ is Found!4303) lt!234892) (= (select (arr!15829 a!3235) (index!19401 lt!234892)) k0!2280) (ite ((_ is MissingZero!4303) lt!234892) (= (select (arr!15829 a!3235) (index!19400 lt!234892)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4303) lt!234892) (= (select (arr!15829 a!3235) (index!19403 lt!234892)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78967 (= lt!234892 e!299540)))

(declare-fun c!59981 () Bool)

(declare-fun lt!234893 () SeekEntryResult!4303)

(assert (=> d!78967 (= c!59981 (and ((_ is Intermediate!4303) lt!234893) (undefined!5115 lt!234893)))))

(assert (=> d!78967 (= lt!234893 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!78967 (validMask!0 mask!3524)))

(assert (=> d!78967 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!234892)))

(declare-fun b!512956 () Bool)

(declare-fun e!299542 () SeekEntryResult!4303)

(assert (=> b!512956 (= e!299542 (seekKeyOrZeroReturnVacant!0 (x!48375 lt!234893) (index!19402 lt!234893) (index!19402 lt!234893) k0!2280 a!3235 mask!3524))))

(declare-fun b!512957 () Bool)

(assert (=> b!512957 (= e!299542 (MissingZero!4303 (index!19402 lt!234893)))))

(declare-fun b!512958 () Bool)

(declare-fun e!299541 () SeekEntryResult!4303)

(assert (=> b!512958 (= e!299540 e!299541)))

(declare-fun lt!234891 () (_ BitVec 64))

(assert (=> b!512958 (= lt!234891 (select (arr!15829 a!3235) (index!19402 lt!234893)))))

(declare-fun c!59979 () Bool)

(assert (=> b!512958 (= c!59979 (= lt!234891 k0!2280))))

(declare-fun b!512959 () Bool)

(declare-fun c!59980 () Bool)

(assert (=> b!512959 (= c!59980 (= lt!234891 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!512959 (= e!299541 e!299542)))

(declare-fun b!512960 () Bool)

(assert (=> b!512960 (= e!299541 (Found!4303 (index!19402 lt!234893)))))

(assert (= (and d!78967 c!59981) b!512955))

(assert (= (and d!78967 (not c!59981)) b!512958))

(assert (= (and b!512958 c!59979) b!512960))

(assert (= (and b!512958 (not c!59979)) b!512959))

(assert (= (and b!512959 c!59980) b!512957))

(assert (= (and b!512959 (not c!59980)) b!512956))

(declare-fun m!494647 () Bool)

(assert (=> d!78967 m!494647))

(assert (=> d!78967 m!494561))

(declare-fun m!494649 () Bool)

(assert (=> d!78967 m!494649))

(assert (=> d!78967 m!494647))

(declare-fun m!494651 () Bool)

(assert (=> d!78967 m!494651))

(declare-fun m!494653 () Bool)

(assert (=> d!78967 m!494653))

(declare-fun m!494655 () Bool)

(assert (=> d!78967 m!494655))

(declare-fun m!494657 () Bool)

(assert (=> b!512956 m!494657))

(declare-fun m!494659 () Bool)

(assert (=> b!512958 m!494659))

(assert (=> b!512880 d!78967))

(declare-fun b!512983 () Bool)

(declare-fun e!299558 () Bool)

(declare-fun e!299557 () Bool)

(assert (=> b!512983 (= e!299558 e!299557)))

(declare-fun c!59990 () Bool)

(assert (=> b!512983 (= c!59990 (validKeyInArray!0 (select (arr!15829 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78969 () Bool)

(declare-fun res!313567 () Bool)

(declare-fun e!299560 () Bool)

(assert (=> d!78969 (=> res!313567 e!299560)))

(assert (=> d!78969 (= res!313567 (bvsge #b00000000000000000000000000000000 (size!16193 a!3235)))))

(assert (=> d!78969 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10037) e!299560)))

(declare-fun b!512984 () Bool)

(declare-fun call!31538 () Bool)

(assert (=> b!512984 (= e!299557 call!31538)))

(declare-fun b!512985 () Bool)

(declare-fun e!299559 () Bool)

(declare-fun contains!2734 (List!10040 (_ BitVec 64)) Bool)

(assert (=> b!512985 (= e!299559 (contains!2734 Nil!10037 (select (arr!15829 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!512986 () Bool)

(assert (=> b!512986 (= e!299557 call!31538)))

(declare-fun b!512987 () Bool)

(assert (=> b!512987 (= e!299560 e!299558)))

(declare-fun res!313568 () Bool)

(assert (=> b!512987 (=> (not res!313568) (not e!299558))))

(assert (=> b!512987 (= res!313568 (not e!299559))))

(declare-fun res!313566 () Bool)

(assert (=> b!512987 (=> (not res!313566) (not e!299559))))

(assert (=> b!512987 (= res!313566 (validKeyInArray!0 (select (arr!15829 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31535 () Bool)

(assert (=> bm!31535 (= call!31538 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59990 (Cons!10036 (select (arr!15829 a!3235) #b00000000000000000000000000000000) Nil!10037) Nil!10037)))))

(assert (= (and d!78969 (not res!313567)) b!512987))

(assert (= (and b!512987 res!313566) b!512985))

(assert (= (and b!512987 res!313568) b!512983))

(assert (= (and b!512983 c!59990) b!512986))

(assert (= (and b!512983 (not c!59990)) b!512984))

(assert (= (or b!512986 b!512984) bm!31535))

(assert (=> b!512983 m!494643))

(assert (=> b!512983 m!494643))

(declare-fun m!494661 () Bool)

(assert (=> b!512983 m!494661))

(assert (=> b!512985 m!494643))

(assert (=> b!512985 m!494643))

(declare-fun m!494663 () Bool)

(assert (=> b!512985 m!494663))

(assert (=> b!512987 m!494643))

(assert (=> b!512987 m!494643))

(assert (=> b!512987 m!494661))

(assert (=> bm!31535 m!494643))

(declare-fun m!494665 () Bool)

(assert (=> bm!31535 m!494665))

(assert (=> b!512875 d!78969))

(declare-fun d!78975 () Bool)

(assert (=> d!78975 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512881 d!78975))

(declare-fun b!513042 () Bool)

(declare-fun lt!234919 () SeekEntryResult!4303)

(assert (=> b!513042 (and (bvsge (index!19402 lt!234919) #b00000000000000000000000000000000) (bvslt (index!19402 lt!234919) (size!16193 a!3235)))))

(declare-fun res!313581 () Bool)

(assert (=> b!513042 (= res!313581 (= (select (arr!15829 a!3235) (index!19402 lt!234919)) (select (arr!15829 a!3235) j!176)))))

(declare-fun e!299596 () Bool)

(assert (=> b!513042 (=> res!313581 e!299596)))

(declare-fun e!299592 () Bool)

(assert (=> b!513042 (= e!299592 e!299596)))

(declare-fun b!513043 () Bool)

(declare-fun e!299595 () Bool)

(assert (=> b!513043 (= e!299595 (bvsge (x!48375 lt!234919) #b01111111111111111111111111111110))))

(declare-fun b!513044 () Bool)

(declare-fun e!299594 () SeekEntryResult!4303)

(assert (=> b!513044 (= e!299594 (Intermediate!4303 true lt!234864 #b00000000000000000000000000000000))))

(declare-fun b!513045 () Bool)

(assert (=> b!513045 (and (bvsge (index!19402 lt!234919) #b00000000000000000000000000000000) (bvslt (index!19402 lt!234919) (size!16193 a!3235)))))

(declare-fun res!313582 () Bool)

(assert (=> b!513045 (= res!313582 (= (select (arr!15829 a!3235) (index!19402 lt!234919)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513045 (=> res!313582 e!299596)))

(declare-fun e!299593 () SeekEntryResult!4303)

(declare-fun b!513046 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513046 (= e!299593 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234864 #b00000000000000000000000000000000 mask!3524) (select (arr!15829 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513047 () Bool)

(assert (=> b!513047 (= e!299593 (Intermediate!4303 false lt!234864 #b00000000000000000000000000000000))))

(declare-fun d!78977 () Bool)

(assert (=> d!78977 e!299595))

(declare-fun c!60013 () Bool)

(assert (=> d!78977 (= c!60013 (and ((_ is Intermediate!4303) lt!234919) (undefined!5115 lt!234919)))))

(assert (=> d!78977 (= lt!234919 e!299594)))

(declare-fun c!60014 () Bool)

(assert (=> d!78977 (= c!60014 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!234920 () (_ BitVec 64))

(assert (=> d!78977 (= lt!234920 (select (arr!15829 a!3235) lt!234864))))

(assert (=> d!78977 (validMask!0 mask!3524)))

(assert (=> d!78977 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234864 (select (arr!15829 a!3235) j!176) a!3235 mask!3524) lt!234919)))

(declare-fun b!513048 () Bool)

(assert (=> b!513048 (= e!299594 e!299593)))

(declare-fun c!60012 () Bool)

(assert (=> b!513048 (= c!60012 (or (= lt!234920 (select (arr!15829 a!3235) j!176)) (= (bvadd lt!234920 lt!234920) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513049 () Bool)

(assert (=> b!513049 (and (bvsge (index!19402 lt!234919) #b00000000000000000000000000000000) (bvslt (index!19402 lt!234919) (size!16193 a!3235)))))

(assert (=> b!513049 (= e!299596 (= (select (arr!15829 a!3235) (index!19402 lt!234919)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513050 () Bool)

(assert (=> b!513050 (= e!299595 e!299592)))

(declare-fun res!313583 () Bool)

(assert (=> b!513050 (= res!313583 (and ((_ is Intermediate!4303) lt!234919) (not (undefined!5115 lt!234919)) (bvslt (x!48375 lt!234919) #b01111111111111111111111111111110) (bvsge (x!48375 lt!234919) #b00000000000000000000000000000000) (bvsge (x!48375 lt!234919) #b00000000000000000000000000000000)))))

(assert (=> b!513050 (=> (not res!313583) (not e!299592))))

(assert (= (and d!78977 c!60014) b!513044))

(assert (= (and d!78977 (not c!60014)) b!513048))

(assert (= (and b!513048 c!60012) b!513047))

(assert (= (and b!513048 (not c!60012)) b!513046))

(assert (= (and d!78977 c!60013) b!513043))

(assert (= (and d!78977 (not c!60013)) b!513050))

(assert (= (and b!513050 res!313583) b!513042))

(assert (= (and b!513042 (not res!313581)) b!513045))

(assert (= (and b!513045 (not res!313582)) b!513049))

(declare-fun m!494707 () Bool)

(assert (=> d!78977 m!494707))

(assert (=> d!78977 m!494561))

(declare-fun m!494709 () Bool)

(assert (=> b!513045 m!494709))

(declare-fun m!494711 () Bool)

(assert (=> b!513046 m!494711))

(assert (=> b!513046 m!494711))

(assert (=> b!513046 m!494551))

(declare-fun m!494713 () Bool)

(assert (=> b!513046 m!494713))

(assert (=> b!513049 m!494709))

(assert (=> b!513042 m!494709))

(assert (=> b!512876 d!78977))

(declare-fun d!78997 () Bool)

(declare-fun lt!234932 () (_ BitVec 32))

(declare-fun lt!234931 () (_ BitVec 32))

(assert (=> d!78997 (= lt!234932 (bvmul (bvxor lt!234931 (bvlshr lt!234931 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78997 (= lt!234931 ((_ extract 31 0) (bvand (bvxor (select (arr!15829 a!3235) j!176) (bvlshr (select (arr!15829 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78997 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313584 (let ((h!10921 ((_ extract 31 0) (bvand (bvxor (select (arr!15829 a!3235) j!176) (bvlshr (select (arr!15829 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48378 (bvmul (bvxor h!10921 (bvlshr h!10921 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48378 (bvlshr x!48378 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313584 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313584 #b00000000000000000000000000000000))))))

(assert (=> d!78997 (= (toIndex!0 (select (arr!15829 a!3235) j!176) mask!3524) (bvand (bvxor lt!234932 (bvlshr lt!234932 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512876 d!78997))

(declare-fun b!513089 () Bool)

(declare-fun e!299629 () Bool)

(declare-fun call!31545 () Bool)

(assert (=> b!513089 (= e!299629 call!31545)))

(declare-fun b!513090 () Bool)

(declare-fun e!299627 () Bool)

(assert (=> b!513090 (= e!299627 e!299629)))

(declare-fun c!60021 () Bool)

(assert (=> b!513090 (= c!60021 (validKeyInArray!0 (select (arr!15829 a!3235) j!176)))))

(declare-fun bm!31542 () Bool)

(assert (=> bm!31542 (= call!31545 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!78999 () Bool)

(declare-fun res!313610 () Bool)

(assert (=> d!78999 (=> res!313610 e!299627)))

(assert (=> d!78999 (= res!313610 (bvsge j!176 (size!16193 a!3235)))))

(assert (=> d!78999 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!299627)))

(declare-fun b!513091 () Bool)

(declare-fun e!299628 () Bool)

(assert (=> b!513091 (= e!299628 call!31545)))

(declare-fun b!513092 () Bool)

(assert (=> b!513092 (= e!299629 e!299628)))

(declare-fun lt!234952 () (_ BitVec 64))

(assert (=> b!513092 (= lt!234952 (select (arr!15829 a!3235) j!176))))

(declare-fun lt!234953 () Unit!15856)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32913 (_ BitVec 64) (_ BitVec 32)) Unit!15856)

(assert (=> b!513092 (= lt!234953 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!234952 j!176))))

(assert (=> b!513092 (arrayContainsKey!0 a!3235 lt!234952 #b00000000000000000000000000000000)))

(declare-fun lt!234951 () Unit!15856)

(assert (=> b!513092 (= lt!234951 lt!234953)))

(declare-fun res!313611 () Bool)

(assert (=> b!513092 (= res!313611 (= (seekEntryOrOpen!0 (select (arr!15829 a!3235) j!176) a!3235 mask!3524) (Found!4303 j!176)))))

(assert (=> b!513092 (=> (not res!313611) (not e!299628))))

(assert (= (and d!78999 (not res!313610)) b!513090))

(assert (= (and b!513090 c!60021) b!513092))

(assert (= (and b!513090 (not c!60021)) b!513089))

(assert (= (and b!513092 res!313611) b!513091))

(assert (= (or b!513091 b!513089) bm!31542))

(assert (=> b!513090 m!494551))

(assert (=> b!513090 m!494551))

(assert (=> b!513090 m!494555))

(declare-fun m!494733 () Bool)

(assert (=> bm!31542 m!494733))

(assert (=> b!513092 m!494551))

(declare-fun m!494735 () Bool)

(assert (=> b!513092 m!494735))

(declare-fun m!494737 () Bool)

(assert (=> b!513092 m!494737))

(assert (=> b!513092 m!494551))

(assert (=> b!513092 m!494553))

(assert (=> b!512876 d!78999))

(declare-fun d!79013 () Bool)

(assert (=> d!79013 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!234956 () Unit!15856)

(declare-fun choose!38 (array!32913 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15856)

(assert (=> d!79013 (= lt!234956 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79013 (validMask!0 mask!3524)))

(assert (=> d!79013 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!234956)))

(declare-fun bs!16242 () Bool)

(assert (= bs!16242 d!79013))

(assert (=> bs!16242 m!494573))

(declare-fun m!494745 () Bool)

(assert (=> bs!16242 m!494745))

(assert (=> bs!16242 m!494561))

(assert (=> b!512876 d!79013))

(declare-fun d!79017 () Bool)

(declare-fun lt!234958 () (_ BitVec 32))

(declare-fun lt!234957 () (_ BitVec 32))

(assert (=> d!79017 (= lt!234958 (bvmul (bvxor lt!234957 (bvlshr lt!234957 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79017 (= lt!234957 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79017 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313584 (let ((h!10921 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48378 (bvmul (bvxor h!10921 (bvlshr h!10921 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48378 (bvlshr x!48378 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313584 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313584 #b00000000000000000000000000000000))))))

(assert (=> d!79017 (= (toIndex!0 (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!234958 (bvlshr lt!234958 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512876 d!79017))

(declare-fun lt!234959 () SeekEntryResult!4303)

(declare-fun b!513100 () Bool)

(assert (=> b!513100 (and (bvsge (index!19402 lt!234959) #b00000000000000000000000000000000) (bvslt (index!19402 lt!234959) (size!16193 (array!32914 (store (arr!15829 a!3235) i!1204 k0!2280) (size!16193 a!3235)))))))

(declare-fun res!313615 () Bool)

(assert (=> b!513100 (= res!313615 (= (select (arr!15829 (array!32914 (store (arr!15829 a!3235) i!1204 k0!2280) (size!16193 a!3235))) (index!19402 lt!234959)) (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176)))))

(declare-fun e!299640 () Bool)

(assert (=> b!513100 (=> res!313615 e!299640)))

(declare-fun e!299636 () Bool)

(assert (=> b!513100 (= e!299636 e!299640)))

(declare-fun b!513101 () Bool)

(declare-fun e!299639 () Bool)

(assert (=> b!513101 (= e!299639 (bvsge (x!48375 lt!234959) #b01111111111111111111111111111110))))

(declare-fun b!513102 () Bool)

(declare-fun e!299638 () SeekEntryResult!4303)

(assert (=> b!513102 (= e!299638 (Intermediate!4303 true lt!234862 #b00000000000000000000000000000000))))

(declare-fun b!513103 () Bool)

(assert (=> b!513103 (and (bvsge (index!19402 lt!234959) #b00000000000000000000000000000000) (bvslt (index!19402 lt!234959) (size!16193 (array!32914 (store (arr!15829 a!3235) i!1204 k0!2280) (size!16193 a!3235)))))))

(declare-fun res!313616 () Bool)

(assert (=> b!513103 (= res!313616 (= (select (arr!15829 (array!32914 (store (arr!15829 a!3235) i!1204 k0!2280) (size!16193 a!3235))) (index!19402 lt!234959)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513103 (=> res!313616 e!299640)))

(declare-fun b!513104 () Bool)

(declare-fun e!299637 () SeekEntryResult!4303)

(assert (=> b!513104 (= e!299637 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234862 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176) (array!32914 (store (arr!15829 a!3235) i!1204 k0!2280) (size!16193 a!3235)) mask!3524))))

(declare-fun b!513105 () Bool)

(assert (=> b!513105 (= e!299637 (Intermediate!4303 false lt!234862 #b00000000000000000000000000000000))))

(declare-fun d!79019 () Bool)

(assert (=> d!79019 e!299639))

(declare-fun c!60026 () Bool)

(assert (=> d!79019 (= c!60026 (and ((_ is Intermediate!4303) lt!234959) (undefined!5115 lt!234959)))))

(assert (=> d!79019 (= lt!234959 e!299638)))

(declare-fun c!60027 () Bool)

(assert (=> d!79019 (= c!60027 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!234960 () (_ BitVec 64))

(assert (=> d!79019 (= lt!234960 (select (arr!15829 (array!32914 (store (arr!15829 a!3235) i!1204 k0!2280) (size!16193 a!3235))) lt!234862))))

(assert (=> d!79019 (validMask!0 mask!3524)))

(assert (=> d!79019 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234862 (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176) (array!32914 (store (arr!15829 a!3235) i!1204 k0!2280) (size!16193 a!3235)) mask!3524) lt!234959)))

(declare-fun b!513106 () Bool)

(assert (=> b!513106 (= e!299638 e!299637)))

(declare-fun c!60025 () Bool)

(assert (=> b!513106 (= c!60025 (or (= lt!234960 (select (store (arr!15829 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!234960 lt!234960) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513107 () Bool)

(assert (=> b!513107 (and (bvsge (index!19402 lt!234959) #b00000000000000000000000000000000) (bvslt (index!19402 lt!234959) (size!16193 (array!32914 (store (arr!15829 a!3235) i!1204 k0!2280) (size!16193 a!3235)))))))

(assert (=> b!513107 (= e!299640 (= (select (arr!15829 (array!32914 (store (arr!15829 a!3235) i!1204 k0!2280) (size!16193 a!3235))) (index!19402 lt!234959)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513108 () Bool)

(assert (=> b!513108 (= e!299639 e!299636)))

(declare-fun res!313617 () Bool)

(assert (=> b!513108 (= res!313617 (and ((_ is Intermediate!4303) lt!234959) (not (undefined!5115 lt!234959)) (bvslt (x!48375 lt!234959) #b01111111111111111111111111111110) (bvsge (x!48375 lt!234959) #b00000000000000000000000000000000) (bvsge (x!48375 lt!234959) #b00000000000000000000000000000000)))))

(assert (=> b!513108 (=> (not res!313617) (not e!299636))))

(assert (= (and d!79019 c!60027) b!513102))

(assert (= (and d!79019 (not c!60027)) b!513106))

(assert (= (and b!513106 c!60025) b!513105))

(assert (= (and b!513106 (not c!60025)) b!513104))

(assert (= (and d!79019 c!60026) b!513101))

(assert (= (and d!79019 (not c!60026)) b!513108))

(assert (= (and b!513108 res!313617) b!513100))

(assert (= (and b!513100 (not res!313615)) b!513103))

(assert (= (and b!513103 (not res!313616)) b!513107))

(declare-fun m!494747 () Bool)

(assert (=> d!79019 m!494747))

(assert (=> d!79019 m!494561))

(declare-fun m!494749 () Bool)

(assert (=> b!513103 m!494749))

(declare-fun m!494751 () Bool)

(assert (=> b!513104 m!494751))

(assert (=> b!513104 m!494751))

(assert (=> b!513104 m!494569))

(declare-fun m!494753 () Bool)

(assert (=> b!513104 m!494753))

(assert (=> b!513107 m!494749))

(assert (=> b!513100 m!494749))

(assert (=> b!512876 d!79019))

(declare-fun b!513109 () Bool)

(declare-fun e!299643 () Bool)

(declare-fun call!31549 () Bool)

(assert (=> b!513109 (= e!299643 call!31549)))

(declare-fun b!513110 () Bool)

(declare-fun e!299641 () Bool)

(assert (=> b!513110 (= e!299641 e!299643)))

(declare-fun c!60028 () Bool)

(assert (=> b!513110 (= c!60028 (validKeyInArray!0 (select (arr!15829 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31546 () Bool)

(assert (=> bm!31546 (= call!31549 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79021 () Bool)

(declare-fun res!313618 () Bool)

(assert (=> d!79021 (=> res!313618 e!299641)))

(assert (=> d!79021 (= res!313618 (bvsge #b00000000000000000000000000000000 (size!16193 a!3235)))))

(assert (=> d!79021 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!299641)))

(declare-fun b!513111 () Bool)

(declare-fun e!299642 () Bool)

(assert (=> b!513111 (= e!299642 call!31549)))

(declare-fun b!513112 () Bool)

(assert (=> b!513112 (= e!299643 e!299642)))

(declare-fun lt!234962 () (_ BitVec 64))

(assert (=> b!513112 (= lt!234962 (select (arr!15829 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!234963 () Unit!15856)

(assert (=> b!513112 (= lt!234963 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!234962 #b00000000000000000000000000000000))))

(assert (=> b!513112 (arrayContainsKey!0 a!3235 lt!234962 #b00000000000000000000000000000000)))

(declare-fun lt!234961 () Unit!15856)

(assert (=> b!513112 (= lt!234961 lt!234963)))

(declare-fun res!313619 () Bool)

(assert (=> b!513112 (= res!313619 (= (seekEntryOrOpen!0 (select (arr!15829 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4303 #b00000000000000000000000000000000)))))

(assert (=> b!513112 (=> (not res!313619) (not e!299642))))

(assert (= (and d!79021 (not res!313618)) b!513110))

(assert (= (and b!513110 c!60028) b!513112))

(assert (= (and b!513110 (not c!60028)) b!513109))

(assert (= (and b!513112 res!313619) b!513111))

(assert (= (or b!513111 b!513109) bm!31546))

(assert (=> b!513110 m!494643))

(assert (=> b!513110 m!494643))

(assert (=> b!513110 m!494661))

(declare-fun m!494755 () Bool)

(assert (=> bm!31546 m!494755))

(assert (=> b!513112 m!494643))

(declare-fun m!494757 () Bool)

(assert (=> b!513112 m!494757))

(declare-fun m!494759 () Bool)

(assert (=> b!513112 m!494759))

(assert (=> b!513112 m!494643))

(declare-fun m!494761 () Bool)

(assert (=> b!513112 m!494761))

(assert (=> b!512882 d!79021))

(declare-fun d!79023 () Bool)

(assert (=> d!79023 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46356 d!79023))

(declare-fun d!79029 () Bool)

(assert (=> d!79029 (= (array_inv!11603 a!3235) (bvsge (size!16193 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46356 d!79029))

(check-sat (not b!512985) (not b!512954) (not b!513046) (not b!513090) (not b!512983) (not d!78957) (not b!512944) (not bm!31542) (not b!512987) (not b!513104) (not d!79013) (not b!512956) (not b!513112) (not bm!31546) (not bm!31535) (not b!513110) (not b!513092) (not d!78967) (not d!79019) (not d!78977))
(check-sat)
