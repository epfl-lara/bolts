; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49222 () Bool)

(assert start!49222)

(declare-fun e!313591 () Bool)

(declare-datatypes ((SeekEntryResult!4914 0))(
  ( (MissingZero!4914 (index!21880 (_ BitVec 32))) (Found!4914 (index!21881 (_ BitVec 32))) (Intermediate!4914 (undefined!5726 Bool) (index!21882 (_ BitVec 32)) (x!50822 (_ BitVec 32))) (Undefined!4914) (MissingVacant!4914 (index!21883 (_ BitVec 32))) )
))
(declare-fun lt!247717 () SeekEntryResult!4914)

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34237 0))(
  ( (array!34238 (arr!16449 (Array (_ BitVec 32) (_ BitVec 64))) (size!16813 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34237)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun b!541695 () Bool)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34237 (_ BitVec 32)) SeekEntryResult!4914)

(assert (=> b!541695 (= e!313591 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (store (arr!16449 a!3154) i!1153 k!1998) j!147) (array!34238 (store (arr!16449 a!3154) i!1153 k!1998) (size!16813 a!3154)) mask!3216) lt!247717)))))

(declare-fun b!541696 () Bool)

(declare-fun res!336576 () Bool)

(declare-fun e!313589 () Bool)

(assert (=> b!541696 (=> (not res!336576) (not e!313589))))

(declare-fun arrayContainsKey!0 (array!34237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541696 (= res!336576 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541697 () Bool)

(declare-fun res!336574 () Bool)

(declare-fun e!313588 () Bool)

(assert (=> b!541697 (=> (not res!336574) (not e!313588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34237 (_ BitVec 32)) Bool)

(assert (=> b!541697 (= res!336574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541698 () Bool)

(declare-fun res!336584 () Bool)

(assert (=> b!541698 (=> (not res!336584) (not e!313588))))

(declare-datatypes ((List!10621 0))(
  ( (Nil!10618) (Cons!10617 (h!11569 (_ BitVec 64)) (t!16857 List!10621)) )
))
(declare-fun arrayNoDuplicates!0 (array!34237 (_ BitVec 32) List!10621) Bool)

(assert (=> b!541698 (= res!336584 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10618))))

(declare-fun b!541699 () Bool)

(assert (=> b!541699 (= e!313588 e!313591)))

(declare-fun res!336580 () Bool)

(assert (=> b!541699 (=> (not res!336580) (not e!313591))))

(declare-fun lt!247718 () SeekEntryResult!4914)

(assert (=> b!541699 (= res!336580 (= lt!247718 lt!247717))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541699 (= lt!247717 (Intermediate!4914 false resIndex!32 resX!32))))

(assert (=> b!541699 (= lt!247718 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16449 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541700 () Bool)

(declare-fun res!336579 () Bool)

(assert (=> b!541700 (=> (not res!336579) (not e!313588))))

(assert (=> b!541700 (= res!336579 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16813 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16813 a!3154)) (= (select (arr!16449 a!3154) resIndex!32) (select (arr!16449 a!3154) j!147))))))

(declare-fun b!541701 () Bool)

(declare-fun res!336573 () Bool)

(assert (=> b!541701 (=> (not res!336573) (not e!313591))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541701 (= res!336573 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16449 a!3154) j!147) mask!3216) (select (arr!16449 a!3154) j!147) a!3154 mask!3216) lt!247718))))

(declare-fun res!336581 () Bool)

(assert (=> start!49222 (=> (not res!336581) (not e!313589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49222 (= res!336581 (validMask!0 mask!3216))))

(assert (=> start!49222 e!313589))

(assert (=> start!49222 true))

(declare-fun array_inv!12223 (array!34237) Bool)

(assert (=> start!49222 (array_inv!12223 a!3154)))

(declare-fun b!541702 () Bool)

(declare-fun res!336575 () Bool)

(assert (=> b!541702 (=> (not res!336575) (not e!313591))))

(assert (=> b!541702 (= res!336575 (and (not (= (select (arr!16449 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16449 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16449 a!3154) index!1177) (select (arr!16449 a!3154) j!147)) (= index!1177 resIndex!32)))))

(declare-fun b!541703 () Bool)

(declare-fun res!336577 () Bool)

(assert (=> b!541703 (=> (not res!336577) (not e!313589))))

(assert (=> b!541703 (= res!336577 (and (= (size!16813 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16813 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16813 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541704 () Bool)

(declare-fun res!336582 () Bool)

(assert (=> b!541704 (=> (not res!336582) (not e!313589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541704 (= res!336582 (validKeyInArray!0 k!1998))))

(declare-fun b!541705 () Bool)

(assert (=> b!541705 (= e!313589 e!313588)))

(declare-fun res!336583 () Bool)

(assert (=> b!541705 (=> (not res!336583) (not e!313588))))

(declare-fun lt!247716 () SeekEntryResult!4914)

(assert (=> b!541705 (= res!336583 (or (= lt!247716 (MissingZero!4914 i!1153)) (= lt!247716 (MissingVacant!4914 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34237 (_ BitVec 32)) SeekEntryResult!4914)

(assert (=> b!541705 (= lt!247716 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!541706 () Bool)

(declare-fun res!336578 () Bool)

(assert (=> b!541706 (=> (not res!336578) (not e!313589))))

(assert (=> b!541706 (= res!336578 (validKeyInArray!0 (select (arr!16449 a!3154) j!147)))))

(assert (= (and start!49222 res!336581) b!541703))

(assert (= (and b!541703 res!336577) b!541706))

(assert (= (and b!541706 res!336578) b!541704))

(assert (= (and b!541704 res!336582) b!541696))

(assert (= (and b!541696 res!336576) b!541705))

(assert (= (and b!541705 res!336583) b!541697))

(assert (= (and b!541697 res!336574) b!541698))

(assert (= (and b!541698 res!336584) b!541700))

(assert (= (and b!541700 res!336579) b!541699))

(assert (= (and b!541699 res!336580) b!541701))

(assert (= (and b!541701 res!336573) b!541702))

(assert (= (and b!541702 res!336575) b!541695))

(declare-fun m!520153 () Bool)

(assert (=> b!541695 m!520153))

(declare-fun m!520155 () Bool)

(assert (=> b!541695 m!520155))

(assert (=> b!541695 m!520155))

(declare-fun m!520157 () Bool)

(assert (=> b!541695 m!520157))

(declare-fun m!520159 () Bool)

(assert (=> b!541697 m!520159))

(declare-fun m!520161 () Bool)

(assert (=> b!541704 m!520161))

(declare-fun m!520163 () Bool)

(assert (=> b!541705 m!520163))

(declare-fun m!520165 () Bool)

(assert (=> start!49222 m!520165))

(declare-fun m!520167 () Bool)

(assert (=> start!49222 m!520167))

(declare-fun m!520169 () Bool)

(assert (=> b!541706 m!520169))

(assert (=> b!541706 m!520169))

(declare-fun m!520171 () Bool)

(assert (=> b!541706 m!520171))

(declare-fun m!520173 () Bool)

(assert (=> b!541696 m!520173))

(assert (=> b!541699 m!520169))

(assert (=> b!541699 m!520169))

(declare-fun m!520175 () Bool)

(assert (=> b!541699 m!520175))

(assert (=> b!541701 m!520169))

(assert (=> b!541701 m!520169))

(declare-fun m!520177 () Bool)

(assert (=> b!541701 m!520177))

(assert (=> b!541701 m!520177))

(assert (=> b!541701 m!520169))

(declare-fun m!520179 () Bool)

(assert (=> b!541701 m!520179))

(declare-fun m!520181 () Bool)

(assert (=> b!541698 m!520181))

(declare-fun m!520183 () Bool)

(assert (=> b!541700 m!520183))

(assert (=> b!541700 m!520169))

(declare-fun m!520185 () Bool)

(assert (=> b!541702 m!520185))

(assert (=> b!541702 m!520169))

(push 1)

(assert (not b!541695))

(assert (not b!541699))

(assert (not b!541698))

(assert (not b!541704))

(assert (not b!541706))

(assert (not b!541705))

(assert (not b!541701))

(assert (not b!541697))

(assert (not start!49222))

(assert (not b!541696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!541858 () Bool)

(declare-fun lt!247756 () SeekEntryResult!4914)

(assert (=> b!541858 (and (bvsge (index!21882 lt!247756) #b00000000000000000000000000000000) (bvslt (index!21882 lt!247756) (size!16813 (array!34238 (store (arr!16449 a!3154) i!1153 k!1998) (size!16813 a!3154)))))))

(declare-fun res!336695 () Bool)

(assert (=> b!541858 (= res!336695 (= (select (arr!16449 (array!34238 (store (arr!16449 a!3154) i!1153 k!1998) (size!16813 a!3154))) (index!21882 lt!247756)) (select (store (arr!16449 a!3154) i!1153 k!1998) j!147)))))

(declare-fun e!313668 () Bool)

(assert (=> b!541858 (=> res!336695 e!313668)))

(declare-fun e!313672 () Bool)

(assert (=> b!541858 (= e!313672 e!313668)))

(declare-fun b!541859 () Bool)

(declare-fun e!313670 () SeekEntryResult!4914)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541859 (= e!313670 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (store (arr!16449 a!3154) i!1153 k!1998) j!147) (array!34238 (store (arr!16449 a!3154) i!1153 k!1998) (size!16813 a!3154)) mask!3216))))

(declare-fun b!541860 () Bool)

(declare-fun e!313671 () Bool)

(assert (=> b!541860 (= e!313671 e!313672)))

(declare-fun res!336694 () Bool)

(assert (=> b!541860 (= res!336694 (and (is-Intermediate!4914 lt!247756) (not (undefined!5726 lt!247756)) (bvslt (x!50822 lt!247756) #b01111111111111111111111111111110) (bvsge (x!50822 lt!247756) #b00000000000000000000000000000000) (bvsge (x!50822 lt!247756) x!1030)))))

(assert (=> b!541860 (=> (not res!336694) (not e!313672))))

(declare-fun b!541861 () Bool)

(assert (=> b!541861 (and (bvsge (index!21882 lt!247756) #b00000000000000000000000000000000) (bvslt (index!21882 lt!247756) (size!16813 (array!34238 (store (arr!16449 a!3154) i!1153 k!1998) (size!16813 a!3154)))))))

(assert (=> b!541861 (= e!313668 (= (select (arr!16449 (array!34238 (store (arr!16449 a!3154) i!1153 k!1998) (size!16813 a!3154))) (index!21882 lt!247756)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541857 () Bool)

(declare-fun e!313669 () SeekEntryResult!4914)

(assert (=> b!541857 (= e!313669 e!313670)))

(declare-fun c!62900 () Bool)

(declare-fun lt!247757 () (_ BitVec 64))

(assert (=> b!541857 (= c!62900 (or (= lt!247757 (select (store (arr!16449 a!3154) i!1153 k!1998) j!147)) (= (bvadd lt!247757 lt!247757) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!81711 () Bool)

(assert (=> d!81711 e!313671))

(declare-fun c!62899 () Bool)

(assert (=> d!81711 (= c!62899 (and (is-Intermediate!4914 lt!247756) (undefined!5726 lt!247756)))))

(assert (=> d!81711 (= lt!247756 e!313669)))

(declare-fun c!62898 () Bool)

(assert (=> d!81711 (= c!62898 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81711 (= lt!247757 (select (arr!16449 (array!34238 (store (arr!16449 a!3154) i!1153 k!1998) (size!16813 a!3154))) index!1177))))

(assert (=> d!81711 (validMask!0 mask!3216)))

(assert (=> d!81711 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (store (arr!16449 a!3154) i!1153 k!1998) j!147) (array!34238 (store (arr!16449 a!3154) i!1153 k!1998) (size!16813 a!3154)) mask!3216) lt!247756)))

(declare-fun b!541862 () Bool)

(assert (=> b!541862 (= e!313671 (bvsge (x!50822 lt!247756) #b01111111111111111111111111111110))))

(declare-fun b!541863 () Bool)

(assert (=> b!541863 (= e!313669 (Intermediate!4914 true index!1177 x!1030))))

(declare-fun b!541864 () Bool)

(assert (=> b!541864 (= e!313670 (Intermediate!4914 false index!1177 x!1030))))

(declare-fun b!541865 () Bool)

(assert (=> b!541865 (and (bvsge (index!21882 lt!247756) #b00000000000000000000000000000000) (bvslt (index!21882 lt!247756) (size!16813 (array!34238 (store (arr!16449 a!3154) i!1153 k!1998) (size!16813 a!3154)))))))

(declare-fun res!336693 () Bool)

(assert (=> b!541865 (= res!336693 (= (select (arr!16449 (array!34238 (store (arr!16449 a!3154) i!1153 k!1998) (size!16813 a!3154))) (index!21882 lt!247756)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!541865 (=> res!336693 e!313668)))

(assert (= (and d!81711 c!62898) b!541863))

(assert (= (and d!81711 (not c!62898)) b!541857))

(assert (= (and b!541857 c!62900) b!541864))

(assert (= (and b!541857 (not c!62900)) b!541859))

(assert (= (and d!81711 c!62899) b!541862))

(assert (= (and d!81711 (not c!62899)) b!541860))

(assert (= (and b!541860 res!336694) b!541858))

(assert (= (and b!541858 (not res!336695)) b!541865))

(assert (= (and b!541865 (not res!336693)) b!541861))

(declare-fun m!520285 () Bool)

(assert (=> b!541859 m!520285))

(assert (=> b!541859 m!520285))

(assert (=> b!541859 m!520155))

(declare-fun m!520287 () Bool)

(assert (=> b!541859 m!520287))

(declare-fun m!520289 () Bool)

(assert (=> d!81711 m!520289))

(assert (=> d!81711 m!520165))

(declare-fun m!520291 () Bool)

(assert (=> b!541861 m!520291))

(assert (=> b!541865 m!520291))

(assert (=> b!541858 m!520291))

(assert (=> b!541695 d!81711))

(declare-fun d!81729 () Bool)

(assert (=> d!81729 (= (validKeyInArray!0 (select (arr!16449 a!3154) j!147)) (and (not (= (select (arr!16449 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16449 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541706 d!81729))

(declare-fun b!541929 () Bool)

(declare-fun e!313712 () SeekEntryResult!4914)

(declare-fun lt!247785 () SeekEntryResult!4914)

(assert (=> b!541929 (= e!313712 (Found!4914 (index!21882 lt!247785)))))

(declare-fun b!541930 () Bool)

(declare-fun e!313711 () SeekEntryResult!4914)

(assert (=> b!541930 (= e!313711 (MissingZero!4914 (index!21882 lt!247785)))))

(declare-fun b!541931 () Bool)

(declare-fun e!313710 () SeekEntryResult!4914)

(assert (=> b!541931 (= e!313710 Undefined!4914)))

(declare-fun d!81731 () Bool)

(declare-fun lt!247783 () SeekEntryResult!4914)

(assert (=> d!81731 (and (or (is-Undefined!4914 lt!247783) (not (is-Found!4914 lt!247783)) (and (bvsge (index!21881 lt!247783) #b00000000000000000000000000000000) (bvslt (index!21881 lt!247783) (size!16813 a!3154)))) (or (is-Undefined!4914 lt!247783) (is-Found!4914 lt!247783) (not (is-MissingZero!4914 lt!247783)) (and (bvsge (index!21880 lt!247783) #b00000000000000000000000000000000) (bvslt (index!21880 lt!247783) (size!16813 a!3154)))) (or (is-Undefined!4914 lt!247783) (is-Found!4914 lt!247783) (is-MissingZero!4914 lt!247783) (not (is-MissingVacant!4914 lt!247783)) (and (bvsge (index!21883 lt!247783) #b00000000000000000000000000000000) (bvslt (index!21883 lt!247783) (size!16813 a!3154)))) (or (is-Undefined!4914 lt!247783) (ite (is-Found!4914 lt!247783) (= (select (arr!16449 a!3154) (index!21881 lt!247783)) k!1998) (ite (is-MissingZero!4914 lt!247783) (= (select (arr!16449 a!3154) (index!21880 lt!247783)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4914 lt!247783) (= (select (arr!16449 a!3154) (index!21883 lt!247783)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81731 (= lt!247783 e!313710)))

(declare-fun c!62927 () Bool)

(assert (=> d!81731 (= c!62927 (and (is-Intermediate!4914 lt!247785) (undefined!5726 lt!247785)))))

(assert (=> d!81731 (= lt!247785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81731 (validMask!0 mask!3216)))

(assert (=> d!81731 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!247783)))

(declare-fun b!541932 () Bool)

(declare-fun c!62926 () Bool)

(declare-fun lt!247784 () (_ BitVec 64))

(assert (=> b!541932 (= c!62926 (= lt!247784 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!541932 (= e!313712 e!313711)))

(declare-fun b!541933 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34237 (_ BitVec 32)) SeekEntryResult!4914)

(assert (=> b!541933 (= e!313711 (seekKeyOrZeroReturnVacant!0 (x!50822 lt!247785) (index!21882 lt!247785) (index!21882 lt!247785) k!1998 a!3154 mask!3216))))

(declare-fun b!541934 () Bool)

(assert (=> b!541934 (= e!313710 e!313712)))

(assert (=> b!541934 (= lt!247784 (select (arr!16449 a!3154) (index!21882 lt!247785)))))

(declare-fun c!62925 () Bool)

(assert (=> b!541934 (= c!62925 (= lt!247784 k!1998))))

(assert (= (and d!81731 c!62927) b!541931))

(assert (= (and d!81731 (not c!62927)) b!541934))

(assert (= (and b!541934 c!62925) b!541929))

(assert (= (and b!541934 (not c!62925)) b!541932))

(assert (= (and b!541932 c!62926) b!541930))

(assert (= (and b!541932 (not c!62926)) b!541933))

(declare-fun m!520323 () Bool)

(assert (=> d!81731 m!520323))

(declare-fun m!520325 () Bool)

(assert (=> d!81731 m!520325))

(declare-fun m!520327 () Bool)

(assert (=> d!81731 m!520327))

(declare-fun m!520329 () Bool)

(assert (=> d!81731 m!520329))

(assert (=> d!81731 m!520165))

(assert (=> d!81731 m!520325))

(declare-fun m!520331 () Bool)

(assert (=> d!81731 m!520331))

(declare-fun m!520333 () Bool)

(assert (=> b!541933 m!520333))

(declare-fun m!520335 () Bool)

(assert (=> b!541934 m!520335))

(assert (=> b!541705 d!81731))

(declare-fun b!541948 () Bool)

(declare-fun lt!247796 () SeekEntryResult!4914)

(assert (=> b!541948 (and (bvsge (index!21882 lt!247796) #b00000000000000000000000000000000) (bvslt (index!21882 lt!247796) (size!16813 a!3154)))))

(declare-fun res!336718 () Bool)

(assert (=> b!541948 (= res!336718 (= (select (arr!16449 a!3154) (index!21882 lt!247796)) (select (arr!16449 a!3154) j!147)))))

(declare-fun e!313721 () Bool)

(assert (=> b!541948 (=> res!336718 e!313721)))

(declare-fun e!313725 () Bool)

(assert (=> b!541948 (= e!313725 e!313721)))

(declare-fun b!541949 () Bool)

(declare-fun e!313723 () SeekEntryResult!4914)

(assert (=> b!541949 (= e!313723 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16449 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16449 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541950 () Bool)

(declare-fun e!313724 () Bool)

(assert (=> b!541950 (= e!313724 e!313725)))

(declare-fun res!336717 () Bool)

(assert (=> b!541950 (= res!336717 (and (is-Intermediate!4914 lt!247796) (not (undefined!5726 lt!247796)) (bvslt (x!50822 lt!247796) #b01111111111111111111111111111110) (bvsge (x!50822 lt!247796) #b00000000000000000000000000000000) (bvsge (x!50822 lt!247796) #b00000000000000000000000000000000)))))

(assert (=> b!541950 (=> (not res!336717) (not e!313725))))

(declare-fun b!541951 () Bool)

(assert (=> b!541951 (and (bvsge (index!21882 lt!247796) #b00000000000000000000000000000000) (bvslt (index!21882 lt!247796) (size!16813 a!3154)))))

(assert (=> b!541951 (= e!313721 (= (select (arr!16449 a!3154) (index!21882 lt!247796)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541947 () Bool)

(declare-fun e!313722 () SeekEntryResult!4914)

(assert (=> b!541947 (= e!313722 e!313723)))

(declare-fun lt!247797 () (_ BitVec 64))

(declare-fun c!62934 () Bool)

(assert (=> b!541947 (= c!62934 (or (= lt!247797 (select (arr!16449 a!3154) j!147)) (= (bvadd lt!247797 lt!247797) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!81745 () Bool)

(assert (=> d!81745 e!313724))

(declare-fun c!62933 () Bool)

(assert (=> d!81745 (= c!62933 (and (is-Intermediate!4914 lt!247796) (undefined!5726 lt!247796)))))

(assert (=> d!81745 (= lt!247796 e!313722)))

(declare-fun c!62932 () Bool)

(assert (=> d!81745 (= c!62932 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81745 (= lt!247797 (select (arr!16449 a!3154) (toIndex!0 (select (arr!16449 a!3154) j!147) mask!3216)))))

(assert (=> d!81745 (validMask!0 mask!3216)))

(assert (=> d!81745 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16449 a!3154) j!147) mask!3216) (select (arr!16449 a!3154) j!147) a!3154 mask!3216) lt!247796)))

(declare-fun b!541952 () Bool)

(assert (=> b!541952 (= e!313724 (bvsge (x!50822 lt!247796) #b01111111111111111111111111111110))))

(declare-fun b!541953 () Bool)

(assert (=> b!541953 (= e!313722 (Intermediate!4914 true (toIndex!0 (select (arr!16449 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!541954 () Bool)

(assert (=> b!541954 (= e!313723 (Intermediate!4914 false (toIndex!0 (select (arr!16449 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!541956 () Bool)

(assert (=> b!541956 (and (bvsge (index!21882 lt!247796) #b00000000000000000000000000000000) (bvslt (index!21882 lt!247796) (size!16813 a!3154)))))

(declare-fun res!336716 () Bool)

(assert (=> b!541956 (= res!336716 (= (select (arr!16449 a!3154) (index!21882 lt!247796)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!541956 (=> res!336716 e!313721)))

(assert (= (and d!81745 c!62932) b!541953))

(assert (= (and d!81745 (not c!62932)) b!541947))

(assert (= (and b!541947 c!62934) b!541954))

(assert (= (and b!541947 (not c!62934)) b!541949))

(assert (= (and d!81745 c!62933) b!541952))

(assert (= (and d!81745 (not c!62933)) b!541950))

(assert (= (and b!541950 res!336717) b!541948))

(assert (= (and b!541948 (not res!336718)) b!541956))

(assert (= (and b!541956 (not res!336716)) b!541951))

(assert (=> b!541949 m!520177))

(declare-fun m!520337 () Bool)

(assert (=> b!541949 m!520337))

(assert (=> b!541949 m!520337))

(assert (=> b!541949 m!520169))

(declare-fun m!520339 () Bool)

(assert (=> b!541949 m!520339))

(assert (=> d!81745 m!520177))

(declare-fun m!520341 () Bool)

(assert (=> d!81745 m!520341))

(assert (=> d!81745 m!520165))

(declare-fun m!520343 () Bool)

(assert (=> b!541951 m!520343))

(assert (=> b!541956 m!520343))

(assert (=> b!541948 m!520343))

(assert (=> b!541701 d!81745))

(declare-fun d!81747 () Bool)

(declare-fun lt!247808 () (_ BitVec 32))

(declare-fun lt!247807 () (_ BitVec 32))

(assert (=> d!81747 (= lt!247808 (bvmul (bvxor lt!247807 (bvlshr lt!247807 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81747 (= lt!247807 ((_ extract 31 0) (bvand (bvxor (select (arr!16449 a!3154) j!147) (bvlshr (select (arr!16449 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81747 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!336725 (let ((h!11573 ((_ extract 31 0) (bvand (bvxor (select (arr!16449 a!3154) j!147) (bvlshr (select (arr!16449 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50829 (bvmul (bvxor h!11573 (bvlshr h!11573 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50829 (bvlshr x!50829 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!336725 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!336725 #b00000000000000000000000000000000))))))

(assert (=> d!81747 (= (toIndex!0 (select (arr!16449 a!3154) j!147) mask!3216) (bvand (bvxor lt!247808 (bvlshr lt!247808 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!541701 d!81747))

(declare-fun d!81753 () Bool)

(declare-fun res!336735 () Bool)

(declare-fun e!313746 () Bool)

(assert (=> d!81753 (=> res!336735 e!313746)))

(assert (=> d!81753 (= res!336735 (= (select (arr!16449 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81753 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!313746)))

(declare-fun b!541987 () Bool)

(declare-fun e!313747 () Bool)

(assert (=> b!541987 (= e!313746 e!313747)))

(declare-fun res!336736 () Bool)

(assert (=> b!541987 (=> (not res!336736) (not e!313747))))

(assert (=> b!541987 (= res!336736 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16813 a!3154)))))

(declare-fun b!541988 () Bool)

(assert (=> b!541988 (= e!313747 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81753 (not res!336735)) b!541987))

(assert (= (and b!541987 res!336736) b!541988))

(declare-fun m!520359 () Bool)

(assert (=> d!81753 m!520359))

(declare-fun m!520361 () Bool)

(assert (=> b!541988 m!520361))

(assert (=> b!541696 d!81753))

(declare-fun b!541999 () Bool)

(declare-fun e!313759 () Bool)

(declare-fun call!32063 () Bool)

(assert (=> b!541999 (= e!313759 call!32063)))

(declare-fun b!542000 () Bool)

(assert (=> b!542000 (= e!313759 call!32063)))

(declare-fun bm!32060 () Bool)

(declare-fun c!62945 () Bool)

(assert (=> bm!32060 (= call!32063 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62945 (Cons!10617 (select (arr!16449 a!3154) #b00000000000000000000000000000000) Nil!10618) Nil!10618)))))

(declare-fun d!81755 () Bool)

(declare-fun res!336743 () Bool)

(declare-fun e!313757 () Bool)

(assert (=> d!81755 (=> res!336743 e!313757)))

(assert (=> d!81755 (= res!336743 (bvsge #b00000000000000000000000000000000 (size!16813 a!3154)))))

(assert (=> d!81755 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10618) e!313757)))

(declare-fun b!542001 () Bool)

(declare-fun e!313758 () Bool)

(declare-fun contains!2809 (List!10621 (_ BitVec 64)) Bool)

(assert (=> b!542001 (= e!313758 (contains!2809 Nil!10618 (select (arr!16449 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!542002 () Bool)

(declare-fun e!313756 () Bool)

(assert (=> b!542002 (= e!313757 e!313756)))

(declare-fun res!336744 () Bool)

(assert (=> b!542002 (=> (not res!336744) (not e!313756))))

(assert (=> b!542002 (= res!336744 (not e!313758))))

(declare-fun res!336745 () Bool)

(assert (=> b!542002 (=> (not res!336745) (not e!313758))))

(assert (=> b!542002 (= res!336745 (validKeyInArray!0 (select (arr!16449 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!542003 () Bool)

(assert (=> b!542003 (= e!313756 e!313759)))

(assert (=> b!542003 (= c!62945 (validKeyInArray!0 (select (arr!16449 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81755 (not res!336743)) b!542002))

(assert (= (and b!542002 res!336745) b!542001))

(assert (= (and b!542002 res!336744) b!542003))

(assert (= (and b!542003 c!62945) b!541999))

(assert (= (and b!542003 (not c!62945)) b!542000))

(assert (= (or b!541999 b!542000) bm!32060))

(assert (=> bm!32060 m!520359))

(declare-fun m!520363 () Bool)

(assert (=> bm!32060 m!520363))

(assert (=> b!542001 m!520359))

(assert (=> b!542001 m!520359))

(declare-fun m!520365 () Bool)

(assert (=> b!542001 m!520365))

(assert (=> b!542002 m!520359))

(assert (=> b!542002 m!520359))

(declare-fun m!520367 () Bool)

(assert (=> b!542002 m!520367))

(assert (=> b!542003 m!520359))

(assert (=> b!542003 m!520359))

(assert (=> b!542003 m!520367))

(assert (=> b!541698 d!81755))

(declare-fun b!542030 () Bool)

(declare-fun e!313775 () Bool)

(declare-fun call!32066 () Bool)

(assert (=> b!542030 (= e!313775 call!32066)))

(declare-fun d!81757 () Bool)

(declare-fun res!336751 () Bool)

(declare-fun e!313777 () Bool)

(assert (=> d!81757 (=> res!336751 e!313777)))

(assert (=> d!81757 (= res!336751 (bvsge #b00000000000000000000000000000000 (size!16813 a!3154)))))

(assert (=> d!81757 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!313777)))

(declare-fun b!542031 () Bool)

(declare-fun e!313776 () Bool)

(assert (=> b!542031 (= e!313776 call!32066)))

(declare-fun b!542032 () Bool)

(assert (=> b!542032 (= e!313777 e!313775)))

(declare-fun c!62957 () Bool)

(assert (=> b!542032 (= c!62957 (validKeyInArray!0 (select (arr!16449 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!542033 () Bool)

(assert (=> b!542033 (= e!313775 e!313776)))

(declare-fun lt!247825 () (_ BitVec 64))

(assert (=> b!542033 (= lt!247825 (select (arr!16449 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16878 0))(
  ( (Unit!16879) )
))
(declare-fun lt!247824 () Unit!16878)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34237 (_ BitVec 64) (_ BitVec 32)) Unit!16878)

(assert (=> b!542033 (= lt!247824 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247825 #b00000000000000000000000000000000))))

(assert (=> b!542033 (arrayContainsKey!0 a!3154 lt!247825 #b00000000000000000000000000000000)))

(declare-fun lt!247826 () Unit!16878)

(assert (=> b!542033 (= lt!247826 lt!247824)))

(declare-fun res!336750 () Bool)

(assert (=> b!542033 (= res!336750 (= (seekEntryOrOpen!0 (select (arr!16449 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4914 #b00000000000000000000000000000000)))))

(assert (=> b!542033 (=> (not res!336750) (not e!313776))))

(declare-fun bm!32063 () Bool)

(assert (=> bm!32063 (= call!32066 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(assert (= (and d!81757 (not res!336751)) b!542032))

(assert (= (and b!542032 c!62957) b!542033))

(assert (= (and b!542032 (not c!62957)) b!542030))

(assert (= (and b!542033 res!336750) b!542031))

(assert (= (or b!542031 b!542030) bm!32063))

(assert (=> b!542032 m!520359))

(assert (=> b!542032 m!520359))

(assert (=> b!542032 m!520367))

(assert (=> b!542033 m!520359))

(declare-fun m!520383 () Bool)

(assert (=> b!542033 m!520383))

(declare-fun m!520385 () Bool)

(assert (=> b!542033 m!520385))

(assert (=> b!542033 m!520359))

(declare-fun m!520387 () Bool)

(assert (=> b!542033 m!520387))

(declare-fun m!520389 () Bool)

(assert (=> bm!32063 m!520389))

(assert (=> b!541697 d!81757))

(declare-fun b!542039 () Bool)

(declare-fun lt!247827 () SeekEntryResult!4914)

(assert (=> b!542039 (and (bvsge (index!21882 lt!247827) #b00000000000000000000000000000000) (bvslt (index!21882 lt!247827) (size!16813 a!3154)))))

(declare-fun res!336758 () Bool)

(assert (=> b!542039 (= res!336758 (= (select (arr!16449 a!3154) (index!21882 lt!247827)) (select (arr!16449 a!3154) j!147)))))

(declare-fun e!313782 () Bool)

(assert (=> b!542039 (=> res!336758 e!313782)))

(declare-fun e!313786 () Bool)

(assert (=> b!542039 (= e!313786 e!313782)))

(declare-fun b!542040 () Bool)

(declare-fun e!313784 () SeekEntryResult!4914)

(assert (=> b!542040 (= e!313784 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16449 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542041 () Bool)

(declare-fun e!313785 () Bool)

(assert (=> b!542041 (= e!313785 e!313786)))

(declare-fun res!336757 () Bool)

(assert (=> b!542041 (= res!336757 (and (is-Intermediate!4914 lt!247827) (not (undefined!5726 lt!247827)) (bvslt (x!50822 lt!247827) #b01111111111111111111111111111110) (bvsge (x!50822 lt!247827) #b00000000000000000000000000000000) (bvsge (x!50822 lt!247827) x!1030)))))

(assert (=> b!542041 (=> (not res!336757) (not e!313786))))

(declare-fun b!542042 () Bool)

(assert (=> b!542042 (and (bvsge (index!21882 lt!247827) #b00000000000000000000000000000000) (bvslt (index!21882 lt!247827) (size!16813 a!3154)))))

(assert (=> b!542042 (= e!313782 (= (select (arr!16449 a!3154) (index!21882 lt!247827)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!542038 () Bool)

(declare-fun e!313783 () SeekEntryResult!4914)

(assert (=> b!542038 (= e!313783 e!313784)))

(declare-fun c!62960 () Bool)

(declare-fun lt!247828 () (_ BitVec 64))

(assert (=> b!542038 (= c!62960 (or (= lt!247828 (select (arr!16449 a!3154) j!147)) (= (bvadd lt!247828 lt!247828) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!81763 () Bool)

(assert (=> d!81763 e!313785))

(declare-fun c!62959 () Bool)

(assert (=> d!81763 (= c!62959 (and (is-Intermediate!4914 lt!247827) (undefined!5726 lt!247827)))))

(assert (=> d!81763 (= lt!247827 e!313783)))

(declare-fun c!62958 () Bool)

(assert (=> d!81763 (= c!62958 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81763 (= lt!247828 (select (arr!16449 a!3154) index!1177))))

(assert (=> d!81763 (validMask!0 mask!3216)))

(assert (=> d!81763 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16449 a!3154) j!147) a!3154 mask!3216) lt!247827)))

(declare-fun b!542043 () Bool)

(assert (=> b!542043 (= e!313785 (bvsge (x!50822 lt!247827) #b01111111111111111111111111111110))))

(declare-fun b!542044 () Bool)

(assert (=> b!542044 (= e!313783 (Intermediate!4914 true index!1177 x!1030))))

(declare-fun b!542045 () Bool)

(assert (=> b!542045 (= e!313784 (Intermediate!4914 false index!1177 x!1030))))

(declare-fun b!542046 () Bool)

(assert (=> b!542046 (and (bvsge (index!21882 lt!247827) #b00000000000000000000000000000000) (bvslt (index!21882 lt!247827) (size!16813 a!3154)))))

(declare-fun res!336756 () Bool)

(assert (=> b!542046 (= res!336756 (= (select (arr!16449 a!3154) (index!21882 lt!247827)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!542046 (=> res!336756 e!313782)))

(assert (= (and d!81763 c!62958) b!542044))

(assert (= (and d!81763 (not c!62958)) b!542038))

(assert (= (and b!542038 c!62960) b!542045))

(assert (= (and b!542038 (not c!62960)) b!542040))

(assert (= (and d!81763 c!62959) b!542043))

(assert (= (and d!81763 (not c!62959)) b!542041))

(assert (= (and b!542041 res!336757) b!542039))

(assert (= (and b!542039 (not res!336758)) b!542046))

(assert (= (and b!542046 (not res!336756)) b!542042))

(assert (=> b!542040 m!520285))

(assert (=> b!542040 m!520285))

(assert (=> b!542040 m!520169))

(declare-fun m!520391 () Bool)

(assert (=> b!542040 m!520391))

(assert (=> d!81763 m!520185))

(assert (=> d!81763 m!520165))

(declare-fun m!520393 () Bool)

(assert (=> b!542042 m!520393))

(assert (=> b!542046 m!520393))

(assert (=> b!542039 m!520393))

(assert (=> b!541699 d!81763))

(declare-fun d!81765 () Bool)

(assert (=> d!81765 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49222 d!81765))

(declare-fun d!81773 () Bool)

(assert (=> d!81773 (= (array_inv!12223 a!3154) (bvsge (size!16813 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49222 d!81773))

(declare-fun d!81775 () Bool)

(assert (=> d!81775 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541704 d!81775))

(push 1)

(assert (not b!542002))

(assert (not d!81745))

(assert (not b!542003))

(assert (not bm!32060))

(assert (not b!542032))

(assert (not b!542040))

(assert (not b!542033))

(assert (not d!81763))

(assert (not d!81731))

(assert (not b!541988))

(assert (not b!541949))

(assert (not d!81711))

(assert (not bm!32063))

(assert (not b!542001))

(assert (not b!541933))

(assert (not b!541859))

(check-sat)

