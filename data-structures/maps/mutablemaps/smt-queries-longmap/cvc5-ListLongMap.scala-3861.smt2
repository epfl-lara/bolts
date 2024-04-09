; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53146 () Bool)

(assert start!53146)

(declare-fun b!577664 () Bool)

(declare-fun res!365707 () Bool)

(declare-fun e!332256 () Bool)

(assert (=> b!577664 (=> (not res!365707) (not e!332256))))

(declare-datatypes ((array!36046 0))(
  ( (array!36047 (arr!17295 (Array (_ BitVec 32) (_ BitVec 64))) (size!17659 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36046)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577664 (= res!365707 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!365706 () Bool)

(assert (=> start!53146 (=> (not res!365706) (not e!332256))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53146 (= res!365706 (validMask!0 mask!3053))))

(assert (=> start!53146 e!332256))

(assert (=> start!53146 true))

(declare-fun array_inv!13069 (array!36046) Bool)

(assert (=> start!53146 (array_inv!13069 a!2986)))

(declare-fun b!577665 () Bool)

(declare-fun res!365705 () Bool)

(declare-fun e!332254 () Bool)

(assert (=> b!577665 (=> (not res!365705) (not e!332254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36046 (_ BitVec 32)) Bool)

(assert (=> b!577665 (= res!365705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577666 () Bool)

(declare-fun e!332257 () Bool)

(assert (=> b!577666 (= e!332254 e!332257)))

(declare-fun res!365709 () Bool)

(assert (=> b!577666 (=> res!365709 e!332257)))

(declare-datatypes ((List!11389 0))(
  ( (Nil!11386) (Cons!11385 (h!12430 (_ BitVec 64)) (t!17625 List!11389)) )
))
(declare-fun contains!2905 (List!11389 (_ BitVec 64)) Bool)

(assert (=> b!577666 (= res!365709 (contains!2905 Nil!11386 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577667 () Bool)

(declare-fun res!365708 () Bool)

(assert (=> b!577667 (=> (not res!365708) (not e!332256))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577667 (= res!365708 (and (= (size!17659 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17659 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17659 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577668 () Bool)

(declare-fun res!365702 () Bool)

(assert (=> b!577668 (=> (not res!365702) (not e!332254))))

(assert (=> b!577668 (= res!365702 (and (bvsle #b00000000000000000000000000000000 (size!17659 a!2986)) (bvslt (size!17659 a!2986) #b01111111111111111111111111111111)))))

(declare-fun b!577669 () Bool)

(declare-fun res!365711 () Bool)

(assert (=> b!577669 (=> (not res!365711) (not e!332254))))

(declare-fun noDuplicate!229 (List!11389) Bool)

(assert (=> b!577669 (= res!365711 (noDuplicate!229 Nil!11386))))

(declare-fun b!577670 () Bool)

(assert (=> b!577670 (= e!332257 (contains!2905 Nil!11386 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577671 () Bool)

(assert (=> b!577671 (= e!332256 e!332254)))

(declare-fun res!365703 () Bool)

(assert (=> b!577671 (=> (not res!365703) (not e!332254))))

(declare-datatypes ((SeekEntryResult!5742 0))(
  ( (MissingZero!5742 (index!25195 (_ BitVec 32))) (Found!5742 (index!25196 (_ BitVec 32))) (Intermediate!5742 (undefined!6554 Bool) (index!25197 (_ BitVec 32)) (x!54134 (_ BitVec 32))) (Undefined!5742) (MissingVacant!5742 (index!25198 (_ BitVec 32))) )
))
(declare-fun lt!264059 () SeekEntryResult!5742)

(assert (=> b!577671 (= res!365703 (or (= lt!264059 (MissingZero!5742 i!1108)) (= lt!264059 (MissingVacant!5742 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36046 (_ BitVec 32)) SeekEntryResult!5742)

(assert (=> b!577671 (= lt!264059 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577672 () Bool)

(declare-fun res!365710 () Bool)

(assert (=> b!577672 (=> (not res!365710) (not e!332256))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577672 (= res!365710 (validKeyInArray!0 k!1786))))

(declare-fun b!577673 () Bool)

(declare-fun res!365704 () Bool)

(assert (=> b!577673 (=> (not res!365704) (not e!332256))))

(assert (=> b!577673 (= res!365704 (validKeyInArray!0 (select (arr!17295 a!2986) j!136)))))

(assert (= (and start!53146 res!365706) b!577667))

(assert (= (and b!577667 res!365708) b!577673))

(assert (= (and b!577673 res!365704) b!577672))

(assert (= (and b!577672 res!365710) b!577664))

(assert (= (and b!577664 res!365707) b!577671))

(assert (= (and b!577671 res!365703) b!577665))

(assert (= (and b!577665 res!365705) b!577668))

(assert (= (and b!577668 res!365702) b!577669))

(assert (= (and b!577669 res!365711) b!577666))

(assert (= (and b!577666 (not res!365709)) b!577670))

(declare-fun m!556483 () Bool)

(assert (=> start!53146 m!556483))

(declare-fun m!556485 () Bool)

(assert (=> start!53146 m!556485))

(declare-fun m!556487 () Bool)

(assert (=> b!577669 m!556487))

(declare-fun m!556489 () Bool)

(assert (=> b!577665 m!556489))

(declare-fun m!556491 () Bool)

(assert (=> b!577666 m!556491))

(declare-fun m!556493 () Bool)

(assert (=> b!577673 m!556493))

(assert (=> b!577673 m!556493))

(declare-fun m!556495 () Bool)

(assert (=> b!577673 m!556495))

(declare-fun m!556497 () Bool)

(assert (=> b!577672 m!556497))

(declare-fun m!556499 () Bool)

(assert (=> b!577671 m!556499))

(declare-fun m!556501 () Bool)

(assert (=> b!577670 m!556501))

(declare-fun m!556503 () Bool)

(assert (=> b!577664 m!556503))

(push 1)

(assert (not b!577673))

(assert (not b!577670))

(assert (not b!577669))

(assert (not b!577664))

(assert (not b!577671))

(assert (not start!53146))

(assert (not b!577672))

(assert (not b!577665))

(assert (not b!577666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!85529 () Bool)

(declare-fun res!365776 () Bool)

(declare-fun e!332286 () Bool)

(assert (=> d!85529 (=> res!365776 e!332286)))

(assert (=> d!85529 (= res!365776 (= (select (arr!17295 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!85529 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!332286)))

(declare-fun b!577738 () Bool)

(declare-fun e!332287 () Bool)

(assert (=> b!577738 (= e!332286 e!332287)))

(declare-fun res!365777 () Bool)

(assert (=> b!577738 (=> (not res!365777) (not e!332287))))

(assert (=> b!577738 (= res!365777 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17659 a!2986)))))

(declare-fun b!577739 () Bool)

(assert (=> b!577739 (= e!332287 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85529 (not res!365776)) b!577738))

(assert (= (and b!577738 res!365777) b!577739))

(declare-fun m!556549 () Bool)

(assert (=> d!85529 m!556549))

(declare-fun m!556551 () Bool)

(assert (=> b!577739 m!556551))

(assert (=> b!577664 d!85529))

(declare-fun b!577770 () Bool)

(declare-fun e!332314 () Bool)

(declare-fun call!32771 () Bool)

(assert (=> b!577770 (= e!332314 call!32771)))

(declare-fun b!577771 () Bool)

(declare-fun e!332313 () Bool)

(assert (=> b!577771 (= e!332314 e!332313)))

(declare-fun lt!264087 () (_ BitVec 64))

(assert (=> b!577771 (= lt!264087 (select (arr!17295 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!18132 0))(
  ( (Unit!18133) )
))
(declare-fun lt!264088 () Unit!18132)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36046 (_ BitVec 64) (_ BitVec 32)) Unit!18132)

(assert (=> b!577771 (= lt!264088 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!264087 #b00000000000000000000000000000000))))

(assert (=> b!577771 (arrayContainsKey!0 a!2986 lt!264087 #b00000000000000000000000000000000)))

(declare-fun lt!264086 () Unit!18132)

(assert (=> b!577771 (= lt!264086 lt!264088)))

(declare-fun res!365799 () Bool)

(assert (=> b!577771 (= res!365799 (= (seekEntryOrOpen!0 (select (arr!17295 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!5742 #b00000000000000000000000000000000)))))

(assert (=> b!577771 (=> (not res!365799) (not e!332313))))

(declare-fun d!85533 () Bool)

(declare-fun res!365798 () Bool)

(declare-fun e!332315 () Bool)

(assert (=> d!85533 (=> res!365798 e!332315)))

(assert (=> d!85533 (= res!365798 (bvsge #b00000000000000000000000000000000 (size!17659 a!2986)))))

(assert (=> d!85533 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!332315)))

(declare-fun b!577772 () Bool)

(assert (=> b!577772 (= e!332315 e!332314)))

(declare-fun c!66353 () Bool)

(assert (=> b!577772 (= c!66353 (validKeyInArray!0 (select (arr!17295 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32768 () Bool)

(assert (=> bm!32768 (= call!32771 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!577773 () Bool)

(assert (=> b!577773 (= e!332313 call!32771)))

(assert (= (and d!85533 (not res!365798)) b!577772))

(assert (= (and b!577772 c!66353) b!577771))

(assert (= (and b!577772 (not c!66353)) b!577770))

(assert (= (and b!577771 res!365799) b!577773))

(assert (= (or b!577773 b!577770) bm!32768))

(assert (=> b!577771 m!556549))

(declare-fun m!556571 () Bool)

(assert (=> b!577771 m!556571))

(declare-fun m!556573 () Bool)

(assert (=> b!577771 m!556573))

(assert (=> b!577771 m!556549))

(declare-fun m!556575 () Bool)

(assert (=> b!577771 m!556575))

(assert (=> b!577772 m!556549))

(assert (=> b!577772 m!556549))

(declare-fun m!556579 () Bool)

(assert (=> b!577772 m!556579))

(declare-fun m!556583 () Bool)

(assert (=> bm!32768 m!556583))

(assert (=> b!577665 d!85533))

(declare-fun d!85541 () Bool)

(declare-fun lt!264092 () Bool)

(declare-fun content!233 (List!11389) (Set (_ BitVec 64)))

(assert (=> d!85541 (= lt!264092 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!233 Nil!11386)))))

(declare-fun e!332328 () Bool)

(assert (=> d!85541 (= lt!264092 e!332328)))

(declare-fun res!365813 () Bool)

(assert (=> d!85541 (=> (not res!365813) (not e!332328))))

(assert (=> d!85541 (= res!365813 (is-Cons!11385 Nil!11386))))

(assert (=> d!85541 (= (contains!2905 Nil!11386 #b1000000000000000000000000000000000000000000000000000000000000000) lt!264092)))

(declare-fun b!577786 () Bool)

(declare-fun e!332329 () Bool)

(assert (=> b!577786 (= e!332328 e!332329)))

(declare-fun res!365812 () Bool)

(assert (=> b!577786 (=> res!365812 e!332329)))

(assert (=> b!577786 (= res!365812 (= (h!12430 Nil!11386) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577787 () Bool)

(assert (=> b!577787 (= e!332329 (contains!2905 (t!17625 Nil!11386) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!85541 res!365813) b!577786))

(assert (= (and b!577786 (not res!365812)) b!577787))

(declare-fun m!556589 () Bool)

(assert (=> d!85541 m!556589))

(declare-fun m!556591 () Bool)

(assert (=> d!85541 m!556591))

(declare-fun m!556593 () Bool)

(assert (=> b!577787 m!556593))

(assert (=> b!577670 d!85541))

(declare-fun d!85551 () Bool)

(declare-fun res!365824 () Bool)

(declare-fun e!332340 () Bool)

(assert (=> d!85551 (=> res!365824 e!332340)))

(assert (=> d!85551 (= res!365824 (is-Nil!11386 Nil!11386))))

(assert (=> d!85551 (= (noDuplicate!229 Nil!11386) e!332340)))

(declare-fun b!577798 () Bool)

(declare-fun e!332341 () Bool)

(assert (=> b!577798 (= e!332340 e!332341)))

(declare-fun res!365825 () Bool)

(assert (=> b!577798 (=> (not res!365825) (not e!332341))))

(assert (=> b!577798 (= res!365825 (not (contains!2905 (t!17625 Nil!11386) (h!12430 Nil!11386))))))

(declare-fun b!577799 () Bool)

(assert (=> b!577799 (= e!332341 (noDuplicate!229 (t!17625 Nil!11386)))))

(assert (= (and d!85551 (not res!365824)) b!577798))

(assert (= (and b!577798 res!365825) b!577799))

(declare-fun m!556599 () Bool)

(assert (=> b!577798 m!556599))

(declare-fun m!556601 () Bool)

(assert (=> b!577799 m!556601))

(assert (=> b!577669 d!85551))

(declare-fun d!85555 () Bool)

(assert (=> d!85555 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577672 d!85555))

(declare-fun d!85557 () Bool)

(assert (=> d!85557 (= (validKeyInArray!0 (select (arr!17295 a!2986) j!136)) (and (not (= (select (arr!17295 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17295 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577673 d!85557))

(declare-fun d!85559 () Bool)

(assert (=> d!85559 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!53146 d!85559))

(declare-fun d!85565 () Bool)

(assert (=> d!85565 (= (array_inv!13069 a!2986) (bvsge (size!17659 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!53146 d!85565))

(declare-fun b!577870 () Bool)

(declare-fun e!332387 () SeekEntryResult!5742)

(assert (=> b!577870 (= e!332387 Undefined!5742)))

(declare-fun b!577871 () Bool)

(declare-fun e!332385 () SeekEntryResult!5742)

(assert (=> b!577871 (= e!332387 e!332385)))

(declare-fun lt!264127 () (_ BitVec 64))

(declare-fun lt!264128 () SeekEntryResult!5742)

(assert (=> b!577871 (= lt!264127 (select (arr!17295 a!2986) (index!25197 lt!264128)))))

(declare-fun c!66381 () Bool)

(assert (=> b!577871 (= c!66381 (= lt!264127 k!1786))))

(declare-fun b!577872 () Bool)

(assert (=> b!577872 (= e!332385 (Found!5742 (index!25197 lt!264128)))))

(declare-fun b!577873 () Bool)

(declare-fun e!332386 () SeekEntryResult!5742)

(assert (=> b!577873 (= e!332386 (MissingZero!5742 (index!25197 lt!264128)))))

(declare-fun b!577874 () Bool)

(declare-fun c!66383 () Bool)

(assert (=> b!577874 (= c!66383 (= lt!264127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!577874 (= e!332385 e!332386)))

(declare-fun b!577875 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36046 (_ BitVec 32)) SeekEntryResult!5742)

(assert (=> b!577875 (= e!332386 (seekKeyOrZeroReturnVacant!0 (x!54134 lt!264128) (index!25197 lt!264128) (index!25197 lt!264128) k!1786 a!2986 mask!3053))))

(declare-fun d!85567 () Bool)

(declare-fun lt!264129 () SeekEntryResult!5742)

(assert (=> d!85567 (and (or (is-Undefined!5742 lt!264129) (not (is-Found!5742 lt!264129)) (and (bvsge (index!25196 lt!264129) #b00000000000000000000000000000000) (bvslt (index!25196 lt!264129) (size!17659 a!2986)))) (or (is-Undefined!5742 lt!264129) (is-Found!5742 lt!264129) (not (is-MissingZero!5742 lt!264129)) (and (bvsge (index!25195 lt!264129) #b00000000000000000000000000000000) (bvslt (index!25195 lt!264129) (size!17659 a!2986)))) (or (is-Undefined!5742 lt!264129) (is-Found!5742 lt!264129) (is-MissingZero!5742 lt!264129) (not (is-MissingVacant!5742 lt!264129)) (and (bvsge (index!25198 lt!264129) #b00000000000000000000000000000000) (bvslt (index!25198 lt!264129) (size!17659 a!2986)))) (or (is-Undefined!5742 lt!264129) (ite (is-Found!5742 lt!264129) (= (select (arr!17295 a!2986) (index!25196 lt!264129)) k!1786) (ite (is-MissingZero!5742 lt!264129) (= (select (arr!17295 a!2986) (index!25195 lt!264129)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5742 lt!264129) (= (select (arr!17295 a!2986) (index!25198 lt!264129)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85567 (= lt!264129 e!332387)))

(declare-fun c!66382 () Bool)

(assert (=> d!85567 (= c!66382 (and (is-Intermediate!5742 lt!264128) (undefined!6554 lt!264128)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36046 (_ BitVec 32)) SeekEntryResult!5742)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85567 (= lt!264128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!85567 (validMask!0 mask!3053)))

(assert (=> d!85567 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!264129)))

(assert (= (and d!85567 c!66382) b!577870))

(assert (= (and d!85567 (not c!66382)) b!577871))

(assert (= (and b!577871 c!66381) b!577872))

(assert (= (and b!577871 (not c!66381)) b!577874))

(assert (= (and b!577874 c!66383) b!577873))

(assert (= (and b!577874 (not c!66383)) b!577875))

(declare-fun m!556649 () Bool)

(assert (=> b!577871 m!556649))

(declare-fun m!556651 () Bool)

(assert (=> b!577875 m!556651))

(declare-fun m!556653 () Bool)

(assert (=> d!85567 m!556653))

(assert (=> d!85567 m!556653))

(declare-fun m!556655 () Bool)

(assert (=> d!85567 m!556655))

(declare-fun m!556657 () Bool)

(assert (=> d!85567 m!556657))

(assert (=> d!85567 m!556483))

(declare-fun m!556659 () Bool)

(assert (=> d!85567 m!556659))

(declare-fun m!556661 () Bool)

(assert (=> d!85567 m!556661))

(assert (=> b!577671 d!85567))

(declare-fun d!85577 () Bool)

(declare-fun lt!264130 () Bool)

(assert (=> d!85577 (= lt!264130 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!233 Nil!11386)))))

(declare-fun e!332390 () Bool)

(assert (=> d!85577 (= lt!264130 e!332390)))

(declare-fun res!365845 () Bool)

(assert (=> d!85577 (=> (not res!365845) (not e!332390))))

(assert (=> d!85577 (= res!365845 (is-Cons!11385 Nil!11386))))

(assert (=> d!85577 (= (contains!2905 Nil!11386 #b0000000000000000000000000000000000000000000000000000000000000000) lt!264130)))

(declare-fun b!577878 () Bool)

(declare-fun e!332391 () Bool)

(assert (=> b!577878 (= e!332390 e!332391)))

(declare-fun res!365844 () Bool)

(assert (=> b!577878 (=> res!365844 e!332391)))

(assert (=> b!577878 (= res!365844 (= (h!12430 Nil!11386) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577879 () Bool)

(assert (=> b!577879 (= e!332391 (contains!2905 (t!17625 Nil!11386) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!85577 res!365845) b!577878))

(assert (= (and b!577878 (not res!365844)) b!577879))

(assert (=> d!85577 m!556589))

(declare-fun m!556663 () Bool)

(assert (=> d!85577 m!556663))

(declare-fun m!556665 () Bool)

(assert (=> b!577879 m!556665))

(assert (=> b!577666 d!85577))

(push 1)

