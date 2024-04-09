; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36226 () Bool)

(assert start!36226)

(declare-fun b!362785 () Bool)

(declare-fun res!202228 () Bool)

(declare-fun e!222185 () Bool)

(assert (=> b!362785 (=> (not res!202228) (not e!222185))))

(declare-datatypes ((array!20504 0))(
  ( (array!20505 (arr!9731 (Array (_ BitVec 32) (_ BitVec 64))) (size!10083 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20504)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362785 (= res!202228 (not (validKeyInArray!0 (select (arr!9731 a!4337) i!1478))))))

(declare-fun b!362786 () Bool)

(declare-fun res!202229 () Bool)

(assert (=> b!362786 (=> (not res!202229) (not e!222185))))

(declare-fun k0!2980 () (_ BitVec 64))

(assert (=> b!362786 (= res!202229 (validKeyInArray!0 k0!2980))))

(declare-fun b!362787 () Bool)

(declare-fun res!202231 () Bool)

(assert (=> b!362787 (=> (not res!202231) (not e!222185))))

(assert (=> b!362787 (= res!202231 (and (bvslt (size!10083 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10083 a!4337))))))

(declare-fun b!362788 () Bool)

(declare-fun arrayCountValidKeys!0 (array!20504 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362788 (= e!222185 (not (= (arrayCountValidKeys!0 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478))))))))

(declare-fun res!202230 () Bool)

(assert (=> start!36226 (=> (not res!202230) (not e!222185))))

(assert (=> start!36226 (= res!202230 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10083 a!4337))))))

(assert (=> start!36226 e!222185))

(assert (=> start!36226 true))

(declare-fun array_inv!7169 (array!20504) Bool)

(assert (=> start!36226 (array_inv!7169 a!4337)))

(assert (= (and start!36226 res!202230) b!362785))

(assert (= (and b!362785 res!202228) b!362786))

(assert (= (and b!362786 res!202229) b!362787))

(assert (= (and b!362787 res!202231) b!362788))

(declare-fun m!359697 () Bool)

(assert (=> b!362785 m!359697))

(assert (=> b!362785 m!359697))

(declare-fun m!359699 () Bool)

(assert (=> b!362785 m!359699))

(declare-fun m!359701 () Bool)

(assert (=> b!362786 m!359701))

(declare-fun m!359703 () Bool)

(assert (=> b!362788 m!359703))

(declare-fun m!359705 () Bool)

(assert (=> b!362788 m!359705))

(declare-fun m!359707 () Bool)

(assert (=> b!362788 m!359707))

(declare-fun m!359709 () Bool)

(assert (=> start!36226 m!359709))

(check-sat (not b!362786) (not b!362788) (not start!36226) (not b!362785))
(check-sat)
(get-model)

(declare-fun d!71933 () Bool)

(assert (=> d!71933 (= (validKeyInArray!0 k0!2980) (and (not (= k0!2980 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2980 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!362786 d!71933))

(declare-fun call!27212 () (_ BitVec 32))

(declare-fun bm!27209 () Bool)

(assert (=> bm!27209 (= call!27212 (arrayCountValidKeys!0 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337)) (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362809 () Bool)

(declare-fun e!222196 () (_ BitVec 32))

(assert (=> b!362809 (= e!222196 call!27212)))

(declare-fun b!362810 () Bool)

(declare-fun e!222197 () (_ BitVec 32))

(assert (=> b!362810 (= e!222197 #b00000000000000000000000000000000)))

(declare-fun b!362811 () Bool)

(assert (=> b!362811 (= e!222197 e!222196)))

(declare-fun c!53702 () Bool)

(assert (=> b!362811 (= c!53702 (validKeyInArray!0 (select (arr!9731 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337))) i!1478)))))

(declare-fun d!71935 () Bool)

(declare-fun lt!167297 () (_ BitVec 32))

(assert (=> d!71935 (and (bvsge lt!167297 #b00000000000000000000000000000000) (bvsle lt!167297 (bvsub (size!10083 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337))) i!1478)))))

(assert (=> d!71935 (= lt!167297 e!222197)))

(declare-fun c!53701 () Bool)

(assert (=> d!71935 (= c!53701 (bvsge i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71935 (and (bvsle i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge i!1478 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10083 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337)))))))

(assert (=> d!71935 (= (arrayCountValidKeys!0 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167297)))

(declare-fun b!362812 () Bool)

(assert (=> b!362812 (= e!222196 (bvadd #b00000000000000000000000000000001 call!27212))))

(assert (= (and d!71935 c!53701) b!362810))

(assert (= (and d!71935 (not c!53701)) b!362811))

(assert (= (and b!362811 c!53702) b!362812))

(assert (= (and b!362811 (not c!53702)) b!362809))

(assert (= (or b!362812 b!362809) bm!27209))

(declare-fun m!359725 () Bool)

(assert (=> bm!27209 m!359725))

(declare-fun m!359727 () Bool)

(assert (=> b!362811 m!359727))

(assert (=> b!362811 m!359727))

(declare-fun m!359729 () Bool)

(assert (=> b!362811 m!359729))

(assert (=> b!362788 d!71935))

(declare-fun bm!27210 () Bool)

(declare-fun call!27213 () (_ BitVec 32))

(assert (=> bm!27210 (= call!27213 (arrayCountValidKeys!0 a!4337 (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362813 () Bool)

(declare-fun e!222198 () (_ BitVec 32))

(assert (=> b!362813 (= e!222198 call!27213)))

(declare-fun b!362814 () Bool)

(declare-fun e!222199 () (_ BitVec 32))

(assert (=> b!362814 (= e!222199 #b00000000000000000000000000000000)))

(declare-fun b!362815 () Bool)

(assert (=> b!362815 (= e!222199 e!222198)))

(declare-fun c!53704 () Bool)

(assert (=> b!362815 (= c!53704 (validKeyInArray!0 (select (arr!9731 a!4337) i!1478)))))

(declare-fun d!71937 () Bool)

(declare-fun lt!167298 () (_ BitVec 32))

(assert (=> d!71937 (and (bvsge lt!167298 #b00000000000000000000000000000000) (bvsle lt!167298 (bvsub (size!10083 a!4337) i!1478)))))

(assert (=> d!71937 (= lt!167298 e!222199)))

(declare-fun c!53703 () Bool)

(assert (=> d!71937 (= c!53703 (bvsge i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71937 (and (bvsle i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge i!1478 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10083 a!4337)))))

(assert (=> d!71937 (= (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167298)))

(declare-fun b!362816 () Bool)

(assert (=> b!362816 (= e!222198 (bvadd #b00000000000000000000000000000001 call!27213))))

(assert (= (and d!71937 c!53703) b!362814))

(assert (= (and d!71937 (not c!53703)) b!362815))

(assert (= (and b!362815 c!53704) b!362816))

(assert (= (and b!362815 (not c!53704)) b!362813))

(assert (= (or b!362816 b!362813) bm!27210))

(declare-fun m!359731 () Bool)

(assert (=> bm!27210 m!359731))

(assert (=> b!362815 m!359697))

(assert (=> b!362815 m!359697))

(assert (=> b!362815 m!359699))

(assert (=> b!362788 d!71937))

(declare-fun d!71939 () Bool)

(assert (=> d!71939 (= (array_inv!7169 a!4337) (bvsge (size!10083 a!4337) #b00000000000000000000000000000000))))

(assert (=> start!36226 d!71939))

(declare-fun d!71943 () Bool)

(assert (=> d!71943 (= (validKeyInArray!0 (select (arr!9731 a!4337) i!1478)) (and (not (= (select (arr!9731 a!4337) i!1478) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9731 a!4337) i!1478) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!362785 d!71943))

(check-sat (not bm!27209) (not b!362815) (not b!362811) (not bm!27210))
(check-sat)
(get-model)

(declare-fun call!27222 () (_ BitVec 32))

(declare-fun bm!27219 () Bool)

(assert (=> bm!27219 (= call!27222 (arrayCountValidKeys!0 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337)) (bvadd i!1478 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362849 () Bool)

(declare-fun e!222216 () (_ BitVec 32))

(assert (=> b!362849 (= e!222216 call!27222)))

(declare-fun b!362850 () Bool)

(declare-fun e!222217 () (_ BitVec 32))

(assert (=> b!362850 (= e!222217 #b00000000000000000000000000000000)))

(declare-fun b!362851 () Bool)

(assert (=> b!362851 (= e!222217 e!222216)))

(declare-fun c!53722 () Bool)

(assert (=> b!362851 (= c!53722 (validKeyInArray!0 (select (arr!9731 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337))) (bvadd i!1478 #b00000000000000000000000000000001))))))

(declare-fun d!71963 () Bool)

(declare-fun lt!167307 () (_ BitVec 32))

(assert (=> d!71963 (and (bvsge lt!167307 #b00000000000000000000000000000000) (bvsle lt!167307 (bvsub (size!10083 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337))) (bvadd i!1478 #b00000000000000000000000000000001))))))

(assert (=> d!71963 (= lt!167307 e!222217)))

(declare-fun c!53721 () Bool)

(assert (=> d!71963 (= c!53721 (bvsge (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71963 (and (bvsle (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge (bvadd i!1478 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10083 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337)))))))

(assert (=> d!71963 (= (arrayCountValidKeys!0 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337)) (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)) lt!167307)))

(declare-fun b!362852 () Bool)

(assert (=> b!362852 (= e!222216 (bvadd #b00000000000000000000000000000001 call!27222))))

(assert (= (and d!71963 c!53721) b!362850))

(assert (= (and d!71963 (not c!53721)) b!362851))

(assert (= (and b!362851 c!53722) b!362852))

(assert (= (and b!362851 (not c!53722)) b!362849))

(assert (= (or b!362852 b!362849) bm!27219))

(declare-fun m!359749 () Bool)

(assert (=> bm!27219 m!359749))

(declare-fun m!359751 () Bool)

(assert (=> b!362851 m!359751))

(assert (=> b!362851 m!359751))

(declare-fun m!359753 () Bool)

(assert (=> b!362851 m!359753))

(assert (=> bm!27209 d!71963))

(assert (=> b!362815 d!71943))

(declare-fun d!71965 () Bool)

(assert (=> d!71965 (= (validKeyInArray!0 (select (arr!9731 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337))) i!1478)) (and (not (= (select (arr!9731 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337))) i!1478) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9731 (array!20505 (store (arr!9731 a!4337) i!1478 k0!2980) (size!10083 a!4337))) i!1478) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!362811 d!71965))

(declare-fun bm!27220 () Bool)

(declare-fun call!27223 () (_ BitVec 32))

(assert (=> bm!27220 (= call!27223 (arrayCountValidKeys!0 a!4337 (bvadd i!1478 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362853 () Bool)

(declare-fun e!222218 () (_ BitVec 32))

(assert (=> b!362853 (= e!222218 call!27223)))

(declare-fun b!362854 () Bool)

(declare-fun e!222219 () (_ BitVec 32))

(assert (=> b!362854 (= e!222219 #b00000000000000000000000000000000)))

(declare-fun b!362855 () Bool)

(assert (=> b!362855 (= e!222219 e!222218)))

(declare-fun c!53724 () Bool)

(assert (=> b!362855 (= c!53724 (validKeyInArray!0 (select (arr!9731 a!4337) (bvadd i!1478 #b00000000000000000000000000000001))))))

(declare-fun d!71967 () Bool)

(declare-fun lt!167308 () (_ BitVec 32))

(assert (=> d!71967 (and (bvsge lt!167308 #b00000000000000000000000000000000) (bvsle lt!167308 (bvsub (size!10083 a!4337) (bvadd i!1478 #b00000000000000000000000000000001))))))

(assert (=> d!71967 (= lt!167308 e!222219)))

(declare-fun c!53723 () Bool)

(assert (=> d!71967 (= c!53723 (bvsge (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71967 (and (bvsle (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge (bvadd i!1478 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10083 a!4337)))))

(assert (=> d!71967 (= (arrayCountValidKeys!0 a!4337 (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)) lt!167308)))

(declare-fun b!362856 () Bool)

(assert (=> b!362856 (= e!222218 (bvadd #b00000000000000000000000000000001 call!27223))))

(assert (= (and d!71967 c!53723) b!362854))

(assert (= (and d!71967 (not c!53723)) b!362855))

(assert (= (and b!362855 c!53724) b!362856))

(assert (= (and b!362855 (not c!53724)) b!362853))

(assert (= (or b!362856 b!362853) bm!27220))

(declare-fun m!359755 () Bool)

(assert (=> bm!27220 m!359755))

(declare-fun m!359757 () Bool)

(assert (=> b!362855 m!359757))

(assert (=> b!362855 m!359757))

(declare-fun m!359759 () Bool)

(assert (=> b!362855 m!359759))

(assert (=> bm!27210 d!71967))

(check-sat (not bm!27220) (not bm!27219) (not b!362855) (not b!362851))
(check-sat)
