; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36224 () Bool)

(assert start!36224)

(declare-fun b!362773 () Bool)

(declare-fun res!202218 () Bool)

(declare-fun e!222178 () Bool)

(assert (=> b!362773 (=> (not res!202218) (not e!222178))))

(declare-datatypes ((array!20502 0))(
  ( (array!20503 (arr!9730 (Array (_ BitVec 32) (_ BitVec 64))) (size!10082 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20502)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362773 (= res!202218 (not (validKeyInArray!0 (select (arr!9730 a!4337) i!1478))))))

(declare-fun b!362775 () Bool)

(declare-fun res!202217 () Bool)

(assert (=> b!362775 (=> (not res!202217) (not e!222178))))

(assert (=> b!362775 (= res!202217 (and (bvslt (size!10082 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10082 a!4337))))))

(declare-fun b!362774 () Bool)

(declare-fun res!202219 () Bool)

(assert (=> b!362774 (=> (not res!202219) (not e!222178))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362774 (= res!202219 (validKeyInArray!0 k!2980))))

(declare-fun b!362776 () Bool)

(declare-fun arrayCountValidKeys!0 (array!20502 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362776 (= e!222178 (not (= (arrayCountValidKeys!0 (array!20503 (store (arr!9730 a!4337) i!1478 k!2980) (size!10082 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478))))))))

(declare-fun res!202216 () Bool)

(assert (=> start!36224 (=> (not res!202216) (not e!222178))))

(assert (=> start!36224 (= res!202216 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10082 a!4337))))))

(assert (=> start!36224 e!222178))

(assert (=> start!36224 true))

(declare-fun array_inv!7168 (array!20502) Bool)

(assert (=> start!36224 (array_inv!7168 a!4337)))

(assert (= (and start!36224 res!202216) b!362773))

(assert (= (and b!362773 res!202218) b!362774))

(assert (= (and b!362774 res!202219) b!362775))

(assert (= (and b!362775 res!202217) b!362776))

(declare-fun m!359683 () Bool)

(assert (=> b!362773 m!359683))

(assert (=> b!362773 m!359683))

(declare-fun m!359685 () Bool)

(assert (=> b!362773 m!359685))

(declare-fun m!359687 () Bool)

(assert (=> b!362774 m!359687))

(declare-fun m!359689 () Bool)

(assert (=> b!362776 m!359689))

(declare-fun m!359691 () Bool)

(assert (=> b!362776 m!359691))

(declare-fun m!359693 () Bool)

(assert (=> b!362776 m!359693))

(declare-fun m!359695 () Bool)

(assert (=> start!36224 m!359695))

(push 1)

(assert (not start!36224))

(assert (not b!362774))

(assert (not b!362773))

(assert (not b!362776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!71941 () Bool)

(assert (=> d!71941 (= (array_inv!7168 a!4337) (bvsge (size!10082 a!4337) #b00000000000000000000000000000000))))

(assert (=> start!36224 d!71941))

(declare-fun d!71945 () Bool)

(assert (=> d!71945 (= (validKeyInArray!0 k!2980) (and (not (= k!2980 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2980 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!362774 d!71945))

(declare-fun d!71947 () Bool)

(assert (=> d!71947 (= (validKeyInArray!0 (select (arr!9730 a!4337) i!1478)) (and (not (= (select (arr!9730 a!4337) i!1478) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9730 a!4337) i!1478) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!362773 d!71947))

(declare-fun b!362825 () Bool)

(declare-fun e!222205 () (_ BitVec 32))

(declare-fun call!27216 () (_ BitVec 32))

(assert (=> b!362825 (= e!222205 (bvadd #b00000000000000000000000000000001 call!27216))))

(declare-fun d!71949 () Bool)

(declare-fun lt!167301 () (_ BitVec 32))

(assert (=> d!71949 (and (bvsge lt!167301 #b00000000000000000000000000000000) (bvsle lt!167301 (bvsub (size!10082 (array!20503 (store (arr!9730 a!4337) i!1478 k!2980) (size!10082 a!4337))) i!1478)))))

(declare-fun e!222204 () (_ BitVec 32))

(assert (=> d!71949 (= lt!167301 e!222204)))

(declare-fun c!53710 () Bool)

(assert (=> d!71949 (= c!53710 (bvsge i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71949 (and (bvsle i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge i!1478 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10082 (array!20503 (store (arr!9730 a!4337) i!1478 k!2980) (size!10082 a!4337)))))))

(assert (=> d!71949 (= (arrayCountValidKeys!0 (array!20503 (store (arr!9730 a!4337) i!1478 k!2980) (size!10082 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167301)))

(declare-fun b!362826 () Bool)

(assert (=> b!362826 (= e!222204 e!222205)))

(declare-fun c!53709 () Bool)

(assert (=> b!362826 (= c!53709 (validKeyInArray!0 (select (arr!9730 (array!20503 (store (arr!9730 a!4337) i!1478 k!2980) (size!10082 a!4337))) i!1478)))))

(declare-fun bm!27213 () Bool)

(assert (=> bm!27213 (= call!27216 (arrayCountValidKeys!0 (array!20503 (store (arr!9730 a!4337) i!1478 k!2980) (size!10082 a!4337)) (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362827 () Bool)

(assert (=> b!362827 (= e!222204 #b00000000000000000000000000000000)))

(declare-fun b!362828 () Bool)

(assert (=> b!362828 (= e!222205 call!27216)))

(assert (= (and d!71949 c!53710) b!362827))

(assert (= (and d!71949 (not c!53710)) b!362826))

(assert (= (and b!362826 c!53709) b!362825))

(assert (= (and b!362826 (not c!53709)) b!362828))

(assert (= (or b!362825 b!362828) bm!27213))

(declare-fun m!359733 () Bool)

(assert (=> b!362826 m!359733))

(assert (=> b!362826 m!359733))

(declare-fun m!359735 () Bool)

(assert (=> b!362826 m!359735))

(declare-fun m!359737 () Bool)

(assert (=> bm!27213 m!359737))

(assert (=> b!362776 d!71949))

(declare-fun b!362829 () Bool)

(declare-fun e!222207 () (_ BitVec 32))

(declare-fun call!27217 () (_ BitVec 32))

(assert (=> b!362829 (= e!222207 (bvadd #b00000000000000000000000000000001 call!27217))))

(declare-fun d!71959 () Bool)

(declare-fun lt!167302 () (_ BitVec 32))

(assert (=> d!71959 (and (bvsge lt!167302 #b00000000000000000000000000000000) (bvsle lt!167302 (bvsub (size!10082 a!4337) i!1478)))))

(declare-fun e!222206 () (_ BitVec 32))

(assert (=> d!71959 (= lt!167302 e!222206)))

(declare-fun c!53712 () Bool)

(assert (=> d!71959 (= c!53712 (bvsge i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71959 (and (bvsle i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge i!1478 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10082 a!4337)))))

(assert (=> d!71959 (= (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167302)))

(declare-fun b!362830 () Bool)

(assert (=> b!362830 (= e!222206 e!222207)))

(declare-fun c!53711 () Bool)

(assert (=> b!362830 (= c!53711 (validKeyInArray!0 (select (arr!9730 a!4337) i!1478)))))

(declare-fun bm!27214 () Bool)

(assert (=> bm!27214 (= call!27217 (arrayCountValidKeys!0 a!4337 (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362831 () Bool)

(assert (=> b!362831 (= e!222206 #b00000000000000000000000000000000)))

(declare-fun b!362832 () Bool)

(assert (=> b!362832 (= e!222207 call!27217)))

(assert (= (and d!71959 c!53712) b!362831))

(assert (= (and d!71959 (not c!53712)) b!362830))

(assert (= (and b!362830 c!53711) b!362829))

(assert (= (and b!362830 (not c!53711)) b!362832))

(assert (= (or b!362829 b!362832) bm!27214))

(assert (=> b!362830 m!359683))

(assert (=> b!362830 m!359683))

(assert (=> b!362830 m!359685))

(declare-fun m!359739 () Bool)

(assert (=> bm!27214 m!359739))

(assert (=> b!362776 d!71959))

(push 1)

(assert (not bm!27213))

(assert (not b!362826))

(assert (not b!362830))

(assert (not bm!27214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!362857 () Bool)

