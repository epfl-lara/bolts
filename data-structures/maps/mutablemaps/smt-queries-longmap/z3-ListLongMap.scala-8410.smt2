; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102318 () Bool)

(assert start!102318)

(declare-fun b!1231016 () Bool)

(declare-fun res!819592 () Bool)

(declare-fun e!698358 () Bool)

(assert (=> b!1231016 (=> (not res!819592) (not e!698358))))

(declare-datatypes ((array!79399 0))(
  ( (array!79400 (arr!38314 (Array (_ BitVec 32) (_ BitVec 64))) (size!38851 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79399)

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231016 (= res!819592 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231017 () Bool)

(declare-fun res!819583 () Bool)

(assert (=> b!1231017 (=> (not res!819583) (not e!698358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231017 (= res!819583 (validKeyInArray!0 k0!2913))))

(declare-fun b!1231018 () Bool)

(declare-fun res!819588 () Bool)

(assert (=> b!1231018 (=> (not res!819588) (not e!698358))))

(declare-datatypes ((List!27265 0))(
  ( (Nil!27262) (Cons!27261 (h!28470 (_ BitVec 64)) (t!40735 List!27265)) )
))
(declare-fun acc!823 () List!27265)

(declare-fun contains!7180 (List!27265 (_ BitVec 64)) Bool)

(assert (=> b!1231018 (= res!819588 (not (contains!7180 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231019 () Bool)

(declare-fun e!698359 () Bool)

(assert (=> b!1231019 (= e!698359 (not (contains!7180 Nil!27262 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231020 () Bool)

(declare-fun e!698356 () Bool)

(assert (=> b!1231020 (= e!698358 (not e!698356))))

(declare-fun res!819586 () Bool)

(assert (=> b!1231020 (=> res!819586 e!698356)))

(assert (=> b!1231020 (= res!819586 (bvsgt from!3184 (size!38851 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79399 (_ BitVec 32) List!27265) Bool)

(assert (=> b!1231020 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27261 (select (arr!38314 a!3806) from!3184) acc!823))))

(declare-fun res!819584 () Bool)

(assert (=> start!102318 (=> (not res!819584) (not e!698358))))

(assert (=> start!102318 (= res!819584 (bvslt (size!38851 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102318 e!698358))

(declare-fun array_inv!29090 (array!79399) Bool)

(assert (=> start!102318 (array_inv!29090 a!3806)))

(assert (=> start!102318 true))

(declare-fun b!1231021 () Bool)

(declare-fun res!819585 () Bool)

(assert (=> b!1231021 (=> (not res!819585) (not e!698358))))

(assert (=> b!1231021 (= res!819585 (not (contains!7180 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231022 () Bool)

(assert (=> b!1231022 (= e!698356 e!698359)))

(declare-fun res!819589 () Bool)

(assert (=> b!1231022 (=> (not res!819589) (not e!698359))))

(assert (=> b!1231022 (= res!819589 (not (contains!7180 Nil!27262 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231023 () Bool)

(declare-fun res!819591 () Bool)

(assert (=> b!1231023 (=> (not res!819591) (not e!698358))))

(assert (=> b!1231023 (= res!819591 (validKeyInArray!0 (select (arr!38314 a!3806) from!3184)))))

(declare-fun b!1231024 () Bool)

(declare-fun res!819590 () Bool)

(assert (=> b!1231024 (=> (not res!819590) (not e!698358))))

(declare-fun noDuplicate!1787 (List!27265) Bool)

(assert (=> b!1231024 (= res!819590 (noDuplicate!1787 acc!823))))

(declare-fun b!1231025 () Bool)

(declare-fun res!819593 () Bool)

(assert (=> b!1231025 (=> (not res!819593) (not e!698358))))

(assert (=> b!1231025 (= res!819593 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38851 a!3806)) (bvslt from!3184 (size!38851 a!3806))))))

(declare-fun b!1231026 () Bool)

(declare-fun res!819587 () Bool)

(assert (=> b!1231026 (=> (not res!819587) (not e!698358))))

(assert (=> b!1231026 (= res!819587 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(assert (= (and start!102318 res!819584) b!1231017))

(assert (= (and b!1231017 res!819583) b!1231025))

(assert (= (and b!1231025 res!819593) b!1231024))

(assert (= (and b!1231024 res!819590) b!1231018))

(assert (= (and b!1231018 res!819588) b!1231021))

(assert (= (and b!1231021 res!819585) b!1231016))

(assert (= (and b!1231016 res!819592) b!1231026))

(assert (= (and b!1231026 res!819587) b!1231023))

(assert (= (and b!1231023 res!819591) b!1231020))

(assert (= (and b!1231020 (not res!819586)) b!1231022))

(assert (= (and b!1231022 res!819589) b!1231019))

(declare-fun m!1135325 () Bool)

(assert (=> b!1231016 m!1135325))

(declare-fun m!1135327 () Bool)

(assert (=> b!1231022 m!1135327))

(declare-fun m!1135329 () Bool)

(assert (=> b!1231020 m!1135329))

(declare-fun m!1135331 () Bool)

(assert (=> b!1231020 m!1135331))

(declare-fun m!1135333 () Bool)

(assert (=> b!1231018 m!1135333))

(declare-fun m!1135335 () Bool)

(assert (=> b!1231024 m!1135335))

(declare-fun m!1135337 () Bool)

(assert (=> b!1231026 m!1135337))

(assert (=> b!1231023 m!1135329))

(assert (=> b!1231023 m!1135329))

(declare-fun m!1135339 () Bool)

(assert (=> b!1231023 m!1135339))

(declare-fun m!1135341 () Bool)

(assert (=> start!102318 m!1135341))

(declare-fun m!1135343 () Bool)

(assert (=> b!1231019 m!1135343))

(declare-fun m!1135345 () Bool)

(assert (=> b!1231021 m!1135345))

(declare-fun m!1135347 () Bool)

(assert (=> b!1231017 m!1135347))

(check-sat (not b!1231024) (not b!1231017) (not b!1231022) (not b!1231019) (not b!1231016) (not b!1231023) (not b!1231018) (not b!1231026) (not start!102318) (not b!1231021) (not b!1231020))
(check-sat)
(get-model)

(declare-fun d!134591 () Bool)

(assert (=> d!134591 (= (array_inv!29090 a!3806) (bvsge (size!38851 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102318 d!134591))

(declare-fun d!134593 () Bool)

(assert (=> d!134593 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1231017 d!134593))

(declare-fun d!134597 () Bool)

(declare-fun lt!559331 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!567 (List!27265) (InoxSet (_ BitVec 64)))

(assert (=> d!134597 (= lt!559331 (select (content!567 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698386 () Bool)

(assert (=> d!134597 (= lt!559331 e!698386)))

(declare-fun res!819641 () Bool)

(assert (=> d!134597 (=> (not res!819641) (not e!698386))))

(get-info :version)

(assert (=> d!134597 (= res!819641 ((_ is Cons!27261) acc!823))))

(assert (=> d!134597 (= (contains!7180 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559331)))

(declare-fun b!1231074 () Bool)

(declare-fun e!698387 () Bool)

(assert (=> b!1231074 (= e!698386 e!698387)))

(declare-fun res!819642 () Bool)

(assert (=> b!1231074 (=> res!819642 e!698387)))

(assert (=> b!1231074 (= res!819642 (= (h!28470 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231075 () Bool)

(assert (=> b!1231075 (= e!698387 (contains!7180 (t!40735 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134597 res!819641) b!1231074))

(assert (= (and b!1231074 (not res!819642)) b!1231075))

(declare-fun m!1135373 () Bool)

(assert (=> d!134597 m!1135373))

(declare-fun m!1135375 () Bool)

(assert (=> d!134597 m!1135375))

(declare-fun m!1135377 () Bool)

(assert (=> b!1231075 m!1135377))

(assert (=> b!1231018 d!134597))

(declare-fun d!134603 () Bool)

(assert (=> d!134603 (= (validKeyInArray!0 (select (arr!38314 a!3806) from!3184)) (and (not (= (select (arr!38314 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38314 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1231023 d!134603))

(declare-fun d!134605 () Bool)

(declare-fun res!819653 () Bool)

(declare-fun e!698400 () Bool)

(assert (=> d!134605 (=> res!819653 e!698400)))

(assert (=> d!134605 (= res!819653 ((_ is Nil!27262) acc!823))))

(assert (=> d!134605 (= (noDuplicate!1787 acc!823) e!698400)))

(declare-fun b!1231090 () Bool)

(declare-fun e!698401 () Bool)

(assert (=> b!1231090 (= e!698400 e!698401)))

(declare-fun res!819654 () Bool)

(assert (=> b!1231090 (=> (not res!819654) (not e!698401))))

(assert (=> b!1231090 (= res!819654 (not (contains!7180 (t!40735 acc!823) (h!28470 acc!823))))))

(declare-fun b!1231091 () Bool)

(assert (=> b!1231091 (= e!698401 (noDuplicate!1787 (t!40735 acc!823)))))

(assert (= (and d!134605 (not res!819653)) b!1231090))

(assert (= (and b!1231090 res!819654) b!1231091))

(declare-fun m!1135383 () Bool)

(assert (=> b!1231090 m!1135383))

(declare-fun m!1135387 () Bool)

(assert (=> b!1231091 m!1135387))

(assert (=> b!1231024 d!134605))

(declare-fun d!134609 () Bool)

(declare-fun lt!559332 () Bool)

(assert (=> d!134609 (= lt!559332 (select (content!567 Nil!27262) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698408 () Bool)

(assert (=> d!134609 (= lt!559332 e!698408)))

(declare-fun res!819660 () Bool)

(assert (=> d!134609 (=> (not res!819660) (not e!698408))))

(assert (=> d!134609 (= res!819660 ((_ is Cons!27261) Nil!27262))))

(assert (=> d!134609 (= (contains!7180 Nil!27262 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559332)))

(declare-fun b!1231099 () Bool)

(declare-fun e!698409 () Bool)

(assert (=> b!1231099 (= e!698408 e!698409)))

(declare-fun res!819661 () Bool)

(assert (=> b!1231099 (=> res!819661 e!698409)))

(assert (=> b!1231099 (= res!819661 (= (h!28470 Nil!27262) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231100 () Bool)

(assert (=> b!1231100 (= e!698409 (contains!7180 (t!40735 Nil!27262) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134609 res!819660) b!1231099))

(assert (= (and b!1231099 (not res!819661)) b!1231100))

(declare-fun m!1135391 () Bool)

(assert (=> d!134609 m!1135391))

(declare-fun m!1135393 () Bool)

(assert (=> d!134609 m!1135393))

(declare-fun m!1135395 () Bool)

(assert (=> b!1231100 m!1135395))

(assert (=> b!1231019 d!134609))

(declare-fun b!1231132 () Bool)

(declare-fun e!698441 () Bool)

(declare-fun e!698439 () Bool)

(assert (=> b!1231132 (= e!698441 e!698439)))

(declare-fun c!120585 () Bool)

(assert (=> b!1231132 (= c!120585 (validKeyInArray!0 (select (arr!38314 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1231133 () Bool)

(declare-fun e!698438 () Bool)

(assert (=> b!1231133 (= e!698438 (contains!7180 (Cons!27261 (select (arr!38314 a!3806) from!3184) acc!823) (select (arr!38314 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun call!60873 () Bool)

(declare-fun bm!60870 () Bool)

(assert (=> bm!60870 (= call!60873 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120585 (Cons!27261 (select (arr!38314 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27261 (select (arr!38314 a!3806) from!3184) acc!823)) (Cons!27261 (select (arr!38314 a!3806) from!3184) acc!823))))))

(declare-fun b!1231134 () Bool)

(assert (=> b!1231134 (= e!698439 call!60873)))

(declare-fun d!134613 () Bool)

(declare-fun res!819688 () Bool)

(declare-fun e!698440 () Bool)

(assert (=> d!134613 (=> res!819688 e!698440)))

(assert (=> d!134613 (= res!819688 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38851 a!3806)))))

(assert (=> d!134613 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27261 (select (arr!38314 a!3806) from!3184) acc!823)) e!698440)))

(declare-fun b!1231135 () Bool)

(assert (=> b!1231135 (= e!698439 call!60873)))

(declare-fun b!1231136 () Bool)

(assert (=> b!1231136 (= e!698440 e!698441)))

(declare-fun res!819687 () Bool)

(assert (=> b!1231136 (=> (not res!819687) (not e!698441))))

(assert (=> b!1231136 (= res!819687 (not e!698438))))

(declare-fun res!819689 () Bool)

(assert (=> b!1231136 (=> (not res!819689) (not e!698438))))

(assert (=> b!1231136 (= res!819689 (validKeyInArray!0 (select (arr!38314 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134613 (not res!819688)) b!1231136))

(assert (= (and b!1231136 res!819689) b!1231133))

(assert (= (and b!1231136 res!819687) b!1231132))

(assert (= (and b!1231132 c!120585) b!1231135))

(assert (= (and b!1231132 (not c!120585)) b!1231134))

(assert (= (or b!1231135 b!1231134) bm!60870))

(declare-fun m!1135431 () Bool)

(assert (=> b!1231132 m!1135431))

(assert (=> b!1231132 m!1135431))

(declare-fun m!1135433 () Bool)

(assert (=> b!1231132 m!1135433))

(assert (=> b!1231133 m!1135431))

(assert (=> b!1231133 m!1135431))

(declare-fun m!1135435 () Bool)

(assert (=> b!1231133 m!1135435))

(assert (=> bm!60870 m!1135431))

(declare-fun m!1135437 () Bool)

(assert (=> bm!60870 m!1135437))

(assert (=> b!1231136 m!1135431))

(assert (=> b!1231136 m!1135431))

(assert (=> b!1231136 m!1135433))

(assert (=> b!1231020 d!134613))

(declare-fun b!1231141 () Bool)

(declare-fun e!698449 () Bool)

(declare-fun e!698447 () Bool)

(assert (=> b!1231141 (= e!698449 e!698447)))

(declare-fun c!120586 () Bool)

(assert (=> b!1231141 (= c!120586 (validKeyInArray!0 (select (arr!38314 a!3806) from!3184)))))

(declare-fun b!1231142 () Bool)

(declare-fun e!698446 () Bool)

(assert (=> b!1231142 (= e!698446 (contains!7180 acc!823 (select (arr!38314 a!3806) from!3184)))))

(declare-fun bm!60871 () Bool)

(declare-fun call!60874 () Bool)

(assert (=> bm!60871 (= call!60874 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120586 (Cons!27261 (select (arr!38314 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1231143 () Bool)

(assert (=> b!1231143 (= e!698447 call!60874)))

(declare-fun d!134633 () Bool)

(declare-fun res!819695 () Bool)

(declare-fun e!698448 () Bool)

(assert (=> d!134633 (=> res!819695 e!698448)))

(assert (=> d!134633 (= res!819695 (bvsge from!3184 (size!38851 a!3806)))))

(assert (=> d!134633 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!698448)))

(declare-fun b!1231144 () Bool)

(assert (=> b!1231144 (= e!698447 call!60874)))

(declare-fun b!1231145 () Bool)

(assert (=> b!1231145 (= e!698448 e!698449)))

(declare-fun res!819694 () Bool)

(assert (=> b!1231145 (=> (not res!819694) (not e!698449))))

(assert (=> b!1231145 (= res!819694 (not e!698446))))

(declare-fun res!819696 () Bool)

(assert (=> b!1231145 (=> (not res!819696) (not e!698446))))

(assert (=> b!1231145 (= res!819696 (validKeyInArray!0 (select (arr!38314 a!3806) from!3184)))))

(assert (= (and d!134633 (not res!819695)) b!1231145))

(assert (= (and b!1231145 res!819696) b!1231142))

(assert (= (and b!1231145 res!819694) b!1231141))

(assert (= (and b!1231141 c!120586) b!1231144))

(assert (= (and b!1231141 (not c!120586)) b!1231143))

(assert (= (or b!1231144 b!1231143) bm!60871))

(assert (=> b!1231141 m!1135329))

(assert (=> b!1231141 m!1135329))

(assert (=> b!1231141 m!1135339))

(assert (=> b!1231142 m!1135329))

(assert (=> b!1231142 m!1135329))

(declare-fun m!1135439 () Bool)

(assert (=> b!1231142 m!1135439))

(assert (=> bm!60871 m!1135329))

(declare-fun m!1135441 () Bool)

(assert (=> bm!60871 m!1135441))

(assert (=> b!1231145 m!1135329))

(assert (=> b!1231145 m!1135329))

(assert (=> b!1231145 m!1135339))

(assert (=> b!1231026 d!134633))

(declare-fun d!134635 () Bool)

(declare-fun res!819715 () Bool)

(declare-fun e!698470 () Bool)

(assert (=> d!134635 (=> res!819715 e!698470)))

(assert (=> d!134635 (= res!819715 (= (select (arr!38314 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!134635 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!698470)))

(declare-fun b!1231168 () Bool)

(declare-fun e!698471 () Bool)

(assert (=> b!1231168 (= e!698470 e!698471)))

(declare-fun res!819716 () Bool)

(assert (=> b!1231168 (=> (not res!819716) (not e!698471))))

(assert (=> b!1231168 (= res!819716 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38851 a!3806)))))

(declare-fun b!1231169 () Bool)

(assert (=> b!1231169 (= e!698471 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134635 (not res!819715)) b!1231168))

(assert (= (and b!1231168 res!819716) b!1231169))

(assert (=> d!134635 m!1135431))

(declare-fun m!1135461 () Bool)

(assert (=> b!1231169 m!1135461))

(assert (=> b!1231016 d!134635))

(declare-fun d!134645 () Bool)

(declare-fun lt!559344 () Bool)

(assert (=> d!134645 (= lt!559344 (select (content!567 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698474 () Bool)

(assert (=> d!134645 (= lt!559344 e!698474)))

(declare-fun res!819719 () Bool)

(assert (=> d!134645 (=> (not res!819719) (not e!698474))))

(assert (=> d!134645 (= res!819719 ((_ is Cons!27261) acc!823))))

(assert (=> d!134645 (= (contains!7180 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559344)))

(declare-fun b!1231172 () Bool)

(declare-fun e!698475 () Bool)

(assert (=> b!1231172 (= e!698474 e!698475)))

(declare-fun res!819720 () Bool)

(assert (=> b!1231172 (=> res!819720 e!698475)))

(assert (=> b!1231172 (= res!819720 (= (h!28470 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231173 () Bool)

(assert (=> b!1231173 (= e!698475 (contains!7180 (t!40735 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134645 res!819719) b!1231172))

(assert (= (and b!1231172 (not res!819720)) b!1231173))

(assert (=> d!134645 m!1135373))

(declare-fun m!1135463 () Bool)

(assert (=> d!134645 m!1135463))

(declare-fun m!1135465 () Bool)

(assert (=> b!1231173 m!1135465))

(assert (=> b!1231021 d!134645))

(declare-fun d!134647 () Bool)

(declare-fun lt!559345 () Bool)

(assert (=> d!134647 (= lt!559345 (select (content!567 Nil!27262) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698482 () Bool)

(assert (=> d!134647 (= lt!559345 e!698482)))

(declare-fun res!819726 () Bool)

(assert (=> d!134647 (=> (not res!819726) (not e!698482))))

(assert (=> d!134647 (= res!819726 ((_ is Cons!27261) Nil!27262))))

(assert (=> d!134647 (= (contains!7180 Nil!27262 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559345)))

(declare-fun b!1231181 () Bool)

(declare-fun e!698483 () Bool)

(assert (=> b!1231181 (= e!698482 e!698483)))

(declare-fun res!819727 () Bool)

(assert (=> b!1231181 (=> res!819727 e!698483)))

(assert (=> b!1231181 (= res!819727 (= (h!28470 Nil!27262) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231182 () Bool)

(assert (=> b!1231182 (= e!698483 (contains!7180 (t!40735 Nil!27262) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134647 res!819726) b!1231181))

(assert (= (and b!1231181 (not res!819727)) b!1231182))

(assert (=> d!134647 m!1135391))

(declare-fun m!1135469 () Bool)

(assert (=> d!134647 m!1135469))

(declare-fun m!1135473 () Bool)

(assert (=> b!1231182 m!1135473))

(assert (=> b!1231022 d!134647))

(check-sat (not b!1231173) (not b!1231182) (not bm!60870) (not b!1231142) (not b!1231090) (not b!1231145) (not b!1231100) (not b!1231132) (not d!134645) (not d!134609) (not d!134597) (not b!1231141) (not bm!60871) (not b!1231133) (not b!1231075) (not d!134647) (not b!1231169) (not b!1231136) (not b!1231091))
(check-sat)
