; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86852 () Bool)

(assert start!86852)

(declare-fun b!1006693 () Bool)

(declare-fun res!675941 () Bool)

(declare-fun e!566628 () Bool)

(assert (=> b!1006693 (=> (not res!675941) (not e!566628))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9502 0))(
  ( (MissingZero!9502 (index!40378 (_ BitVec 32))) (Found!9502 (index!40379 (_ BitVec 32))) (Intermediate!9502 (undefined!10314 Bool) (index!40380 (_ BitVec 32)) (x!87799 (_ BitVec 32))) (Undefined!9502) (MissingVacant!9502 (index!40381 (_ BitVec 32))) )
))
(declare-fun lt!444883 () SeekEntryResult!9502)

(declare-datatypes ((array!63503 0))(
  ( (array!63504 (arr!30570 (Array (_ BitVec 32) (_ BitVec 64))) (size!31073 (_ BitVec 32))) )
))
(declare-fun lt!444882 () array!63503)

(declare-fun lt!444884 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63503 (_ BitVec 32)) SeekEntryResult!9502)

(assert (=> b!1006693 (= res!675941 (not (= lt!444883 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444884 lt!444882 mask!3464))))))

(declare-fun b!1006694 () Bool)

(declare-fun res!675938 () Bool)

(declare-fun e!566630 () Bool)

(assert (=> b!1006694 (=> (not res!675938) (not e!566630))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006694 (= res!675938 (validKeyInArray!0 k!2224))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun b!1006695 () Bool)

(assert (=> b!1006695 (= e!566628 (and (= index!1507 resIndex!38) (= x!1245 resX!38) (not (= resIndex!38 i!1194))))))

(declare-fun b!1006697 () Bool)

(declare-fun e!566626 () Bool)

(assert (=> b!1006697 (= e!566630 e!566626)))

(declare-fun res!675947 () Bool)

(assert (=> b!1006697 (=> (not res!675947) (not e!566626))))

(declare-fun lt!444885 () SeekEntryResult!9502)

(assert (=> b!1006697 (= res!675947 (or (= lt!444885 (MissingVacant!9502 i!1194)) (= lt!444885 (MissingZero!9502 i!1194))))))

(declare-fun a!3219 () array!63503)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63503 (_ BitVec 32)) SeekEntryResult!9502)

(assert (=> b!1006697 (= lt!444885 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006698 () Bool)

(declare-fun res!675942 () Bool)

(assert (=> b!1006698 (=> (not res!675942) (not e!566630))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1006698 (= res!675942 (and (= (size!31073 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31073 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31073 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006699 () Bool)

(declare-fun res!675945 () Bool)

(assert (=> b!1006699 (=> (not res!675945) (not e!566626))))

(declare-datatypes ((List!21372 0))(
  ( (Nil!21369) (Cons!21368 (h!22551 (_ BitVec 64)) (t!30381 List!21372)) )
))
(declare-fun arrayNoDuplicates!0 (array!63503 (_ BitVec 32) List!21372) Bool)

(assert (=> b!1006699 (= res!675945 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21369))))

(declare-fun b!1006700 () Bool)

(declare-fun e!566629 () Bool)

(assert (=> b!1006700 (= e!566629 e!566628)))

(declare-fun res!675944 () Bool)

(assert (=> b!1006700 (=> (not res!675944) (not e!566628))))

(declare-fun lt!444880 () SeekEntryResult!9502)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006700 (= res!675944 (not (= lt!444880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444884 mask!3464) lt!444884 lt!444882 mask!3464))))))

(assert (=> b!1006700 (= lt!444884 (select (store (arr!30570 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1006700 (= lt!444882 (array!63504 (store (arr!30570 a!3219) i!1194 k!2224) (size!31073 a!3219)))))

(declare-fun b!1006701 () Bool)

(declare-fun res!675948 () Bool)

(assert (=> b!1006701 (=> (not res!675948) (not e!566626))))

(assert (=> b!1006701 (= res!675948 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31073 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31073 a!3219))))))

(declare-fun b!1006702 () Bool)

(declare-fun e!566625 () Bool)

(assert (=> b!1006702 (= e!566625 e!566629)))

(declare-fun res!675949 () Bool)

(assert (=> b!1006702 (=> (not res!675949) (not e!566629))))

(declare-fun lt!444881 () SeekEntryResult!9502)

(assert (=> b!1006702 (= res!675949 (= lt!444883 lt!444881))))

(assert (=> b!1006702 (= lt!444883 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30570 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006703 () Bool)

(declare-fun res!675940 () Bool)

(assert (=> b!1006703 (=> (not res!675940) (not e!566630))))

(assert (=> b!1006703 (= res!675940 (validKeyInArray!0 (select (arr!30570 a!3219) j!170)))))

(declare-fun b!1006704 () Bool)

(declare-fun res!675946 () Bool)

(assert (=> b!1006704 (=> (not res!675946) (not e!566626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63503 (_ BitVec 32)) Bool)

(assert (=> b!1006704 (= res!675946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006705 () Bool)

(assert (=> b!1006705 (= e!566626 e!566625)))

(declare-fun res!675939 () Bool)

(assert (=> b!1006705 (=> (not res!675939) (not e!566625))))

(assert (=> b!1006705 (= res!675939 (= lt!444880 lt!444881))))

(assert (=> b!1006705 (= lt!444881 (Intermediate!9502 false resIndex!38 resX!38))))

(assert (=> b!1006705 (= lt!444880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30570 a!3219) j!170) mask!3464) (select (arr!30570 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006696 () Bool)

(declare-fun res!675937 () Bool)

(assert (=> b!1006696 (=> (not res!675937) (not e!566630))))

(declare-fun arrayContainsKey!0 (array!63503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006696 (= res!675937 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!675943 () Bool)

(assert (=> start!86852 (=> (not res!675943) (not e!566630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86852 (= res!675943 (validMask!0 mask!3464))))

(assert (=> start!86852 e!566630))

(declare-fun array_inv!23560 (array!63503) Bool)

(assert (=> start!86852 (array_inv!23560 a!3219)))

(assert (=> start!86852 true))

(assert (= (and start!86852 res!675943) b!1006698))

(assert (= (and b!1006698 res!675942) b!1006703))

(assert (= (and b!1006703 res!675940) b!1006694))

(assert (= (and b!1006694 res!675938) b!1006696))

(assert (= (and b!1006696 res!675937) b!1006697))

(assert (= (and b!1006697 res!675947) b!1006704))

(assert (= (and b!1006704 res!675946) b!1006699))

(assert (= (and b!1006699 res!675945) b!1006701))

(assert (= (and b!1006701 res!675948) b!1006705))

(assert (= (and b!1006705 res!675939) b!1006702))

(assert (= (and b!1006702 res!675949) b!1006700))

(assert (= (and b!1006700 res!675944) b!1006693))

(assert (= (and b!1006693 res!675941) b!1006695))

(declare-fun m!931871 () Bool)

(assert (=> b!1006702 m!931871))

(assert (=> b!1006702 m!931871))

(declare-fun m!931873 () Bool)

(assert (=> b!1006702 m!931873))

(declare-fun m!931875 () Bool)

(assert (=> b!1006700 m!931875))

(assert (=> b!1006700 m!931875))

(declare-fun m!931877 () Bool)

(assert (=> b!1006700 m!931877))

(declare-fun m!931879 () Bool)

(assert (=> b!1006700 m!931879))

(declare-fun m!931881 () Bool)

(assert (=> b!1006700 m!931881))

(declare-fun m!931883 () Bool)

(assert (=> b!1006693 m!931883))

(declare-fun m!931885 () Bool)

(assert (=> b!1006699 m!931885))

(assert (=> b!1006705 m!931871))

(assert (=> b!1006705 m!931871))

(declare-fun m!931887 () Bool)

(assert (=> b!1006705 m!931887))

(assert (=> b!1006705 m!931887))

(assert (=> b!1006705 m!931871))

(declare-fun m!931889 () Bool)

(assert (=> b!1006705 m!931889))

(assert (=> b!1006703 m!931871))

(assert (=> b!1006703 m!931871))

(declare-fun m!931891 () Bool)

(assert (=> b!1006703 m!931891))

(declare-fun m!931893 () Bool)

(assert (=> b!1006704 m!931893))

(declare-fun m!931895 () Bool)

(assert (=> b!1006694 m!931895))

(declare-fun m!931897 () Bool)

(assert (=> b!1006696 m!931897))

(declare-fun m!931899 () Bool)

(assert (=> b!1006697 m!931899))

(declare-fun m!931901 () Bool)

(assert (=> start!86852 m!931901))

(declare-fun m!931903 () Bool)

(assert (=> start!86852 m!931903))

(push 1)

(assert (not start!86852))

(assert (not b!1006705))

(assert (not b!1006703))

(assert (not b!1006699))

(assert (not b!1006693))

(assert (not b!1006694))

(assert (not b!1006696))

(assert (not b!1006700))

(assert (not b!1006697))

(assert (not b!1006702))

(assert (not b!1006704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1006829 () Bool)

(declare-fun e!566710 () SeekEntryResult!9502)

(assert (=> b!1006829 (= e!566710 (Intermediate!9502 true (toIndex!0 lt!444884 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1006830 () Bool)

(declare-fun lt!444922 () SeekEntryResult!9502)

(assert (=> b!1006830 (and (bvsge (index!40380 lt!444922) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444922) (size!31073 lt!444882)))))

(declare-fun res!676002 () Bool)

(assert (=> b!1006830 (= res!676002 (= (select (arr!30570 lt!444882) (index!40380 lt!444922)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566708 () Bool)

(assert (=> b!1006830 (=> res!676002 e!566708)))

(declare-fun b!1006831 () Bool)

(declare-fun e!566709 () Bool)

(declare-fun e!566711 () Bool)

(assert (=> b!1006831 (= e!566709 e!566711)))

(declare-fun res!676003 () Bool)

(assert (=> b!1006831 (= res!676003 (and (is-Intermediate!9502 lt!444922) (not (undefined!10314 lt!444922)) (bvslt (x!87799 lt!444922) #b01111111111111111111111111111110) (bvsge (x!87799 lt!444922) #b00000000000000000000000000000000) (bvsge (x!87799 lt!444922) #b00000000000000000000000000000000)))))

(assert (=> b!1006831 (=> (not res!676003) (not e!566711))))

(declare-fun b!1006832 () Bool)

(assert (=> b!1006832 (= e!566709 (bvsge (x!87799 lt!444922) #b01111111111111111111111111111110))))

(declare-fun b!1006833 () Bool)

(assert (=> b!1006833 (and (bvsge (index!40380 lt!444922) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444922) (size!31073 lt!444882)))))

(declare-fun res!676004 () Bool)

(assert (=> b!1006833 (= res!676004 (= (select (arr!30570 lt!444882) (index!40380 lt!444922)) lt!444884))))

(assert (=> b!1006833 (=> res!676004 e!566708)))

(assert (=> b!1006833 (= e!566711 e!566708)))

(declare-fun b!1006834 () Bool)

(assert (=> b!1006834 (and (bvsge (index!40380 lt!444922) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444922) (size!31073 lt!444882)))))

(assert (=> b!1006834 (= e!566708 (= (select (arr!30570 lt!444882) (index!40380 lt!444922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1006835 () Bool)

(declare-fun e!566712 () SeekEntryResult!9502)

(assert (=> b!1006835 (= e!566712 (Intermediate!9502 false (toIndex!0 lt!444884 mask!3464) #b00000000000000000000000000000000))))

(declare-fun d!119559 () Bool)

(assert (=> d!119559 e!566709))

(declare-fun c!101567 () Bool)

(assert (=> d!119559 (= c!101567 (and (is-Intermediate!9502 lt!444922) (undefined!10314 lt!444922)))))

(assert (=> d!119559 (= lt!444922 e!566710)))

(declare-fun c!101566 () Bool)

(assert (=> d!119559 (= c!101566 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!444921 () (_ BitVec 64))

(assert (=> d!119559 (= lt!444921 (select (arr!30570 lt!444882) (toIndex!0 lt!444884 mask!3464)))))

(assert (=> d!119559 (validMask!0 mask!3464)))

(assert (=> d!119559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444884 mask!3464) lt!444884 lt!444882 mask!3464) lt!444922)))

(declare-fun b!1006836 () Bool)

(assert (=> b!1006836 (= e!566710 e!566712)))

(declare-fun c!101568 () Bool)

(assert (=> b!1006836 (= c!101568 (or (= lt!444921 lt!444884) (= (bvadd lt!444921 lt!444921) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006837 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006837 (= e!566712 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!444884 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!444884 lt!444882 mask!3464))))

(assert (= (and d!119559 c!101566) b!1006829))

(assert (= (and d!119559 (not c!101566)) b!1006836))

(assert (= (and b!1006836 c!101568) b!1006835))

(assert (= (and b!1006836 (not c!101568)) b!1006837))

(assert (= (and d!119559 c!101567) b!1006832))

(assert (= (and d!119559 (not c!101567)) b!1006831))

(assert (= (and b!1006831 res!676003) b!1006833))

(assert (= (and b!1006833 (not res!676004)) b!1006830))

(assert (= (and b!1006830 (not res!676002)) b!1006834))

(assert (=> d!119559 m!931875))

(declare-fun m!931953 () Bool)

(assert (=> d!119559 m!931953))

(assert (=> d!119559 m!931901))

(declare-fun m!931955 () Bool)

(assert (=> b!1006830 m!931955))

(assert (=> b!1006834 m!931955))

(assert (=> b!1006837 m!931875))

(declare-fun m!931957 () Bool)

(assert (=> b!1006837 m!931957))

(assert (=> b!1006837 m!931957))

(declare-fun m!931959 () Bool)

(assert (=> b!1006837 m!931959))

(assert (=> b!1006833 m!931955))

(assert (=> b!1006700 d!119559))

(declare-fun d!119575 () Bool)

(declare-fun lt!444928 () (_ BitVec 32))

(declare-fun lt!444927 () (_ BitVec 32))

(assert (=> d!119575 (= lt!444928 (bvmul (bvxor lt!444927 (bvlshr lt!444927 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119575 (= lt!444927 ((_ extract 31 0) (bvand (bvxor lt!444884 (bvlshr lt!444884 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119575 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!676005 (let ((h!22553 ((_ extract 31 0) (bvand (bvxor lt!444884 (bvlshr lt!444884 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87804 (bvmul (bvxor h!22553 (bvlshr h!22553 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87804 (bvlshr x!87804 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!676005 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!676005 #b00000000000000000000000000000000))))))

(assert (=> d!119575 (= (toIndex!0 lt!444884 mask!3464) (bvand (bvxor lt!444928 (bvlshr lt!444928 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1006700 d!119575))

(declare-fun b!1006860 () Bool)

(declare-fun e!566728 () Bool)

(declare-fun e!566730 () Bool)

(assert (=> b!1006860 (= e!566728 e!566730)))

(declare-fun res!676014 () Bool)

(assert (=> b!1006860 (=> (not res!676014) (not e!566730))))

(declare-fun e!566729 () Bool)

(assert (=> b!1006860 (= res!676014 (not e!566729))))

(declare-fun res!676012 () Bool)

(assert (=> b!1006860 (=> (not res!676012) (not e!566729))))

(assert (=> b!1006860 (= res!676012 (validKeyInArray!0 (select (arr!30570 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1006861 () Bool)

(declare-fun contains!5895 (List!21372 (_ BitVec 64)) Bool)

(assert (=> b!1006861 (= e!566729 (contains!5895 Nil!21369 (select (arr!30570 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119577 () Bool)

(declare-fun res!676013 () Bool)

(assert (=> d!119577 (=> res!676013 e!566728)))

(assert (=> d!119577 (= res!676013 (bvsge #b00000000000000000000000000000000 (size!31073 a!3219)))))

(assert (=> d!119577 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21369) e!566728)))

(declare-fun b!1006862 () Bool)

(declare-fun e!566727 () Bool)

(declare-fun call!42358 () Bool)

(assert (=> b!1006862 (= e!566727 call!42358)))

(declare-fun bm!42355 () Bool)

(declare-fun c!101577 () Bool)

(assert (=> bm!42355 (= call!42358 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101577 (Cons!21368 (select (arr!30570 a!3219) #b00000000000000000000000000000000) Nil!21369) Nil!21369)))))

(declare-fun b!1006863 () Bool)

(assert (=> b!1006863 (= e!566727 call!42358)))

(declare-fun b!1006864 () Bool)

(assert (=> b!1006864 (= e!566730 e!566727)))

(assert (=> b!1006864 (= c!101577 (validKeyInArray!0 (select (arr!30570 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119577 (not res!676013)) b!1006860))

(assert (= (and b!1006860 res!676012) b!1006861))

(assert (= (and b!1006860 res!676014) b!1006864))

(assert (= (and b!1006864 c!101577) b!1006863))

(assert (= (and b!1006864 (not c!101577)) b!1006862))

(assert (= (or b!1006863 b!1006862) bm!42355))

(declare-fun m!931961 () Bool)

(assert (=> b!1006860 m!931961))

(assert (=> b!1006860 m!931961))

(declare-fun m!931963 () Bool)

(assert (=> b!1006860 m!931963))

(assert (=> b!1006861 m!931961))

(assert (=> b!1006861 m!931961))

(declare-fun m!931965 () Bool)

(assert (=> b!1006861 m!931965))

(assert (=> bm!42355 m!931961))

(declare-fun m!931967 () Bool)

(assert (=> bm!42355 m!931967))

(assert (=> b!1006864 m!931961))

(assert (=> b!1006864 m!931961))

(assert (=> b!1006864 m!931963))

(assert (=> b!1006699 d!119577))

(declare-fun d!119579 () Bool)

(assert (=> d!119579 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86852 d!119579))

(declare-fun d!119585 () Bool)

(assert (=> d!119585 (= (array_inv!23560 a!3219) (bvsge (size!31073 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86852 d!119585))

(declare-fun b!1006895 () Bool)

(declare-fun e!566751 () SeekEntryResult!9502)

(assert (=> b!1006895 (= e!566751 (Intermediate!9502 true index!1507 x!1245))))

(declare-fun b!1006896 () Bool)

(declare-fun lt!444948 () SeekEntryResult!9502)

(assert (=> b!1006896 (and (bvsge (index!40380 lt!444948) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444948) (size!31073 a!3219)))))

(declare-fun res!676021 () Bool)

(assert (=> b!1006896 (= res!676021 (= (select (arr!30570 a!3219) (index!40380 lt!444948)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566749 () Bool)

(assert (=> b!1006896 (=> res!676021 e!566749)))

(declare-fun b!1006897 () Bool)

(declare-fun e!566750 () Bool)

(declare-fun e!566752 () Bool)

(assert (=> b!1006897 (= e!566750 e!566752)))

(declare-fun res!676022 () Bool)

(assert (=> b!1006897 (= res!676022 (and (is-Intermediate!9502 lt!444948) (not (undefined!10314 lt!444948)) (bvslt (x!87799 lt!444948) #b01111111111111111111111111111110) (bvsge (x!87799 lt!444948) #b00000000000000000000000000000000) (bvsge (x!87799 lt!444948) x!1245)))))

(assert (=> b!1006897 (=> (not res!676022) (not e!566752))))

(declare-fun b!1006898 () Bool)

(assert (=> b!1006898 (= e!566750 (bvsge (x!87799 lt!444948) #b01111111111111111111111111111110))))

(declare-fun b!1006899 () Bool)

(assert (=> b!1006899 (and (bvsge (index!40380 lt!444948) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444948) (size!31073 a!3219)))))

(declare-fun res!676023 () Bool)

(assert (=> b!1006899 (= res!676023 (= (select (arr!30570 a!3219) (index!40380 lt!444948)) (select (arr!30570 a!3219) j!170)))))

(assert (=> b!1006899 (=> res!676023 e!566749)))

(assert (=> b!1006899 (= e!566752 e!566749)))

(declare-fun b!1006900 () Bool)

(assert (=> b!1006900 (and (bvsge (index!40380 lt!444948) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444948) (size!31073 a!3219)))))

(assert (=> b!1006900 (= e!566749 (= (select (arr!30570 a!3219) (index!40380 lt!444948)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1006901 () Bool)

(declare-fun e!566753 () SeekEntryResult!9502)

(assert (=> b!1006901 (= e!566753 (Intermediate!9502 false index!1507 x!1245))))

(declare-fun d!119587 () Bool)

(assert (=> d!119587 e!566750))

(declare-fun c!101591 () Bool)

(assert (=> d!119587 (= c!101591 (and (is-Intermediate!9502 lt!444948) (undefined!10314 lt!444948)))))

(assert (=> d!119587 (= lt!444948 e!566751)))

(declare-fun c!101590 () Bool)

(assert (=> d!119587 (= c!101590 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!444947 () (_ BitVec 64))

(assert (=> d!119587 (= lt!444947 (select (arr!30570 a!3219) index!1507))))

(assert (=> d!119587 (validMask!0 mask!3464)))

(assert (=> d!119587 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30570 a!3219) j!170) a!3219 mask!3464) lt!444948)))

(declare-fun b!1006902 () Bool)

(assert (=> b!1006902 (= e!566751 e!566753)))

(declare-fun c!101592 () Bool)

(assert (=> b!1006902 (= c!101592 (or (= lt!444947 (select (arr!30570 a!3219) j!170)) (= (bvadd lt!444947 lt!444947) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006903 () Bool)

(assert (=> b!1006903 (= e!566753 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30570 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and d!119587 c!101590) b!1006895))

(assert (= (and d!119587 (not c!101590)) b!1006902))

(assert (= (and b!1006902 c!101592) b!1006901))

(assert (= (and b!1006902 (not c!101592)) b!1006903))

(assert (= (and d!119587 c!101591) b!1006898))

(assert (= (and d!119587 (not c!101591)) b!1006897))

(assert (= (and b!1006897 res!676022) b!1006899))

(assert (= (and b!1006899 (not res!676023)) b!1006896))

(assert (= (and b!1006896 (not res!676021)) b!1006900))

(declare-fun m!932001 () Bool)

(assert (=> d!119587 m!932001))

(assert (=> d!119587 m!931901))

(declare-fun m!932003 () Bool)

(assert (=> b!1006896 m!932003))

(assert (=> b!1006900 m!932003))

(declare-fun m!932005 () Bool)

(assert (=> b!1006903 m!932005))

(assert (=> b!1006903 m!932005))

(assert (=> b!1006903 m!931871))

(declare-fun m!932007 () Bool)

(assert (=> b!1006903 m!932007))

(assert (=> b!1006899 m!932003))

(assert (=> b!1006702 d!119587))

(declare-fun b!1006904 () Bool)

(declare-fun e!566756 () SeekEntryResult!9502)

(assert (=> b!1006904 (= e!566756 (Intermediate!9502 true (toIndex!0 (select (arr!30570 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1006905 () Bool)

(declare-fun lt!444950 () SeekEntryResult!9502)

(assert (=> b!1006905 (and (bvsge (index!40380 lt!444950) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444950) (size!31073 a!3219)))))

(declare-fun res!676024 () Bool)

(assert (=> b!1006905 (= res!676024 (= (select (arr!30570 a!3219) (index!40380 lt!444950)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566754 () Bool)

(assert (=> b!1006905 (=> res!676024 e!566754)))

(declare-fun b!1006906 () Bool)

(declare-fun e!566755 () Bool)

(declare-fun e!566757 () Bool)

(assert (=> b!1006906 (= e!566755 e!566757)))

(declare-fun res!676025 () Bool)

(assert (=> b!1006906 (= res!676025 (and (is-Intermediate!9502 lt!444950) (not (undefined!10314 lt!444950)) (bvslt (x!87799 lt!444950) #b01111111111111111111111111111110) (bvsge (x!87799 lt!444950) #b00000000000000000000000000000000) (bvsge (x!87799 lt!444950) #b00000000000000000000000000000000)))))

(assert (=> b!1006906 (=> (not res!676025) (not e!566757))))

(declare-fun b!1006907 () Bool)

(assert (=> b!1006907 (= e!566755 (bvsge (x!87799 lt!444950) #b01111111111111111111111111111110))))

(declare-fun b!1006908 () Bool)

(assert (=> b!1006908 (and (bvsge (index!40380 lt!444950) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444950) (size!31073 a!3219)))))

(declare-fun res!676026 () Bool)

(assert (=> b!1006908 (= res!676026 (= (select (arr!30570 a!3219) (index!40380 lt!444950)) (select (arr!30570 a!3219) j!170)))))

(assert (=> b!1006908 (=> res!676026 e!566754)))

(assert (=> b!1006908 (= e!566757 e!566754)))

(declare-fun b!1006909 () Bool)

(assert (=> b!1006909 (and (bvsge (index!40380 lt!444950) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444950) (size!31073 a!3219)))))

(assert (=> b!1006909 (= e!566754 (= (select (arr!30570 a!3219) (index!40380 lt!444950)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1006910 () Bool)

(declare-fun e!566758 () SeekEntryResult!9502)

(assert (=> b!1006910 (= e!566758 (Intermediate!9502 false (toIndex!0 (select (arr!30570 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun d!119591 () Bool)

(assert (=> d!119591 e!566755))

(declare-fun c!101594 () Bool)

(assert (=> d!119591 (= c!101594 (and (is-Intermediate!9502 lt!444950) (undefined!10314 lt!444950)))))

(assert (=> d!119591 (= lt!444950 e!566756)))

(declare-fun c!101593 () Bool)

(assert (=> d!119591 (= c!101593 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!444949 () (_ BitVec 64))

(assert (=> d!119591 (= lt!444949 (select (arr!30570 a!3219) (toIndex!0 (select (arr!30570 a!3219) j!170) mask!3464)))))

(assert (=> d!119591 (validMask!0 mask!3464)))

(assert (=> d!119591 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30570 a!3219) j!170) mask!3464) (select (arr!30570 a!3219) j!170) a!3219 mask!3464) lt!444950)))

(declare-fun b!1006911 () Bool)

(assert (=> b!1006911 (= e!566756 e!566758)))

(declare-fun c!101595 () Bool)

(assert (=> b!1006911 (= c!101595 (or (= lt!444949 (select (arr!30570 a!3219) j!170)) (= (bvadd lt!444949 lt!444949) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006912 () Bool)

(assert (=> b!1006912 (= e!566758 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30570 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30570 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and d!119591 c!101593) b!1006904))

(assert (= (and d!119591 (not c!101593)) b!1006911))

(assert (= (and b!1006911 c!101595) b!1006910))

(assert (= (and b!1006911 (not c!101595)) b!1006912))

(assert (= (and d!119591 c!101594) b!1006907))

(assert (= (and d!119591 (not c!101594)) b!1006906))

(assert (= (and b!1006906 res!676025) b!1006908))

(assert (= (and b!1006908 (not res!676026)) b!1006905))

(assert (= (and b!1006905 (not res!676024)) b!1006909))

(assert (=> d!119591 m!931887))

(declare-fun m!932009 () Bool)

(assert (=> d!119591 m!932009))

(assert (=> d!119591 m!931901))

(declare-fun m!932011 () Bool)

(assert (=> b!1006905 m!932011))

(assert (=> b!1006909 m!932011))

(assert (=> b!1006912 m!931887))

(declare-fun m!932013 () Bool)

(assert (=> b!1006912 m!932013))

(assert (=> b!1006912 m!932013))

(assert (=> b!1006912 m!931871))

(declare-fun m!932015 () Bool)

(assert (=> b!1006912 m!932015))

(assert (=> b!1006908 m!932011))

(assert (=> b!1006705 d!119591))

(declare-fun d!119593 () Bool)

(declare-fun lt!444952 () (_ BitVec 32))

(declare-fun lt!444951 () (_ BitVec 32))

(assert (=> d!119593 (= lt!444952 (bvmul (bvxor lt!444951 (bvlshr lt!444951 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119593 (= lt!444951 ((_ extract 31 0) (bvand (bvxor (select (arr!30570 a!3219) j!170) (bvlshr (select (arr!30570 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119593 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!676005 (let ((h!22553 ((_ extract 31 0) (bvand (bvxor (select (arr!30570 a!3219) j!170) (bvlshr (select (arr!30570 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87804 (bvmul (bvxor h!22553 (bvlshr h!22553 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87804 (bvlshr x!87804 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!676005 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!676005 #b00000000000000000000000000000000))))))

(assert (=> d!119593 (= (toIndex!0 (select (arr!30570 a!3219) j!170) mask!3464) (bvand (bvxor lt!444952 (bvlshr lt!444952 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1006705 d!119593))

(declare-fun d!119595 () Bool)

(assert (=> d!119595 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1006694 d!119595))

(declare-fun b!1006923 () Bool)

(declare-fun e!566769 () SeekEntryResult!9502)

(assert (=> b!1006923 (= e!566769 (Intermediate!9502 true index!1507 x!1245))))

(declare-fun b!1006924 () Bool)

(declare-fun lt!444954 () SeekEntryResult!9502)

(assert (=> b!1006924 (and (bvsge (index!40380 lt!444954) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444954) (size!31073 lt!444882)))))

(declare-fun res!676033 () Bool)

(assert (=> b!1006924 (= res!676033 (= (select (arr!30570 lt!444882) (index!40380 lt!444954)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566767 () Bool)

(assert (=> b!1006924 (=> res!676033 e!566767)))

(declare-fun b!1006925 () Bool)

(declare-fun e!566768 () Bool)

(declare-fun e!566770 () Bool)

(assert (=> b!1006925 (= e!566768 e!566770)))

(declare-fun res!676034 () Bool)

(assert (=> b!1006925 (= res!676034 (and (is-Intermediate!9502 lt!444954) (not (undefined!10314 lt!444954)) (bvslt (x!87799 lt!444954) #b01111111111111111111111111111110) (bvsge (x!87799 lt!444954) #b00000000000000000000000000000000) (bvsge (x!87799 lt!444954) x!1245)))))

(assert (=> b!1006925 (=> (not res!676034) (not e!566770))))

(declare-fun b!1006926 () Bool)

(assert (=> b!1006926 (= e!566768 (bvsge (x!87799 lt!444954) #b01111111111111111111111111111110))))

(declare-fun b!1006927 () Bool)

(assert (=> b!1006927 (and (bvsge (index!40380 lt!444954) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444954) (size!31073 lt!444882)))))

(declare-fun res!676035 () Bool)

(assert (=> b!1006927 (= res!676035 (= (select (arr!30570 lt!444882) (index!40380 lt!444954)) lt!444884))))

(assert (=> b!1006927 (=> res!676035 e!566767)))

(assert (=> b!1006927 (= e!566770 e!566767)))

(declare-fun b!1006928 () Bool)

(assert (=> b!1006928 (and (bvsge (index!40380 lt!444954) #b00000000000000000000000000000000) (bvslt (index!40380 lt!444954) (size!31073 lt!444882)))))

(assert (=> b!1006928 (= e!566767 (= (select (arr!30570 lt!444882) (index!40380 lt!444954)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1006929 () Bool)

(declare-fun e!566771 () SeekEntryResult!9502)

(assert (=> b!1006929 (= e!566771 (Intermediate!9502 false index!1507 x!1245))))

(declare-fun d!119601 () Bool)

(assert (=> d!119601 e!566768))

(declare-fun c!101599 () Bool)

(assert (=> d!119601 (= c!101599 (and (is-Intermediate!9502 lt!444954) (undefined!10314 lt!444954)))))

(assert (=> d!119601 (= lt!444954 e!566769)))

(declare-fun c!101598 () Bool)

(assert (=> d!119601 (= c!101598 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!444953 () (_ BitVec 64))

(assert (=> d!119601 (= lt!444953 (select (arr!30570 lt!444882) index!1507))))

(assert (=> d!119601 (validMask!0 mask!3464)))

(assert (=> d!119601 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444884 lt!444882 mask!3464) lt!444954)))

(declare-fun b!1006930 () Bool)

(assert (=> b!1006930 (= e!566769 e!566771)))

(declare-fun c!101600 () Bool)

(assert (=> b!1006930 (= c!101600 (or (= lt!444953 lt!444884) (= (bvadd lt!444953 lt!444953) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006931 () Bool)

(assert (=> b!1006931 (= e!566771 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!444884 lt!444882 mask!3464))))

(assert (= (and d!119601 c!101598) b!1006923))

(assert (= (and d!119601 (not c!101598)) b!1006930))

(assert (= (and b!1006930 c!101600) b!1006929))

(assert (= (and b!1006930 (not c!101600)) b!1006931))

(assert (= (and d!119601 c!101599) b!1006926))

(assert (= (and d!119601 (not c!101599)) b!1006925))

(assert (= (and b!1006925 res!676034) b!1006927))

(assert (= (and b!1006927 (not res!676035)) b!1006924))

(assert (= (and b!1006924 (not res!676033)) b!1006928))

(declare-fun m!932017 () Bool)

(assert (=> d!119601 m!932017))

(assert (=> d!119601 m!931901))

(declare-fun m!932019 () Bool)

(assert (=> b!1006924 m!932019))

(assert (=> b!1006928 m!932019))

(assert (=> b!1006931 m!932005))

(assert (=> b!1006931 m!932005))

(declare-fun m!932021 () Bool)

(assert (=> b!1006931 m!932021))

(assert (=> b!1006927 m!932019))

(assert (=> b!1006693 d!119601))

(declare-fun b!1006973 () Bool)

(declare-fun e!566799 () Bool)

(declare-fun e!566797 () Bool)

(assert (=> b!1006973 (= e!566799 e!566797)))

(declare-fun c!101613 () Bool)

(assert (=> b!1006973 (= c!101613 (validKeyInArray!0 (select (arr!30570 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1006974 () Bool)

(declare-fun call!42364 () Bool)

(assert (=> b!1006974 (= e!566797 call!42364)))

(declare-fun b!1006975 () Bool)

(declare-fun e!566798 () Bool)

(assert (=> b!1006975 (= e!566798 call!42364)))

(declare-fun bm!42361 () Bool)

(assert (=> bm!42361 (= call!42364 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1006972 () Bool)

(assert (=> b!1006972 (= e!566797 e!566798)))

(declare-fun lt!444969 () (_ BitVec 64))

(assert (=> b!1006972 (= lt!444969 (select (arr!30570 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32956 0))(
  ( (Unit!32957) )
))
(declare-fun lt!444970 () Unit!32956)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63503 (_ BitVec 64) (_ BitVec 32)) Unit!32956)

(assert (=> b!1006972 (= lt!444970 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!444969 #b00000000000000000000000000000000))))

(assert (=> b!1006972 (arrayContainsKey!0 a!3219 lt!444969 #b00000000000000000000000000000000)))

(declare-fun lt!444971 () Unit!32956)

(assert (=> b!1006972 (= lt!444971 lt!444970)))

(declare-fun res!676053 () Bool)

(assert (=> b!1006972 (= res!676053 (= (seekEntryOrOpen!0 (select (arr!30570 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9502 #b00000000000000000000000000000000)))))

(assert (=> b!1006972 (=> (not res!676053) (not e!566798))))

(declare-fun d!119603 () Bool)

(declare-fun res!676054 () Bool)

(assert (=> d!119603 (=> res!676054 e!566799)))

(assert (=> d!119603 (= res!676054 (bvsge #b00000000000000000000000000000000 (size!31073 a!3219)))))

(assert (=> d!119603 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!566799)))

(assert (= (and d!119603 (not res!676054)) b!1006973))

(assert (= (and b!1006973 c!101613) b!1006972))

(assert (= (and b!1006973 (not c!101613)) b!1006974))

(assert (= (and b!1006972 res!676053) b!1006975))

(assert (= (or b!1006975 b!1006974) bm!42361))

(assert (=> b!1006973 m!931961))

(assert (=> b!1006973 m!931961))

(assert (=> b!1006973 m!931963))

(declare-fun m!932051 () Bool)

(assert (=> bm!42361 m!932051))

(assert (=> b!1006972 m!931961))

(declare-fun m!932053 () Bool)

(assert (=> b!1006972 m!932053))

(declare-fun m!932055 () Bool)

(assert (=> b!1006972 m!932055))

(assert (=> b!1006972 m!931961))

(declare-fun m!932057 () Bool)

(assert (=> b!1006972 m!932057))

(assert (=> b!1006704 d!119603))

(declare-fun d!119615 () Bool)

(assert (=> d!119615 (= (validKeyInArray!0 (select (arr!30570 a!3219) j!170)) (and (not (= (select (arr!30570 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30570 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1006703 d!119615))

(declare-fun e!566812 () SeekEntryResult!9502)

(declare-fun b!1006997 () Bool)

(declare-fun lt!444990 () SeekEntryResult!9502)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63503 (_ BitVec 32)) SeekEntryResult!9502)

(assert (=> b!1006997 (= e!566812 (seekKeyOrZeroReturnVacant!0 (x!87799 lt!444990) (index!40380 lt!444990) (index!40380 lt!444990) k!2224 a!3219 mask!3464))))

(declare-fun b!1006998 () Bool)

(declare-fun e!566813 () SeekEntryResult!9502)

(assert (=> b!1006998 (= e!566813 Undefined!9502)))

(declare-fun b!1006999 () Bool)

(declare-fun e!566811 () SeekEntryResult!9502)

(assert (=> b!1006999 (= e!566811 (Found!9502 (index!40380 lt!444990)))))

(declare-fun b!1007000 () Bool)

(assert (=> b!1007000 (= e!566813 e!566811)))

(declare-fun lt!444989 () (_ BitVec 64))

(assert (=> b!1007000 (= lt!444989 (select (arr!30570 a!3219) (index!40380 lt!444990)))))

(declare-fun c!101625 () Bool)

(assert (=> b!1007000 (= c!101625 (= lt!444989 k!2224))))

(declare-fun b!1007002 () Bool)

(declare-fun c!101624 () Bool)

(assert (=> b!1007002 (= c!101624 (= lt!444989 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1007002 (= e!566811 e!566812)))

(declare-fun b!1007001 () Bool)

(assert (=> b!1007001 (= e!566812 (MissingZero!9502 (index!40380 lt!444990)))))

(declare-fun d!119617 () Bool)

(declare-fun lt!444988 () SeekEntryResult!9502)

(assert (=> d!119617 (and (or (is-Undefined!9502 lt!444988) (not (is-Found!9502 lt!444988)) (and (bvsge (index!40379 lt!444988) #b00000000000000000000000000000000) (bvslt (index!40379 lt!444988) (size!31073 a!3219)))) (or (is-Undefined!9502 lt!444988) (is-Found!9502 lt!444988) (not (is-MissingZero!9502 lt!444988)) (and (bvsge (index!40378 lt!444988) #b00000000000000000000000000000000) (bvslt (index!40378 lt!444988) (size!31073 a!3219)))) (or (is-Undefined!9502 lt!444988) (is-Found!9502 lt!444988) (is-MissingZero!9502 lt!444988) (not (is-MissingVacant!9502 lt!444988)) (and (bvsge (index!40381 lt!444988) #b00000000000000000000000000000000) (bvslt (index!40381 lt!444988) (size!31073 a!3219)))) (or (is-Undefined!9502 lt!444988) (ite (is-Found!9502 lt!444988) (= (select (arr!30570 a!3219) (index!40379 lt!444988)) k!2224) (ite (is-MissingZero!9502 lt!444988) (= (select (arr!30570 a!3219) (index!40378 lt!444988)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9502 lt!444988) (= (select (arr!30570 a!3219) (index!40381 lt!444988)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119617 (= lt!444988 e!566813)))

(declare-fun c!101623 () Bool)

(assert (=> d!119617 (= c!101623 (and (is-Intermediate!9502 lt!444990) (undefined!10314 lt!444990)))))

(assert (=> d!119617 (= lt!444990 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119617 (validMask!0 mask!3464)))

(assert (=> d!119617 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!444988)))

(assert (= (and d!119617 c!101623) b!1006998))

(assert (= (and d!119617 (not c!101623)) b!1007000))

(assert (= (and b!1007000 c!101625) b!1006999))

(assert (= (and b!1007000 (not c!101625)) b!1007002))

(assert (= (and b!1007002 c!101624) b!1007001))

(assert (= (and b!1007002 (not c!101624)) b!1006997))

(declare-fun m!932067 () Bool)

(assert (=> b!1006997 m!932067))

(declare-fun m!932069 () Bool)

(assert (=> b!1007000 m!932069))

(declare-fun m!932071 () Bool)

(assert (=> d!119617 m!932071))

(declare-fun m!932073 () Bool)

(assert (=> d!119617 m!932073))

(declare-fun m!932075 () Bool)

(assert (=> d!119617 m!932075))

(declare-fun m!932077 () Bool)

(assert (=> d!119617 m!932077))

(assert (=> d!119617 m!931901))

(assert (=> d!119617 m!932075))

(declare-fun m!932079 () Bool)

(assert (=> d!119617 m!932079))

(assert (=> b!1006697 d!119617))

(declare-fun d!119631 () Bool)

(declare-fun res!676064 () Bool)

(declare-fun e!566822 () Bool)

(assert (=> d!119631 (=> res!676064 e!566822)))

(assert (=> d!119631 (= res!676064 (= (select (arr!30570 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119631 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!566822)))

(declare-fun b!1007013 () Bool)

(declare-fun e!566823 () Bool)

(assert (=> b!1007013 (= e!566822 e!566823)))

(declare-fun res!676065 () Bool)

(assert (=> b!1007013 (=> (not res!676065) (not e!566823))))

(assert (=> b!1007013 (= res!676065 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31073 a!3219)))))

(declare-fun b!1007014 () Bool)

(assert (=> b!1007014 (= e!566823 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119631 (not res!676064)) b!1007013))

(assert (= (and b!1007013 res!676065) b!1007014))

(assert (=> d!119631 m!931961))

(declare-fun m!932081 () Bool)

(assert (=> b!1007014 m!932081))

(assert (=> b!1006696 d!119631))

(push 1)

(assert (not b!1006903))

(assert (not b!1006860))

(assert (not b!1006973))

(assert (not d!119559))

(assert (not d!119617))

(assert (not b!1006972))

(assert (not b!1006997))

(assert (not b!1006837))

(assert (not d!119591))

(assert (not b!1007014))

(assert (not b!1006864))

(assert (not bm!42361))

(assert (not d!119601))

(assert (not bm!42355))

(assert (not b!1006861))

(assert (not b!1006912))

(assert (not d!119587))

(assert (not b!1006931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

