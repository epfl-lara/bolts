; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45100 () Bool)

(assert start!45100)

(declare-fun b!494812 () Bool)

(declare-fun res!297539 () Bool)

(declare-fun e!290313 () Bool)

(assert (=> b!494812 (=> (not res!297539) (not e!290313))))

(declare-datatypes ((array!32005 0))(
  ( (array!32006 (arr!15384 (Array (_ BitVec 32) (_ BitVec 64))) (size!15748 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32005)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32005 (_ BitVec 32)) Bool)

(assert (=> b!494812 (= res!297539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494813 () Bool)

(declare-fun e!290314 () Bool)

(assert (=> b!494813 (= e!290313 (not e!290314))))

(declare-fun res!297532 () Bool)

(assert (=> b!494813 (=> res!297532 e!290314)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!224056 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3858 0))(
  ( (MissingZero!3858 (index!17611 (_ BitVec 32))) (Found!3858 (index!17612 (_ BitVec 32))) (Intermediate!3858 (undefined!4670 Bool) (index!17613 (_ BitVec 32)) (x!46707 (_ BitVec 32))) (Undefined!3858) (MissingVacant!3858 (index!17614 (_ BitVec 32))) )
))
(declare-fun lt!224060 () SeekEntryResult!3858)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32005 (_ BitVec 32)) SeekEntryResult!3858)

(assert (=> b!494813 (= res!297532 (= lt!224060 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224056 (select (store (arr!15384 a!3235) i!1204 k!2280) j!176) (array!32006 (store (arr!15384 a!3235) i!1204 k!2280) (size!15748 a!3235)) mask!3524)))))

(declare-fun lt!224058 () (_ BitVec 32))

(assert (=> b!494813 (= lt!224060 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224058 (select (arr!15384 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494813 (= lt!224056 (toIndex!0 (select (store (arr!15384 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494813 (= lt!224058 (toIndex!0 (select (arr!15384 a!3235) j!176) mask!3524))))

(declare-fun e!290311 () Bool)

(assert (=> b!494813 e!290311))

(declare-fun res!297541 () Bool)

(assert (=> b!494813 (=> (not res!297541) (not e!290311))))

(assert (=> b!494813 (= res!297541 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14654 0))(
  ( (Unit!14655) )
))
(declare-fun lt!224057 () Unit!14654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32005 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14654)

(assert (=> b!494813 (= lt!224057 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!297542 () Bool)

(declare-fun e!290312 () Bool)

(assert (=> start!45100 (=> (not res!297542) (not e!290312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45100 (= res!297542 (validMask!0 mask!3524))))

(assert (=> start!45100 e!290312))

(assert (=> start!45100 true))

(declare-fun array_inv!11158 (array!32005) Bool)

(assert (=> start!45100 (array_inv!11158 a!3235)))

(declare-fun b!494814 () Bool)

(declare-fun res!297540 () Bool)

(assert (=> b!494814 (=> res!297540 e!290314)))

(assert (=> b!494814 (= res!297540 (or (undefined!4670 lt!224060) (not (is-Intermediate!3858 lt!224060))))))

(declare-fun b!494815 () Bool)

(declare-fun res!297538 () Bool)

(assert (=> b!494815 (=> (not res!297538) (not e!290312))))

(declare-fun arrayContainsKey!0 (array!32005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494815 (= res!297538 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494816 () Bool)

(declare-fun res!297537 () Bool)

(assert (=> b!494816 (=> (not res!297537) (not e!290313))))

(declare-datatypes ((List!9595 0))(
  ( (Nil!9592) (Cons!9591 (h!10459 (_ BitVec 64)) (t!15831 List!9595)) )
))
(declare-fun arrayNoDuplicates!0 (array!32005 (_ BitVec 32) List!9595) Bool)

(assert (=> b!494816 (= res!297537 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9592))))

(declare-fun b!494817 () Bool)

(assert (=> b!494817 (= e!290314 (or (not (= (select (arr!15384 a!3235) (index!17613 lt!224060)) (select (arr!15384 a!3235) j!176))) (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> b!494817 (and (bvslt (x!46707 lt!224060) #b01111111111111111111111111111110) (or (= (select (arr!15384 a!3235) (index!17613 lt!224060)) (select (arr!15384 a!3235) j!176)) (= (select (arr!15384 a!3235) (index!17613 lt!224060)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15384 a!3235) (index!17613 lt!224060)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!494818 () Bool)

(assert (=> b!494818 (= e!290312 e!290313)))

(declare-fun res!297535 () Bool)

(assert (=> b!494818 (=> (not res!297535) (not e!290313))))

(declare-fun lt!224059 () SeekEntryResult!3858)

(assert (=> b!494818 (= res!297535 (or (= lt!224059 (MissingZero!3858 i!1204)) (= lt!224059 (MissingVacant!3858 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32005 (_ BitVec 32)) SeekEntryResult!3858)

(assert (=> b!494818 (= lt!224059 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494819 () Bool)

(declare-fun res!297536 () Bool)

(assert (=> b!494819 (=> (not res!297536) (not e!290312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494819 (= res!297536 (validKeyInArray!0 k!2280))))

(declare-fun b!494820 () Bool)

(declare-fun res!297534 () Bool)

(assert (=> b!494820 (=> (not res!297534) (not e!290312))))

(assert (=> b!494820 (= res!297534 (and (= (size!15748 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15748 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15748 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494821 () Bool)

(assert (=> b!494821 (= e!290311 (= (seekEntryOrOpen!0 (select (arr!15384 a!3235) j!176) a!3235 mask!3524) (Found!3858 j!176)))))

(declare-fun b!494822 () Bool)

(declare-fun res!297533 () Bool)

(assert (=> b!494822 (=> (not res!297533) (not e!290312))))

(assert (=> b!494822 (= res!297533 (validKeyInArray!0 (select (arr!15384 a!3235) j!176)))))

(assert (= (and start!45100 res!297542) b!494820))

(assert (= (and b!494820 res!297534) b!494822))

(assert (= (and b!494822 res!297533) b!494819))

(assert (= (and b!494819 res!297536) b!494815))

(assert (= (and b!494815 res!297538) b!494818))

(assert (= (and b!494818 res!297535) b!494812))

(assert (= (and b!494812 res!297539) b!494816))

(assert (= (and b!494816 res!297537) b!494813))

(assert (= (and b!494813 res!297541) b!494821))

(assert (= (and b!494813 (not res!297532)) b!494814))

(assert (= (and b!494814 (not res!297540)) b!494817))

(declare-fun m!475999 () Bool)

(assert (=> b!494817 m!475999))

(declare-fun m!476001 () Bool)

(assert (=> b!494817 m!476001))

(declare-fun m!476003 () Bool)

(assert (=> b!494813 m!476003))

(declare-fun m!476005 () Bool)

(assert (=> b!494813 m!476005))

(declare-fun m!476007 () Bool)

(assert (=> b!494813 m!476007))

(assert (=> b!494813 m!476007))

(declare-fun m!476009 () Bool)

(assert (=> b!494813 m!476009))

(assert (=> b!494813 m!476001))

(declare-fun m!476011 () Bool)

(assert (=> b!494813 m!476011))

(assert (=> b!494813 m!476001))

(declare-fun m!476013 () Bool)

(assert (=> b!494813 m!476013))

(assert (=> b!494813 m!476001))

(declare-fun m!476015 () Bool)

(assert (=> b!494813 m!476015))

(assert (=> b!494813 m!476007))

(declare-fun m!476017 () Bool)

(assert (=> b!494813 m!476017))

(declare-fun m!476019 () Bool)

(assert (=> b!494815 m!476019))

(declare-fun m!476021 () Bool)

(assert (=> start!45100 m!476021))

(declare-fun m!476023 () Bool)

(assert (=> start!45100 m!476023))

(declare-fun m!476025 () Bool)

(assert (=> b!494818 m!476025))

(assert (=> b!494821 m!476001))

(assert (=> b!494821 m!476001))

(declare-fun m!476027 () Bool)

(assert (=> b!494821 m!476027))

(declare-fun m!476029 () Bool)

(assert (=> b!494812 m!476029))

(assert (=> b!494822 m!476001))

(assert (=> b!494822 m!476001))

(declare-fun m!476031 () Bool)

(assert (=> b!494822 m!476031))

(declare-fun m!476033 () Bool)

(assert (=> b!494819 m!476033))

(declare-fun m!476035 () Bool)

(assert (=> b!494816 m!476035))

(push 1)

(assert (not b!494822))

(assert (not b!494812))

(assert (not b!494816))

(assert (not start!45100))

(assert (not b!494821))

(assert (not b!494818))

(assert (not b!494819))

(assert (not b!494815))

(assert (not b!494813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!494926 () Bool)

(declare-fun e!290374 () Bool)

(declare-fun call!31415 () Bool)

(assert (=> b!494926 (= e!290374 call!31415)))

(declare-fun b!494927 () Bool)

(declare-fun e!290375 () Bool)

(declare-fun contains!2718 (List!9595 (_ BitVec 64)) Bool)

(assert (=> b!494927 (= e!290375 (contains!2718 Nil!9592 (select (arr!15384 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!494928 () Bool)

(declare-fun e!290377 () Bool)

(declare-fun e!290376 () Bool)

(assert (=> b!494928 (= e!290377 e!290376)))

(declare-fun res!297632 () Bool)

(assert (=> b!494928 (=> (not res!297632) (not e!290376))))

(assert (=> b!494928 (= res!297632 (not e!290375))))

(declare-fun res!297630 () Bool)

(assert (=> b!494928 (=> (not res!297630) (not e!290375))))

(assert (=> b!494928 (= res!297630 (validKeyInArray!0 (select (arr!15384 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31412 () Bool)

(declare-fun c!58922 () Bool)

(assert (=> bm!31412 (= call!31415 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58922 (Cons!9591 (select (arr!15384 a!3235) #b00000000000000000000000000000000) Nil!9592) Nil!9592)))))

(declare-fun b!494930 () Bool)

(assert (=> b!494930 (= e!290376 e!290374)))

(assert (=> b!494930 (= c!58922 (validKeyInArray!0 (select (arr!15384 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78125 () Bool)

(declare-fun res!297631 () Bool)

(assert (=> d!78125 (=> res!297631 e!290377)))

(assert (=> d!78125 (= res!297631 (bvsge #b00000000000000000000000000000000 (size!15748 a!3235)))))

(assert (=> d!78125 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9592) e!290377)))

(declare-fun b!494929 () Bool)

(assert (=> b!494929 (= e!290374 call!31415)))

(assert (= (and d!78125 (not res!297631)) b!494928))

(assert (= (and b!494928 res!297630) b!494927))

(assert (= (and b!494928 res!297632) b!494930))

(assert (= (and b!494930 c!58922) b!494929))

(assert (= (and b!494930 (not c!58922)) b!494926))

(assert (= (or b!494929 b!494926) bm!31412))

(declare-fun m!476129 () Bool)

(assert (=> b!494927 m!476129))

(assert (=> b!494927 m!476129))

(declare-fun m!476131 () Bool)

(assert (=> b!494927 m!476131))

(assert (=> b!494928 m!476129))

(assert (=> b!494928 m!476129))

(declare-fun m!476133 () Bool)

(assert (=> b!494928 m!476133))

(assert (=> bm!31412 m!476129))

(declare-fun m!476135 () Bool)

(assert (=> bm!31412 m!476135))

(assert (=> b!494930 m!476129))

(assert (=> b!494930 m!476129))

(assert (=> b!494930 m!476133))

(assert (=> b!494816 d!78125))

(declare-fun d!78127 () Bool)

(assert (=> d!78127 (= (validKeyInArray!0 (select (arr!15384 a!3235) j!176)) (and (not (= (select (arr!15384 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15384 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!494822 d!78127))

(declare-fun d!78129 () Bool)

(assert (=> d!78129 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!45100 d!78129))

(declare-fun d!78135 () Bool)

(assert (=> d!78135 (= (array_inv!11158 a!3235) (bvsge (size!15748 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!45100 d!78135))

(declare-fun d!78137 () Bool)

(declare-fun res!297643 () Bool)

(declare-fun e!290394 () Bool)

(assert (=> d!78137 (=> res!297643 e!290394)))

(assert (=> d!78137 (= res!297643 (= (select (arr!15384 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!78137 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!290394)))

(declare-fun b!494953 () Bool)

(declare-fun e!290395 () Bool)

(assert (=> b!494953 (= e!290394 e!290395)))

(declare-fun res!297644 () Bool)

(assert (=> b!494953 (=> (not res!297644) (not e!290395))))

(assert (=> b!494953 (= res!297644 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15748 a!3235)))))

(declare-fun b!494954 () Bool)

(assert (=> b!494954 (= e!290395 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78137 (not res!297643)) b!494953))

(assert (= (and b!494953 res!297644) b!494954))

(assert (=> d!78137 m!476129))

(declare-fun m!476141 () Bool)

(assert (=> b!494954 m!476141))

(assert (=> b!494815 d!78137))

(declare-fun b!494991 () Bool)

(declare-fun e!290417 () SeekEntryResult!3858)

(assert (=> b!494991 (= e!290417 Undefined!3858)))

(declare-fun b!494992 () Bool)

(declare-fun e!290419 () SeekEntryResult!3858)

(assert (=> b!494992 (= e!290417 e!290419)))

(declare-fun lt!224127 () (_ BitVec 64))

(declare-fun lt!224128 () SeekEntryResult!3858)

(assert (=> b!494992 (= lt!224127 (select (arr!15384 a!3235) (index!17613 lt!224128)))))

(declare-fun c!58946 () Bool)

(assert (=> b!494992 (= c!58946 (= lt!224127 (select (arr!15384 a!3235) j!176)))))

(declare-fun b!494993 () Bool)

(assert (=> b!494993 (= e!290419 (Found!3858 (index!17613 lt!224128)))))

(declare-fun d!78139 () Bool)

(declare-fun lt!224129 () SeekEntryResult!3858)

(assert (=> d!78139 (and (or (is-Undefined!3858 lt!224129) (not (is-Found!3858 lt!224129)) (and (bvsge (index!17612 lt!224129) #b00000000000000000000000000000000) (bvslt (index!17612 lt!224129) (size!15748 a!3235)))) (or (is-Undefined!3858 lt!224129) (is-Found!3858 lt!224129) (not (is-MissingZero!3858 lt!224129)) (and (bvsge (index!17611 lt!224129) #b00000000000000000000000000000000) (bvslt (index!17611 lt!224129) (size!15748 a!3235)))) (or (is-Undefined!3858 lt!224129) (is-Found!3858 lt!224129) (is-MissingZero!3858 lt!224129) (not (is-MissingVacant!3858 lt!224129)) (and (bvsge (index!17614 lt!224129) #b00000000000000000000000000000000) (bvslt (index!17614 lt!224129) (size!15748 a!3235)))) (or (is-Undefined!3858 lt!224129) (ite (is-Found!3858 lt!224129) (= (select (arr!15384 a!3235) (index!17612 lt!224129)) (select (arr!15384 a!3235) j!176)) (ite (is-MissingZero!3858 lt!224129) (= (select (arr!15384 a!3235) (index!17611 lt!224129)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3858 lt!224129) (= (select (arr!15384 a!3235) (index!17614 lt!224129)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78139 (= lt!224129 e!290417)))

(declare-fun c!58944 () Bool)

(assert (=> d!78139 (= c!58944 (and (is-Intermediate!3858 lt!224128) (undefined!4670 lt!224128)))))

(assert (=> d!78139 (= lt!224128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15384 a!3235) j!176) mask!3524) (select (arr!15384 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78139 (validMask!0 mask!3524)))

(assert (=> d!78139 (= (seekEntryOrOpen!0 (select (arr!15384 a!3235) j!176) a!3235 mask!3524) lt!224129)))

(declare-fun b!494994 () Bool)

(declare-fun e!290418 () SeekEntryResult!3858)

(assert (=> b!494994 (= e!290418 (MissingZero!3858 (index!17613 lt!224128)))))

(declare-fun b!494995 () Bool)

(declare-fun c!58945 () Bool)

(assert (=> b!494995 (= c!58945 (= lt!224127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!494995 (= e!290419 e!290418)))

(declare-fun b!494996 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32005 (_ BitVec 32)) SeekEntryResult!3858)

(assert (=> b!494996 (= e!290418 (seekKeyOrZeroReturnVacant!0 (x!46707 lt!224128) (index!17613 lt!224128) (index!17613 lt!224128) (select (arr!15384 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!78139 c!58944) b!494991))

(assert (= (and d!78139 (not c!58944)) b!494992))

(assert (= (and b!494992 c!58946) b!494993))

(assert (= (and b!494992 (not c!58946)) b!494995))

(assert (= (and b!494995 c!58945) b!494994))

(assert (= (and b!494995 (not c!58945)) b!494996))

(declare-fun m!476159 () Bool)

(assert (=> b!494992 m!476159))

(assert (=> d!78139 m!476011))

(assert (=> d!78139 m!476001))

(declare-fun m!476161 () Bool)

(assert (=> d!78139 m!476161))

(declare-fun m!476163 () Bool)

(assert (=> d!78139 m!476163))

(assert (=> d!78139 m!476001))

(assert (=> d!78139 m!476011))

(declare-fun m!476165 () Bool)

(assert (=> d!78139 m!476165))

(declare-fun m!476167 () Bool)

(assert (=> d!78139 m!476167))

(assert (=> d!78139 m!476021))

(assert (=> b!494996 m!476001))

(declare-fun m!476169 () Bool)

(assert (=> b!494996 m!476169))

(assert (=> b!494821 d!78139))

(declare-fun d!78149 () Bool)

(assert (=> d!78149 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!494819 d!78149))

(declare-fun b!495015 () Bool)

(declare-fun e!290432 () Bool)

(declare-fun call!31419 () Bool)

(assert (=> b!495015 (= e!290432 call!31419)))

(declare-fun b!495017 () Bool)

(declare-fun e!290433 () Bool)

(assert (=> b!495017 (= e!290433 e!290432)))

(declare-fun lt!224142 () (_ BitVec 64))

(assert (=> b!495017 (= lt!224142 (select (arr!15384 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!224143 () Unit!14654)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32005 (_ BitVec 64) (_ BitVec 32)) Unit!14654)

(assert (=> b!495017 (= lt!224143 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!224142 #b00000000000000000000000000000000))))

(assert (=> b!495017 (arrayContainsKey!0 a!3235 lt!224142 #b00000000000000000000000000000000)))

(declare-fun lt!224144 () Unit!14654)

(assert (=> b!495017 (= lt!224144 lt!224143)))

(declare-fun res!297658 () Bool)

(assert (=> b!495017 (= res!297658 (= (seekEntryOrOpen!0 (select (arr!15384 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3858 #b00000000000000000000000000000000)))))

(assert (=> b!495017 (=> (not res!297658) (not e!290432))))

(declare-fun b!495018 () Bool)

(assert (=> b!495018 (= e!290433 call!31419)))

(declare-fun bm!31416 () Bool)

(assert (=> bm!31416 (= call!31419 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!78151 () Bool)

(declare-fun res!297659 () Bool)

(declare-fun e!290434 () Bool)

(assert (=> d!78151 (=> res!297659 e!290434)))

(assert (=> d!78151 (= res!297659 (bvsge #b00000000000000000000000000000000 (size!15748 a!3235)))))

(assert (=> d!78151 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!290434)))

(declare-fun b!495016 () Bool)

(assert (=> b!495016 (= e!290434 e!290433)))

(declare-fun c!58953 () Bool)

(assert (=> b!495016 (= c!58953 (validKeyInArray!0 (select (arr!15384 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78151 (not res!297659)) b!495016))

(assert (= (and b!495016 c!58953) b!495017))

(assert (= (and b!495016 (not c!58953)) b!495018))

(assert (= (and b!495017 res!297658) b!495015))

(assert (= (or b!495015 b!495018) bm!31416))

(assert (=> b!495017 m!476129))

(declare-fun m!476189 () Bool)

(assert (=> b!495017 m!476189))

(declare-fun m!476191 () Bool)

(assert (=> b!495017 m!476191))

(assert (=> b!495017 m!476129))

(declare-fun m!476193 () Bool)

(assert (=> b!495017 m!476193))

(declare-fun m!476195 () Bool)

(assert (=> bm!31416 m!476195))

(assert (=> b!495016 m!476129))

(assert (=> b!495016 m!476129))

(assert (=> b!495016 m!476133))

(assert (=> b!494812 d!78151))

(declare-fun d!78159 () Bool)

(declare-fun lt!224150 () (_ BitVec 32))

(declare-fun lt!224149 () (_ BitVec 32))

(assert (=> d!78159 (= lt!224150 (bvmul (bvxor lt!224149 (bvlshr lt!224149 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78159 (= lt!224149 ((_ extract 31 0) (bvand (bvxor (select (arr!15384 a!3235) j!176) (bvlshr (select (arr!15384 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78159 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!297660 (let ((h!10463 ((_ extract 31 0) (bvand (bvxor (select (arr!15384 a!3235) j!176) (bvlshr (select (arr!15384 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46711 (bvmul (bvxor h!10463 (bvlshr h!10463 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46711 (bvlshr x!46711 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!297660 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!297660 #b00000000000000000000000000000000))))))

(assert (=> d!78159 (= (toIndex!0 (select (arr!15384 a!3235) j!176) mask!3524) (bvand (bvxor lt!224150 (bvlshr lt!224150 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!494813 d!78159))

(declare-fun b!495019 () Bool)

(declare-fun e!290435 () Bool)

(declare-fun call!31420 () Bool)

(assert (=> b!495019 (= e!290435 call!31420)))

(declare-fun b!495021 () Bool)

(declare-fun e!290436 () Bool)

(assert (=> b!495021 (= e!290436 e!290435)))

(declare-fun lt!224151 () (_ BitVec 64))

(assert (=> b!495021 (= lt!224151 (select (arr!15384 a!3235) j!176))))

(declare-fun lt!224152 () Unit!14654)

(assert (=> b!495021 (= lt!224152 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!224151 j!176))))

(assert (=> b!495021 (arrayContainsKey!0 a!3235 lt!224151 #b00000000000000000000000000000000)))

(declare-fun lt!224153 () Unit!14654)

(assert (=> b!495021 (= lt!224153 lt!224152)))

(declare-fun res!297661 () Bool)

(assert (=> b!495021 (= res!297661 (= (seekEntryOrOpen!0 (select (arr!15384 a!3235) j!176) a!3235 mask!3524) (Found!3858 j!176)))))

(assert (=> b!495021 (=> (not res!297661) (not e!290435))))

(declare-fun b!495022 () Bool)

(assert (=> b!495022 (= e!290436 call!31420)))

(declare-fun bm!31417 () Bool)

(assert (=> bm!31417 (= call!31420 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!78161 () Bool)

(declare-fun res!297662 () Bool)

(declare-fun e!290437 () Bool)

(assert (=> d!78161 (=> res!297662 e!290437)))

(assert (=> d!78161 (= res!297662 (bvsge j!176 (size!15748 a!3235)))))

(assert (=> d!78161 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!290437)))

(declare-fun b!495020 () Bool)

(assert (=> b!495020 (= e!290437 e!290436)))

(declare-fun c!58954 () Bool)

(assert (=> b!495020 (= c!58954 (validKeyInArray!0 (select (arr!15384 a!3235) j!176)))))

(assert (= (and d!78161 (not res!297662)) b!495020))

(assert (= (and b!495020 c!58954) b!495021))

(assert (= (and b!495020 (not c!58954)) b!495022))

(assert (= (and b!495021 res!297661) b!495019))

(assert (= (or b!495019 b!495022) bm!31417))

(assert (=> b!495021 m!476001))

(declare-fun m!476197 () Bool)

(assert (=> b!495021 m!476197))

(declare-fun m!476199 () Bool)

(assert (=> b!495021 m!476199))

(assert (=> b!495021 m!476001))

(assert (=> b!495021 m!476027))

(declare-fun m!476201 () Bool)

(assert (=> bm!31417 m!476201))

(assert (=> b!495020 m!476001))

(assert (=> b!495020 m!476001))

(assert (=> b!495020 m!476031))

(assert (=> b!494813 d!78161))

(declare-fun b!495076 () Bool)

(declare-fun e!290473 () SeekEntryResult!3858)

(declare-fun e!290472 () SeekEntryResult!3858)

(assert (=> b!495076 (= e!290473 e!290472)))

(declare-fun lt!224171 () (_ BitVec 64))

(declare-fun c!58973 () Bool)

(assert (=> b!495076 (= c!58973 (or (= lt!224171 (select (arr!15384 a!3235) j!176)) (= (bvadd lt!224171 lt!224171) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495077 () Bool)

(assert (=> b!495077 (= e!290473 (Intermediate!3858 true lt!224058 #b00000000000000000000000000000000))))

(declare-fun b!495078 () Bool)

(declare-fun e!290471 () Bool)

(declare-fun lt!224170 () SeekEntryResult!3858)

(assert (=> b!495078 (= e!290471 (bvsge (x!46707 lt!224170) #b01111111111111111111111111111110))))

(declare-fun b!495079 () Bool)

(assert (=> b!495079 (and (bvsge (index!17613 lt!224170) #b00000000000000000000000000000000) (bvslt (index!17613 lt!224170) (size!15748 a!3235)))))

(declare-fun res!297683 () Bool)

(assert (=> b!495079 (= res!297683 (= (select (arr!15384 a!3235) (index!17613 lt!224170)) (select (arr!15384 a!3235) j!176)))))

(declare-fun e!290469 () Bool)

(assert (=> b!495079 (=> res!297683 e!290469)))

(declare-fun e!290470 () Bool)

(assert (=> b!495079 (= e!290470 e!290469)))

(declare-fun d!78163 () Bool)

(assert (=> d!78163 e!290471))

(declare-fun c!58974 () Bool)

(assert (=> d!78163 (= c!58974 (and (is-Intermediate!3858 lt!224170) (undefined!4670 lt!224170)))))

(assert (=> d!78163 (= lt!224170 e!290473)))

(declare-fun c!58972 () Bool)

(assert (=> d!78163 (= c!58972 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78163 (= lt!224171 (select (arr!15384 a!3235) lt!224058))))

(assert (=> d!78163 (validMask!0 mask!3524)))

(assert (=> d!78163 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224058 (select (arr!15384 a!3235) j!176) a!3235 mask!3524) lt!224170)))

(declare-fun b!495080 () Bool)

(assert (=> b!495080 (= e!290472 (Intermediate!3858 false lt!224058 #b00000000000000000000000000000000))))

(declare-fun b!495081 () Bool)

(assert (=> b!495081 (and (bvsge (index!17613 lt!224170) #b00000000000000000000000000000000) (bvslt (index!17613 lt!224170) (size!15748 a!3235)))))

(assert (=> b!495081 (= e!290469 (= (select (arr!15384 a!3235) (index!17613 lt!224170)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!495082 () Bool)

(assert (=> b!495082 (= e!290471 e!290470)))

(declare-fun res!297684 () Bool)

(assert (=> b!495082 (= res!297684 (and (is-Intermediate!3858 lt!224170) (not (undefined!4670 lt!224170)) (bvslt (x!46707 lt!224170) #b01111111111111111111111111111110) (bvsge (x!46707 lt!224170) #b00000000000000000000000000000000) (bvsge (x!46707 lt!224170) #b00000000000000000000000000000000)))))

(assert (=> b!495082 (=> (not res!297684) (not e!290470))))

(declare-fun b!495083 () Bool)

(assert (=> b!495083 (and (bvsge (index!17613 lt!224170) #b00000000000000000000000000000000) (bvslt (index!17613 lt!224170) (size!15748 a!3235)))))

(declare-fun res!297682 () Bool)

(assert (=> b!495083 (= res!297682 (= (select (arr!15384 a!3235) (index!17613 lt!224170)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!495083 (=> res!297682 e!290469)))

(declare-fun b!495084 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495084 (= e!290472 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!224058 #b00000000000000000000000000000000 mask!3524) (select (arr!15384 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!78163 c!58972) b!495077))

(assert (= (and d!78163 (not c!58972)) b!495076))

(assert (= (and b!495076 c!58973) b!495080))

(assert (= (and b!495076 (not c!58973)) b!495084))

(assert (= (and d!78163 c!58974) b!495078))

(assert (= (and d!78163 (not c!58974)) b!495082))

(assert (= (and b!495082 res!297684) b!495079))

(assert (= (and b!495079 (not res!297683)) b!495083))

(assert (= (and b!495083 (not res!297682)) b!495081))

(declare-fun m!476211 () Bool)

(assert (=> b!495081 m!476211))

(assert (=> b!495083 m!476211))

(declare-fun m!476213 () Bool)

(assert (=> d!78163 m!476213))

(assert (=> d!78163 m!476021))

(declare-fun m!476215 () Bool)

(assert (=> b!495084 m!476215))

(assert (=> b!495084 m!476215))

(assert (=> b!495084 m!476001))

(declare-fun m!476217 () Bool)

(assert (=> b!495084 m!476217))

(assert (=> b!495079 m!476211))

(assert (=> b!494813 d!78163))

(declare-fun b!495085 () Bool)

(declare-fun e!290478 () SeekEntryResult!3858)

(declare-fun e!290477 () SeekEntryResult!3858)

(assert (=> b!495085 (= e!290478 e!290477)))

(declare-fun c!58976 () Bool)

(declare-fun lt!224173 () (_ BitVec 64))

(assert (=> b!495085 (= c!58976 (or (= lt!224173 (select (store (arr!15384 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!224173 lt!224173) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495086 () Bool)

(assert (=> b!495086 (= e!290478 (Intermediate!3858 true lt!224056 #b00000000000000000000000000000000))))

(declare-fun b!495087 () Bool)

(declare-fun e!290476 () Bool)

(declare-fun lt!224172 () SeekEntryResult!3858)

(assert (=> b!495087 (= e!290476 (bvsge (x!46707 lt!224172) #b01111111111111111111111111111110))))

(declare-fun b!495088 () Bool)

(assert (=> b!495088 (and (bvsge (index!17613 lt!224172) #b00000000000000000000000000000000) (bvslt (index!17613 lt!224172) (size!15748 (array!32006 (store (arr!15384 a!3235) i!1204 k!2280) (size!15748 a!3235)))))))

(declare-fun res!297686 () Bool)

(assert (=> b!495088 (= res!297686 (= (select (arr!15384 (array!32006 (store (arr!15384 a!3235) i!1204 k!2280) (size!15748 a!3235))) (index!17613 lt!224172)) (select (store (arr!15384 a!3235) i!1204 k!2280) j!176)))))

(declare-fun e!290474 () Bool)

(assert (=> b!495088 (=> res!297686 e!290474)))

(declare-fun e!290475 () Bool)

(assert (=> b!495088 (= e!290475 e!290474)))

(declare-fun d!78171 () Bool)

(assert (=> d!78171 e!290476))

(declare-fun c!58977 () Bool)

(assert (=> d!78171 (= c!58977 (and (is-Intermediate!3858 lt!224172) (undefined!4670 lt!224172)))))

(assert (=> d!78171 (= lt!224172 e!290478)))

(declare-fun c!58975 () Bool)

(assert (=> d!78171 (= c!58975 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78171 (= lt!224173 (select (arr!15384 (array!32006 (store (arr!15384 a!3235) i!1204 k!2280) (size!15748 a!3235))) lt!224056))))

(assert (=> d!78171 (validMask!0 mask!3524)))

(assert (=> d!78171 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224056 (select (store (arr!15384 a!3235) i!1204 k!2280) j!176) (array!32006 (store (arr!15384 a!3235) i!1204 k!2280) (size!15748 a!3235)) mask!3524) lt!224172)))

(declare-fun b!495089 () Bool)

(assert (=> b!495089 (= e!290477 (Intermediate!3858 false lt!224056 #b00000000000000000000000000000000))))

(declare-fun b!495090 () Bool)

(assert (=> b!495090 (and (bvsge (index!17613 lt!224172) #b00000000000000000000000000000000) (bvslt (index!17613 lt!224172) (size!15748 (array!32006 (store (arr!15384 a!3235) i!1204 k!2280) (size!15748 a!3235)))))))

(assert (=> b!495090 (= e!290474 (= (select (arr!15384 (array!32006 (store (arr!15384 a!3235) i!1204 k!2280) (size!15748 a!3235))) (index!17613 lt!224172)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!495091 () Bool)

(assert (=> b!495091 (= e!290476 e!290475)))

(declare-fun res!297687 () Bool)

(assert (=> b!495091 (= res!297687 (and (is-Intermediate!3858 lt!224172) (not (undefined!4670 lt!224172)) (bvslt (x!46707 lt!224172) #b01111111111111111111111111111110) (bvsge (x!46707 lt!224172) #b00000000000000000000000000000000) (bvsge (x!46707 lt!224172) #b00000000000000000000000000000000)))))

(assert (=> b!495091 (=> (not res!297687) (not e!290475))))

(declare-fun b!495092 () Bool)

(assert (=> b!495092 (and (bvsge (index!17613 lt!224172) #b00000000000000000000000000000000) (bvslt (index!17613 lt!224172) (size!15748 (array!32006 (store (arr!15384 a!3235) i!1204 k!2280) (size!15748 a!3235)))))))

(declare-fun res!297685 () Bool)

(assert (=> b!495092 (= res!297685 (= (select (arr!15384 (array!32006 (store (arr!15384 a!3235) i!1204 k!2280) (size!15748 a!3235))) (index!17613 lt!224172)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!495092 (=> res!297685 e!290474)))

(declare-fun b!495093 () Bool)

(assert (=> b!495093 (= e!290477 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!224056 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15384 a!3235) i!1204 k!2280) j!176) (array!32006 (store (arr!15384 a!3235) i!1204 k!2280) (size!15748 a!3235)) mask!3524))))

(assert (= (and d!78171 c!58975) b!495086))

(assert (= (and d!78171 (not c!58975)) b!495085))

(assert (= (and b!495085 c!58976) b!495089))

(assert (= (and b!495085 (not c!58976)) b!495093))

(assert (= (and d!78171 c!58977) b!495087))

(assert (= (and d!78171 (not c!58977)) b!495091))

(assert (= (and b!495091 res!297687) b!495088))

(assert (= (and b!495088 (not res!297686)) b!495092))

(assert (= (and b!495092 (not res!297685)) b!495090))

(declare-fun m!476219 () Bool)

(assert (=> b!495090 m!476219))

(assert (=> b!495092 m!476219))

(declare-fun m!476221 () Bool)

(assert (=> d!78171 m!476221))

(assert (=> d!78171 m!476021))

(declare-fun m!476223 () Bool)

(assert (=> b!495093 m!476223))

(assert (=> b!495093 m!476223))

(assert (=> b!495093 m!476007))

(declare-fun m!476225 () Bool)

(assert (=> b!495093 m!476225))

(assert (=> b!495088 m!476219))

(assert (=> b!494813 d!78171))

(declare-fun d!78173 () Bool)

(assert (=> d!78173 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!224182 () Unit!14654)

(declare-fun choose!38 (array!32005 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14654)

(assert (=> d!78173 (= lt!224182 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78173 (validMask!0 mask!3524)))

(assert (=> d!78173 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!224182)))

(declare-fun bs!15778 () Bool)

(assert (= bs!15778 d!78173))

(assert (=> bs!15778 m!476013))

(declare-fun m!476239 () Bool)

(assert (=> bs!15778 m!476239))

(assert (=> bs!15778 m!476021))

(assert (=> b!494813 d!78173))

(declare-fun d!78179 () Bool)

(declare-fun lt!224186 () (_ BitVec 32))

(declare-fun lt!224185 () (_ BitVec 32))

(assert (=> d!78179 (= lt!224186 (bvmul (bvxor lt!224185 (bvlshr lt!224185 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78179 (= lt!224185 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15384 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15384 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78179 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!297660 (let ((h!10463 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15384 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15384 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46711 (bvmul (bvxor h!10463 (bvlshr h!10463 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46711 (bvlshr x!46711 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!297660 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!297660 #b00000000000000000000000000000000))))))

(assert (=> d!78179 (= (toIndex!0 (select (store (arr!15384 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!224186 (bvlshr lt!224186 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!494813 d!78179))

(declare-fun b!495098 () Bool)

(declare-fun e!290482 () SeekEntryResult!3858)

(assert (=> b!495098 (= e!290482 Undefined!3858)))

(declare-fun b!495099 () Bool)

(declare-fun e!290484 () SeekEntryResult!3858)

(assert (=> b!495099 (= e!290482 e!290484)))

(declare-fun lt!224187 () (_ BitVec 64))

(declare-fun lt!224188 () SeekEntryResult!3858)

(assert (=> b!495099 (= lt!224187 (select (arr!15384 a!3235) (index!17613 lt!224188)))))

(declare-fun c!58981 () Bool)

(assert (=> b!495099 (= c!58981 (= lt!224187 k!2280))))

(declare-fun b!495100 () Bool)

(assert (=> b!495100 (= e!290484 (Found!3858 (index!17613 lt!224188)))))

(declare-fun d!78181 () Bool)

(declare-fun lt!224189 () SeekEntryResult!3858)

(assert (=> d!78181 (and (or (is-Undefined!3858 lt!224189) (not (is-Found!3858 lt!224189)) (and (bvsge (index!17612 lt!224189) #b00000000000000000000000000000000) (bvslt (index!17612 lt!224189) (size!15748 a!3235)))) (or (is-Undefined!3858 lt!224189) (is-Found!3858 lt!224189) (not (is-MissingZero!3858 lt!224189)) (and (bvsge (index!17611 lt!224189) #b00000000000000000000000000000000) (bvslt (index!17611 lt!224189) (size!15748 a!3235)))) (or (is-Undefined!3858 lt!224189) (is-Found!3858 lt!224189) (is-MissingZero!3858 lt!224189) (not (is-MissingVacant!3858 lt!224189)) (and (bvsge (index!17614 lt!224189) #b00000000000000000000000000000000) (bvslt (index!17614 lt!224189) (size!15748 a!3235)))) (or (is-Undefined!3858 lt!224189) (ite (is-Found!3858 lt!224189) (= (select (arr!15384 a!3235) (index!17612 lt!224189)) k!2280) (ite (is-MissingZero!3858 lt!224189) (= (select (arr!15384 a!3235) (index!17611 lt!224189)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3858 lt!224189) (= (select (arr!15384 a!3235) (index!17614 lt!224189)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78181 (= lt!224189 e!290482)))

(declare-fun c!58979 () Bool)

(assert (=> d!78181 (= c!58979 (and (is-Intermediate!3858 lt!224188) (undefined!4670 lt!224188)))))

(assert (=> d!78181 (= lt!224188 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78181 (validMask!0 mask!3524)))

(assert (=> d!78181 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!224189)))

(declare-fun b!495101 () Bool)

(declare-fun e!290483 () SeekEntryResult!3858)

(assert (=> b!495101 (= e!290483 (MissingZero!3858 (index!17613 lt!224188)))))

(declare-fun b!495102 () Bool)

(declare-fun c!58980 () Bool)

(assert (=> b!495102 (= c!58980 (= lt!224187 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!495102 (= e!290484 e!290483)))

(declare-fun b!495103 () Bool)

(assert (=> b!495103 (= e!290483 (seekKeyOrZeroReturnVacant!0 (x!46707 lt!224188) (index!17613 lt!224188) (index!17613 lt!224188) k!2280 a!3235 mask!3524))))

(assert (= (and d!78181 c!58979) b!495098))

(assert (= (and d!78181 (not c!58979)) b!495099))

(assert (= (and b!495099 c!58981) b!495100))

(assert (= (and b!495099 (not c!58981)) b!495102))

(assert (= (and b!495102 c!58980) b!495101))

(assert (= (and b!495102 (not c!58980)) b!495103))

(declare-fun m!476241 () Bool)

(assert (=> b!495099 m!476241))

(declare-fun m!476243 () Bool)

(assert (=> d!78181 m!476243))

(declare-fun m!476245 () Bool)

(assert (=> d!78181 m!476245))

(declare-fun m!476247 () Bool)

(assert (=> d!78181 m!476247))

(assert (=> d!78181 m!476243))

(declare-fun m!476249 () Bool)

(assert (=> d!78181 m!476249))

(declare-fun m!476251 () Bool)

(assert (=> d!78181 m!476251))

(assert (=> d!78181 m!476021))

(declare-fun m!476253 () Bool)

(assert (=> b!495103 m!476253))

(assert (=> b!494818 d!78181))

(push 1)

(assert (not b!494927))

(assert (not bm!31416))

(assert (not b!495084))

(assert (not b!494930))

(assert (not d!78171))

(assert (not b!495017))

(assert (not b!495020))

(assert (not bm!31412))

(assert (not d!78163))

(assert (not b!495093))

(assert (not d!78181))

(assert (not b!494996))

(assert (not b!495021))

(assert (not d!78139))

(assert (not b!495103))

(assert (not b!494954))

(assert (not bm!31417))

(assert (not d!78173))

(assert (not b!494928))

(assert (not b!495016))

(check-sat)

