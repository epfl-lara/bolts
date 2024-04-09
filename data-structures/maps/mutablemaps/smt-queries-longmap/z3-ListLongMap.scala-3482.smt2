; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48252 () Bool)

(assert start!48252)

(declare-fun b!530801 () Bool)

(declare-fun res!326657 () Bool)

(declare-fun e!309180 () Bool)

(assert (=> b!530801 (=> (not res!326657) (not e!309180))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530801 (= res!326657 (validKeyInArray!0 k0!1998))))

(declare-fun res!326659 () Bool)

(assert (=> start!48252 (=> (not res!326659) (not e!309180))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48252 (= res!326659 (validMask!0 mask!3216))))

(assert (=> start!48252 e!309180))

(assert (=> start!48252 true))

(declare-datatypes ((array!33633 0))(
  ( (array!33634 (arr!16159 (Array (_ BitVec 32) (_ BitVec 64))) (size!16523 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33633)

(declare-fun array_inv!11933 (array!33633) Bool)

(assert (=> start!48252 (array_inv!11933 a!3154)))

(declare-fun b!530802 () Bool)

(declare-fun res!326658 () Bool)

(assert (=> b!530802 (=> (not res!326658) (not e!309180))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530802 (= res!326658 (and (= (size!16523 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16523 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16523 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530803 () Bool)

(declare-fun res!326660 () Bool)

(assert (=> b!530803 (=> (not res!326660) (not e!309180))))

(declare-fun arrayContainsKey!0 (array!33633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530803 (= res!326660 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530804 () Bool)

(declare-fun e!309179 () Bool)

(assert (=> b!530804 (= e!309179 (and (bvsle #b00000000000000000000000000000000 (size!16523 a!3154)) (bvsge (size!16523 a!3154) #b01111111111111111111111111111111)))))

(declare-fun b!530805 () Bool)

(declare-fun res!326662 () Bool)

(assert (=> b!530805 (=> (not res!326662) (not e!309179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33633 (_ BitVec 32)) Bool)

(assert (=> b!530805 (= res!326662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!530806 () Bool)

(declare-fun res!326663 () Bool)

(assert (=> b!530806 (=> (not res!326663) (not e!309180))))

(assert (=> b!530806 (= res!326663 (validKeyInArray!0 (select (arr!16159 a!3154) j!147)))))

(declare-fun b!530807 () Bool)

(assert (=> b!530807 (= e!309180 e!309179)))

(declare-fun res!326661 () Bool)

(assert (=> b!530807 (=> (not res!326661) (not e!309179))))

(declare-datatypes ((SeekEntryResult!4624 0))(
  ( (MissingZero!4624 (index!20720 (_ BitVec 32))) (Found!4624 (index!20721 (_ BitVec 32))) (Intermediate!4624 (undefined!5436 Bool) (index!20722 (_ BitVec 32)) (x!49729 (_ BitVec 32))) (Undefined!4624) (MissingVacant!4624 (index!20723 (_ BitVec 32))) )
))
(declare-fun lt!244796 () SeekEntryResult!4624)

(assert (=> b!530807 (= res!326661 (or (= lt!244796 (MissingZero!4624 i!1153)) (= lt!244796 (MissingVacant!4624 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33633 (_ BitVec 32)) SeekEntryResult!4624)

(assert (=> b!530807 (= lt!244796 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!48252 res!326659) b!530802))

(assert (= (and b!530802 res!326658) b!530806))

(assert (= (and b!530806 res!326663) b!530801))

(assert (= (and b!530801 res!326657) b!530803))

(assert (= (and b!530803 res!326660) b!530807))

(assert (= (and b!530807 res!326661) b!530805))

(assert (= (and b!530805 res!326662) b!530804))

(declare-fun m!511355 () Bool)

(assert (=> b!530805 m!511355))

(declare-fun m!511357 () Bool)

(assert (=> b!530801 m!511357))

(declare-fun m!511359 () Bool)

(assert (=> b!530806 m!511359))

(assert (=> b!530806 m!511359))

(declare-fun m!511361 () Bool)

(assert (=> b!530806 m!511361))

(declare-fun m!511363 () Bool)

(assert (=> b!530807 m!511363))

(declare-fun m!511365 () Bool)

(assert (=> b!530803 m!511365))

(declare-fun m!511367 () Bool)

(assert (=> start!48252 m!511367))

(declare-fun m!511369 () Bool)

(assert (=> start!48252 m!511369))

(check-sat (not b!530803) (not start!48252) (not b!530801) (not b!530807) (not b!530806) (not b!530805))
(check-sat)
(get-model)

(declare-fun b!530853 () Bool)

(declare-fun e!309209 () SeekEntryResult!4624)

(declare-fun lt!244807 () SeekEntryResult!4624)

(assert (=> b!530853 (= e!309209 (Found!4624 (index!20722 lt!244807)))))

(declare-fun b!530854 () Bool)

(declare-fun e!309210 () SeekEntryResult!4624)

(assert (=> b!530854 (= e!309210 Undefined!4624)))

(declare-fun b!530855 () Bool)

(assert (=> b!530855 (= e!309210 e!309209)))

(declare-fun lt!244806 () (_ BitVec 64))

(assert (=> b!530855 (= lt!244806 (select (arr!16159 a!3154) (index!20722 lt!244807)))))

(declare-fun c!62389 () Bool)

(assert (=> b!530855 (= c!62389 (= lt!244806 k0!1998))))

(declare-fun b!530856 () Bool)

(declare-fun c!62390 () Bool)

(assert (=> b!530856 (= c!62390 (= lt!244806 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!309211 () SeekEntryResult!4624)

(assert (=> b!530856 (= e!309209 e!309211)))

(declare-fun d!81049 () Bool)

(declare-fun lt!244808 () SeekEntryResult!4624)

(get-info :version)

(assert (=> d!81049 (and (or ((_ is Undefined!4624) lt!244808) (not ((_ is Found!4624) lt!244808)) (and (bvsge (index!20721 lt!244808) #b00000000000000000000000000000000) (bvslt (index!20721 lt!244808) (size!16523 a!3154)))) (or ((_ is Undefined!4624) lt!244808) ((_ is Found!4624) lt!244808) (not ((_ is MissingZero!4624) lt!244808)) (and (bvsge (index!20720 lt!244808) #b00000000000000000000000000000000) (bvslt (index!20720 lt!244808) (size!16523 a!3154)))) (or ((_ is Undefined!4624) lt!244808) ((_ is Found!4624) lt!244808) ((_ is MissingZero!4624) lt!244808) (not ((_ is MissingVacant!4624) lt!244808)) (and (bvsge (index!20723 lt!244808) #b00000000000000000000000000000000) (bvslt (index!20723 lt!244808) (size!16523 a!3154)))) (or ((_ is Undefined!4624) lt!244808) (ite ((_ is Found!4624) lt!244808) (= (select (arr!16159 a!3154) (index!20721 lt!244808)) k0!1998) (ite ((_ is MissingZero!4624) lt!244808) (= (select (arr!16159 a!3154) (index!20720 lt!244808)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4624) lt!244808) (= (select (arr!16159 a!3154) (index!20723 lt!244808)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81049 (= lt!244808 e!309210)))

(declare-fun c!62388 () Bool)

(assert (=> d!81049 (= c!62388 (and ((_ is Intermediate!4624) lt!244807) (undefined!5436 lt!244807)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33633 (_ BitVec 32)) SeekEntryResult!4624)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81049 (= lt!244807 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!81049 (validMask!0 mask!3216)))

(assert (=> d!81049 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!244808)))

(declare-fun b!530857 () Bool)

(assert (=> b!530857 (= e!309211 (MissingZero!4624 (index!20722 lt!244807)))))

(declare-fun b!530858 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33633 (_ BitVec 32)) SeekEntryResult!4624)

(assert (=> b!530858 (= e!309211 (seekKeyOrZeroReturnVacant!0 (x!49729 lt!244807) (index!20722 lt!244807) (index!20722 lt!244807) k0!1998 a!3154 mask!3216))))

(assert (= (and d!81049 c!62388) b!530854))

(assert (= (and d!81049 (not c!62388)) b!530855))

(assert (= (and b!530855 c!62389) b!530853))

(assert (= (and b!530855 (not c!62389)) b!530856))

(assert (= (and b!530856 c!62390) b!530857))

(assert (= (and b!530856 (not c!62390)) b!530858))

(declare-fun m!511395 () Bool)

(assert (=> b!530855 m!511395))

(declare-fun m!511397 () Bool)

(assert (=> d!81049 m!511397))

(declare-fun m!511399 () Bool)

(assert (=> d!81049 m!511399))

(declare-fun m!511401 () Bool)

(assert (=> d!81049 m!511401))

(declare-fun m!511403 () Bool)

(assert (=> d!81049 m!511403))

(declare-fun m!511405 () Bool)

(assert (=> d!81049 m!511405))

(assert (=> d!81049 m!511397))

(assert (=> d!81049 m!511367))

(declare-fun m!511407 () Bool)

(assert (=> b!530858 m!511407))

(assert (=> b!530807 d!81049))

(declare-fun d!81061 () Bool)

(assert (=> d!81061 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530801 d!81061))

(declare-fun d!81063 () Bool)

(assert (=> d!81063 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48252 d!81063))

(declare-fun d!81067 () Bool)

(assert (=> d!81067 (= (array_inv!11933 a!3154) (bvsge (size!16523 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48252 d!81067))

(declare-fun d!81069 () Bool)

(declare-fun res!326701 () Bool)

(declare-fun e!309225 () Bool)

(assert (=> d!81069 (=> res!326701 e!309225)))

(assert (=> d!81069 (= res!326701 (= (select (arr!16159 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!81069 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!309225)))

(declare-fun b!530881 () Bool)

(declare-fun e!309226 () Bool)

(assert (=> b!530881 (= e!309225 e!309226)))

(declare-fun res!326702 () Bool)

(assert (=> b!530881 (=> (not res!326702) (not e!309226))))

(assert (=> b!530881 (= res!326702 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16523 a!3154)))))

(declare-fun b!530882 () Bool)

(assert (=> b!530882 (= e!309226 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81069 (not res!326701)) b!530881))

(assert (= (and b!530881 res!326702) b!530882))

(declare-fun m!511423 () Bool)

(assert (=> d!81069 m!511423))

(declare-fun m!511425 () Bool)

(assert (=> b!530882 m!511425))

(assert (=> b!530803 d!81069))

(declare-fun d!81071 () Bool)

(assert (=> d!81071 (= (validKeyInArray!0 (select (arr!16159 a!3154) j!147)) (and (not (= (select (arr!16159 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16159 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530806 d!81071))

(declare-fun b!530909 () Bool)

(declare-fun e!309243 () Bool)

(declare-fun call!31934 () Bool)

(assert (=> b!530909 (= e!309243 call!31934)))

(declare-fun b!530910 () Bool)

(declare-fun e!309242 () Bool)

(assert (=> b!530910 (= e!309242 call!31934)))

(declare-fun b!530911 () Bool)

(assert (=> b!530911 (= e!309243 e!309242)))

(declare-fun lt!244835 () (_ BitVec 64))

(assert (=> b!530911 (= lt!244835 (select (arr!16159 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16796 0))(
  ( (Unit!16797) )
))
(declare-fun lt!244833 () Unit!16796)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33633 (_ BitVec 64) (_ BitVec 32)) Unit!16796)

(assert (=> b!530911 (= lt!244833 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!244835 #b00000000000000000000000000000000))))

(assert (=> b!530911 (arrayContainsKey!0 a!3154 lt!244835 #b00000000000000000000000000000000)))

(declare-fun lt!244834 () Unit!16796)

(assert (=> b!530911 (= lt!244834 lt!244833)))

(declare-fun res!326707 () Bool)

(assert (=> b!530911 (= res!326707 (= (seekEntryOrOpen!0 (select (arr!16159 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4624 #b00000000000000000000000000000000)))))

(assert (=> b!530911 (=> (not res!326707) (not e!309242))))

(declare-fun d!81073 () Bool)

(declare-fun res!326708 () Bool)

(declare-fun e!309244 () Bool)

(assert (=> d!81073 (=> res!326708 e!309244)))

(assert (=> d!81073 (= res!326708 (bvsge #b00000000000000000000000000000000 (size!16523 a!3154)))))

(assert (=> d!81073 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!309244)))

(declare-fun bm!31931 () Bool)

(assert (=> bm!31931 (= call!31934 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!530912 () Bool)

(assert (=> b!530912 (= e!309244 e!309243)))

(declare-fun c!62411 () Bool)

(assert (=> b!530912 (= c!62411 (validKeyInArray!0 (select (arr!16159 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81073 (not res!326708)) b!530912))

(assert (= (and b!530912 c!62411) b!530911))

(assert (= (and b!530912 (not c!62411)) b!530909))

(assert (= (and b!530911 res!326707) b!530910))

(assert (= (or b!530910 b!530909) bm!31931))

(assert (=> b!530911 m!511423))

(declare-fun m!511441 () Bool)

(assert (=> b!530911 m!511441))

(declare-fun m!511443 () Bool)

(assert (=> b!530911 m!511443))

(assert (=> b!530911 m!511423))

(declare-fun m!511445 () Bool)

(assert (=> b!530911 m!511445))

(declare-fun m!511447 () Bool)

(assert (=> bm!31931 m!511447))

(assert (=> b!530912 m!511423))

(assert (=> b!530912 m!511423))

(declare-fun m!511449 () Bool)

(assert (=> b!530912 m!511449))

(assert (=> b!530805 d!81073))

(check-sat (not b!530912) (not d!81049) (not bm!31931) (not b!530882) (not b!530911) (not b!530858))
(check-sat)
