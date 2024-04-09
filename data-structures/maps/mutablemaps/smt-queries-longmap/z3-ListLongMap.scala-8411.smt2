; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102360 () Bool)

(assert start!102360)

(declare-fun b!1231252 () Bool)

(declare-fun res!819799 () Bool)

(declare-fun e!698507 () Bool)

(assert (=> b!1231252 (=> (not res!819799) (not e!698507))))

(declare-datatypes ((array!79408 0))(
  ( (array!79409 (arr!38317 (Array (_ BitVec 32) (_ BitVec 64))) (size!38854 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79408)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231252 (= res!819799 (validKeyInArray!0 (select (arr!38317 a!3806) from!3184)))))

(declare-fun b!1231253 () Bool)

(declare-fun res!819806 () Bool)

(declare-fun e!698509 () Bool)

(assert (=> b!1231253 (=> res!819806 e!698509)))

(declare-datatypes ((List!27268 0))(
  ( (Nil!27265) (Cons!27264 (h!28473 (_ BitVec 64)) (t!40738 List!27268)) )
))
(declare-fun contains!7183 (List!27268 (_ BitVec 64)) Bool)

(assert (=> b!1231253 (= res!819806 (contains!7183 Nil!27265 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231254 () Bool)

(declare-fun acc!823 () List!27268)

(declare-fun subseq!501 (List!27268 List!27268) Bool)

(assert (=> b!1231254 (= e!698509 (subseq!501 Nil!27265 acc!823))))

(declare-fun b!1231255 () Bool)

(declare-fun res!819796 () Bool)

(assert (=> b!1231255 (=> (not res!819796) (not e!698507))))

(assert (=> b!1231255 (= res!819796 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38854 a!3806)) (bvslt from!3184 (size!38854 a!3806))))))

(declare-fun b!1231256 () Bool)

(declare-fun res!819795 () Bool)

(assert (=> b!1231256 (=> (not res!819795) (not e!698507))))

(assert (=> b!1231256 (= res!819795 (not (contains!7183 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231257 () Bool)

(assert (=> b!1231257 (= e!698507 (not e!698509))))

(declare-fun res!819801 () Bool)

(assert (=> b!1231257 (=> res!819801 e!698509)))

(assert (=> b!1231257 (= res!819801 (bvsgt from!3184 (size!38854 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79408 (_ BitVec 32) List!27268) Bool)

(assert (=> b!1231257 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27264 (select (arr!38317 a!3806) from!3184) acc!823))))

(declare-fun b!1231258 () Bool)

(declare-fun res!819803 () Bool)

(assert (=> b!1231258 (=> res!819803 e!698509)))

(assert (=> b!1231258 (= res!819803 (contains!7183 Nil!27265 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231259 () Bool)

(declare-fun res!819798 () Bool)

(assert (=> b!1231259 (=> (not res!819798) (not e!698507))))

(assert (=> b!1231259 (= res!819798 (not (contains!7183 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231260 () Bool)

(declare-fun res!819804 () Bool)

(assert (=> b!1231260 (=> (not res!819804) (not e!698507))))

(assert (=> b!1231260 (= res!819804 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231261 () Bool)

(declare-fun res!819800 () Bool)

(assert (=> b!1231261 (=> (not res!819800) (not e!698507))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231261 (= res!819800 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231262 () Bool)

(declare-fun res!819805 () Bool)

(assert (=> b!1231262 (=> (not res!819805) (not e!698507))))

(assert (=> b!1231262 (= res!819805 (validKeyInArray!0 k0!2913))))

(declare-fun res!819797 () Bool)

(assert (=> start!102360 (=> (not res!819797) (not e!698507))))

(assert (=> start!102360 (= res!819797 (bvslt (size!38854 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102360 e!698507))

(declare-fun array_inv!29093 (array!79408) Bool)

(assert (=> start!102360 (array_inv!29093 a!3806)))

(assert (=> start!102360 true))

(declare-fun b!1231263 () Bool)

(declare-fun res!819802 () Bool)

(assert (=> b!1231263 (=> (not res!819802) (not e!698507))))

(declare-fun noDuplicate!1790 (List!27268) Bool)

(assert (=> b!1231263 (= res!819802 (noDuplicate!1790 acc!823))))

(assert (= (and start!102360 res!819797) b!1231262))

(assert (= (and b!1231262 res!819805) b!1231255))

(assert (= (and b!1231255 res!819796) b!1231263))

(assert (= (and b!1231263 res!819802) b!1231256))

(assert (= (and b!1231256 res!819795) b!1231259))

(assert (= (and b!1231259 res!819798) b!1231261))

(assert (= (and b!1231261 res!819800) b!1231260))

(assert (= (and b!1231260 res!819804) b!1231252))

(assert (= (and b!1231252 res!819799) b!1231257))

(assert (= (and b!1231257 (not res!819801)) b!1231253))

(assert (= (and b!1231253 (not res!819806)) b!1231258))

(assert (= (and b!1231258 (not res!819803)) b!1231254))

(declare-fun m!1135513 () Bool)

(assert (=> b!1231261 m!1135513))

(declare-fun m!1135515 () Bool)

(assert (=> b!1231258 m!1135515))

(declare-fun m!1135517 () Bool)

(assert (=> b!1231253 m!1135517))

(declare-fun m!1135519 () Bool)

(assert (=> b!1231259 m!1135519))

(declare-fun m!1135521 () Bool)

(assert (=> b!1231262 m!1135521))

(declare-fun m!1135523 () Bool)

(assert (=> b!1231260 m!1135523))

(declare-fun m!1135525 () Bool)

(assert (=> b!1231263 m!1135525))

(declare-fun m!1135527 () Bool)

(assert (=> b!1231252 m!1135527))

(assert (=> b!1231252 m!1135527))

(declare-fun m!1135529 () Bool)

(assert (=> b!1231252 m!1135529))

(declare-fun m!1135531 () Bool)

(assert (=> start!102360 m!1135531))

(assert (=> b!1231257 m!1135527))

(declare-fun m!1135533 () Bool)

(assert (=> b!1231257 m!1135533))

(declare-fun m!1135535 () Bool)

(assert (=> b!1231254 m!1135535))

(declare-fun m!1135537 () Bool)

(assert (=> b!1231256 m!1135537))

(check-sat (not b!1231258) (not b!1231263) (not b!1231259) (not b!1231256) (not b!1231260) (not b!1231253) (not b!1231261) (not b!1231254) (not b!1231262) (not b!1231257) (not start!102360) (not b!1231252))
(check-sat)
(get-model)

(declare-fun d!134659 () Bool)

(declare-fun res!819847 () Bool)

(declare-fun e!698523 () Bool)

(assert (=> d!134659 (=> res!819847 e!698523)))

(assert (=> d!134659 (= res!819847 (= (select (arr!38317 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!134659 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!698523)))

(declare-fun b!1231304 () Bool)

(declare-fun e!698524 () Bool)

(assert (=> b!1231304 (= e!698523 e!698524)))

(declare-fun res!819848 () Bool)

(assert (=> b!1231304 (=> (not res!819848) (not e!698524))))

(assert (=> b!1231304 (= res!819848 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38854 a!3806)))))

(declare-fun b!1231305 () Bool)

(assert (=> b!1231305 (= e!698524 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134659 (not res!819847)) b!1231304))

(assert (= (and b!1231304 res!819848) b!1231305))

(declare-fun m!1135565 () Bool)

(assert (=> d!134659 m!1135565))

(declare-fun m!1135567 () Bool)

(assert (=> b!1231305 m!1135567))

(assert (=> b!1231261 d!134659))

(declare-fun d!134661 () Bool)

(assert (=> d!134661 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1231262 d!134661))

(declare-fun d!134663 () Bool)

(assert (=> d!134663 (= (validKeyInArray!0 (select (arr!38317 a!3806) from!3184)) (and (not (= (select (arr!38317 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38317 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1231252 d!134663))

(declare-fun d!134665 () Bool)

(declare-fun res!819853 () Bool)

(declare-fun e!698529 () Bool)

(assert (=> d!134665 (=> res!819853 e!698529)))

(get-info :version)

(assert (=> d!134665 (= res!819853 ((_ is Nil!27265) acc!823))))

(assert (=> d!134665 (= (noDuplicate!1790 acc!823) e!698529)))

(declare-fun b!1231310 () Bool)

(declare-fun e!698530 () Bool)

(assert (=> b!1231310 (= e!698529 e!698530)))

(declare-fun res!819854 () Bool)

(assert (=> b!1231310 (=> (not res!819854) (not e!698530))))

(assert (=> b!1231310 (= res!819854 (not (contains!7183 (t!40738 acc!823) (h!28473 acc!823))))))

(declare-fun b!1231311 () Bool)

(assert (=> b!1231311 (= e!698530 (noDuplicate!1790 (t!40738 acc!823)))))

(assert (= (and d!134665 (not res!819853)) b!1231310))

(assert (= (and b!1231310 res!819854) b!1231311))

(declare-fun m!1135569 () Bool)

(assert (=> b!1231310 m!1135569))

(declare-fun m!1135571 () Bool)

(assert (=> b!1231311 m!1135571))

(assert (=> b!1231263 d!134665))

(declare-fun d!134669 () Bool)

(declare-fun lt!559349 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!570 (List!27268) (InoxSet (_ BitVec 64)))

(assert (=> d!134669 (= lt!559349 (select (content!570 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698541 () Bool)

(assert (=> d!134669 (= lt!559349 e!698541)))

(declare-fun res!819865 () Bool)

(assert (=> d!134669 (=> (not res!819865) (not e!698541))))

(assert (=> d!134669 (= res!819865 ((_ is Cons!27264) acc!823))))

(assert (=> d!134669 (= (contains!7183 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559349)))

(declare-fun b!1231322 () Bool)

(declare-fun e!698542 () Bool)

(assert (=> b!1231322 (= e!698541 e!698542)))

(declare-fun res!819866 () Bool)

(assert (=> b!1231322 (=> res!819866 e!698542)))

(assert (=> b!1231322 (= res!819866 (= (h!28473 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231323 () Bool)

(assert (=> b!1231323 (= e!698542 (contains!7183 (t!40738 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134669 res!819865) b!1231322))

(assert (= (and b!1231322 (not res!819866)) b!1231323))

(declare-fun m!1135577 () Bool)

(assert (=> d!134669 m!1135577))

(declare-fun m!1135579 () Bool)

(assert (=> d!134669 m!1135579))

(declare-fun m!1135581 () Bool)

(assert (=> b!1231323 m!1135581))

(assert (=> b!1231259 d!134669))

(declare-fun d!134677 () Bool)

(declare-fun res!819899 () Bool)

(declare-fun e!698578 () Bool)

(assert (=> d!134677 (=> res!819899 e!698578)))

(assert (=> d!134677 (= res!819899 (bvsge from!3184 (size!38854 a!3806)))))

(assert (=> d!134677 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!698578)))

(declare-fun b!1231360 () Bool)

(declare-fun e!698577 () Bool)

(declare-fun call!60881 () Bool)

(assert (=> b!1231360 (= e!698577 call!60881)))

(declare-fun b!1231361 () Bool)

(declare-fun e!698579 () Bool)

(assert (=> b!1231361 (= e!698579 (contains!7183 acc!823 (select (arr!38317 a!3806) from!3184)))))

(declare-fun bm!60878 () Bool)

(declare-fun c!120593 () Bool)

(assert (=> bm!60878 (= call!60881 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120593 (Cons!27264 (select (arr!38317 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1231362 () Bool)

(assert (=> b!1231362 (= e!698577 call!60881)))

(declare-fun b!1231363 () Bool)

(declare-fun e!698580 () Bool)

(assert (=> b!1231363 (= e!698580 e!698577)))

(assert (=> b!1231363 (= c!120593 (validKeyInArray!0 (select (arr!38317 a!3806) from!3184)))))

(declare-fun b!1231364 () Bool)

(assert (=> b!1231364 (= e!698578 e!698580)))

(declare-fun res!819900 () Bool)

(assert (=> b!1231364 (=> (not res!819900) (not e!698580))))

(assert (=> b!1231364 (= res!819900 (not e!698579))))

(declare-fun res!819901 () Bool)

(assert (=> b!1231364 (=> (not res!819901) (not e!698579))))

(assert (=> b!1231364 (= res!819901 (validKeyInArray!0 (select (arr!38317 a!3806) from!3184)))))

(assert (= (and d!134677 (not res!819899)) b!1231364))

(assert (= (and b!1231364 res!819901) b!1231361))

(assert (= (and b!1231364 res!819900) b!1231363))

(assert (= (and b!1231363 c!120593) b!1231362))

(assert (= (and b!1231363 (not c!120593)) b!1231360))

(assert (= (or b!1231362 b!1231360) bm!60878))

(assert (=> b!1231361 m!1135527))

(assert (=> b!1231361 m!1135527))

(declare-fun m!1135601 () Bool)

(assert (=> b!1231361 m!1135601))

(assert (=> bm!60878 m!1135527))

(declare-fun m!1135603 () Bool)

(assert (=> bm!60878 m!1135603))

(assert (=> b!1231363 m!1135527))

(assert (=> b!1231363 m!1135527))

(assert (=> b!1231363 m!1135529))

(assert (=> b!1231364 m!1135527))

(assert (=> b!1231364 m!1135527))

(assert (=> b!1231364 m!1135529))

(assert (=> b!1231260 d!134677))

(declare-fun d!134691 () Bool)

(declare-fun lt!559354 () Bool)

(assert (=> d!134691 (= lt!559354 (select (content!570 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698589 () Bool)

(assert (=> d!134691 (= lt!559354 e!698589)))

(declare-fun res!819908 () Bool)

(assert (=> d!134691 (=> (not res!819908) (not e!698589))))

(assert (=> d!134691 (= res!819908 ((_ is Cons!27264) acc!823))))

(assert (=> d!134691 (= (contains!7183 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559354)))

(declare-fun b!1231375 () Bool)

(declare-fun e!698590 () Bool)

(assert (=> b!1231375 (= e!698589 e!698590)))

(declare-fun res!819909 () Bool)

(assert (=> b!1231375 (=> res!819909 e!698590)))

(assert (=> b!1231375 (= res!819909 (= (h!28473 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231376 () Bool)

(assert (=> b!1231376 (= e!698590 (contains!7183 (t!40738 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134691 res!819908) b!1231375))

(assert (= (and b!1231375 (not res!819909)) b!1231376))

(assert (=> d!134691 m!1135577))

(declare-fun m!1135605 () Bool)

(assert (=> d!134691 m!1135605))

(declare-fun m!1135607 () Bool)

(assert (=> b!1231376 m!1135607))

(assert (=> b!1231256 d!134691))

(declare-fun d!134693 () Bool)

(assert (=> d!134693 (= (array_inv!29093 a!3806) (bvsge (size!38854 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102360 d!134693))

(declare-fun d!134695 () Bool)

(declare-fun res!819918 () Bool)

(declare-fun e!698600 () Bool)

(assert (=> d!134695 (=> res!819918 e!698600)))

(assert (=> d!134695 (= res!819918 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38854 a!3806)))))

(assert (=> d!134695 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27264 (select (arr!38317 a!3806) from!3184) acc!823)) e!698600)))

(declare-fun b!1231385 () Bool)

(declare-fun e!698599 () Bool)

(declare-fun call!60884 () Bool)

(assert (=> b!1231385 (= e!698599 call!60884)))

(declare-fun b!1231386 () Bool)

(declare-fun e!698601 () Bool)

(assert (=> b!1231386 (= e!698601 (contains!7183 (Cons!27264 (select (arr!38317 a!3806) from!3184) acc!823) (select (arr!38317 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun c!120596 () Bool)

(declare-fun bm!60881 () Bool)

(assert (=> bm!60881 (= call!60884 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120596 (Cons!27264 (select (arr!38317 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27264 (select (arr!38317 a!3806) from!3184) acc!823)) (Cons!27264 (select (arr!38317 a!3806) from!3184) acc!823))))))

(declare-fun b!1231387 () Bool)

(assert (=> b!1231387 (= e!698599 call!60884)))

(declare-fun b!1231388 () Bool)

(declare-fun e!698602 () Bool)

(assert (=> b!1231388 (= e!698602 e!698599)))

(assert (=> b!1231388 (= c!120596 (validKeyInArray!0 (select (arr!38317 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1231389 () Bool)

(assert (=> b!1231389 (= e!698600 e!698602)))

(declare-fun res!819919 () Bool)

(assert (=> b!1231389 (=> (not res!819919) (not e!698602))))

(assert (=> b!1231389 (= res!819919 (not e!698601))))

(declare-fun res!819920 () Bool)

(assert (=> b!1231389 (=> (not res!819920) (not e!698601))))

(assert (=> b!1231389 (= res!819920 (validKeyInArray!0 (select (arr!38317 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134695 (not res!819918)) b!1231389))

(assert (= (and b!1231389 res!819920) b!1231386))

(assert (= (and b!1231389 res!819919) b!1231388))

(assert (= (and b!1231388 c!120596) b!1231387))

(assert (= (and b!1231388 (not c!120596)) b!1231385))

(assert (= (or b!1231387 b!1231385) bm!60881))

(assert (=> b!1231386 m!1135565))

(assert (=> b!1231386 m!1135565))

(declare-fun m!1135609 () Bool)

(assert (=> b!1231386 m!1135609))

(assert (=> bm!60881 m!1135565))

(declare-fun m!1135611 () Bool)

(assert (=> bm!60881 m!1135611))

(assert (=> b!1231388 m!1135565))

(assert (=> b!1231388 m!1135565))

(declare-fun m!1135613 () Bool)

(assert (=> b!1231388 m!1135613))

(assert (=> b!1231389 m!1135565))

(assert (=> b!1231389 m!1135565))

(assert (=> b!1231389 m!1135613))

(assert (=> b!1231257 d!134695))

(declare-fun d!134697 () Bool)

(declare-fun lt!559355 () Bool)

(assert (=> d!134697 (= lt!559355 (select (content!570 Nil!27265) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698603 () Bool)

(assert (=> d!134697 (= lt!559355 e!698603)))

(declare-fun res!819921 () Bool)

(assert (=> d!134697 (=> (not res!819921) (not e!698603))))

(assert (=> d!134697 (= res!819921 ((_ is Cons!27264) Nil!27265))))

(assert (=> d!134697 (= (contains!7183 Nil!27265 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559355)))

(declare-fun b!1231390 () Bool)

(declare-fun e!698604 () Bool)

(assert (=> b!1231390 (= e!698603 e!698604)))

(declare-fun res!819922 () Bool)

(assert (=> b!1231390 (=> res!819922 e!698604)))

(assert (=> b!1231390 (= res!819922 (= (h!28473 Nil!27265) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231391 () Bool)

(assert (=> b!1231391 (= e!698604 (contains!7183 (t!40738 Nil!27265) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134697 res!819921) b!1231390))

(assert (= (and b!1231390 (not res!819922)) b!1231391))

(declare-fun m!1135615 () Bool)

(assert (=> d!134697 m!1135615))

(declare-fun m!1135617 () Bool)

(assert (=> d!134697 m!1135617))

(declare-fun m!1135619 () Bool)

(assert (=> b!1231391 m!1135619))

(assert (=> b!1231258 d!134697))

(declare-fun d!134699 () Bool)

(declare-fun lt!559356 () Bool)

(assert (=> d!134699 (= lt!559356 (select (content!570 Nil!27265) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698613 () Bool)

(assert (=> d!134699 (= lt!559356 e!698613)))

(declare-fun res!819930 () Bool)

(assert (=> d!134699 (=> (not res!819930) (not e!698613))))

(assert (=> d!134699 (= res!819930 ((_ is Cons!27264) Nil!27265))))

(assert (=> d!134699 (= (contains!7183 Nil!27265 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559356)))

(declare-fun b!1231401 () Bool)

(declare-fun e!698614 () Bool)

(assert (=> b!1231401 (= e!698613 e!698614)))

(declare-fun res!819931 () Bool)

(assert (=> b!1231401 (=> res!819931 e!698614)))

(assert (=> b!1231401 (= res!819931 (= (h!28473 Nil!27265) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231402 () Bool)

(assert (=> b!1231402 (= e!698614 (contains!7183 (t!40738 Nil!27265) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134699 res!819930) b!1231401))

(assert (= (and b!1231401 (not res!819931)) b!1231402))

(assert (=> d!134699 m!1135615))

(declare-fun m!1135625 () Bool)

(assert (=> d!134699 m!1135625))

(declare-fun m!1135627 () Bool)

(assert (=> b!1231402 m!1135627))

(assert (=> b!1231253 d!134699))

(declare-fun b!1231429 () Bool)

(declare-fun e!698638 () Bool)

(assert (=> b!1231429 (= e!698638 (subseq!501 (t!40738 Nil!27265) (t!40738 acc!823)))))

(declare-fun b!1231430 () Bool)

(declare-fun e!698639 () Bool)

(assert (=> b!1231430 (= e!698639 (subseq!501 Nil!27265 (t!40738 acc!823)))))

(declare-fun b!1231427 () Bool)

(declare-fun e!698640 () Bool)

(declare-fun e!698637 () Bool)

(assert (=> b!1231427 (= e!698640 e!698637)))

(declare-fun res!819954 () Bool)

(assert (=> b!1231427 (=> (not res!819954) (not e!698637))))

(assert (=> b!1231427 (= res!819954 ((_ is Cons!27264) acc!823))))

(declare-fun d!134703 () Bool)

(declare-fun res!819952 () Bool)

(assert (=> d!134703 (=> res!819952 e!698640)))

(assert (=> d!134703 (= res!819952 ((_ is Nil!27265) Nil!27265))))

(assert (=> d!134703 (= (subseq!501 Nil!27265 acc!823) e!698640)))

(declare-fun b!1231428 () Bool)

(assert (=> b!1231428 (= e!698637 e!698639)))

(declare-fun res!819955 () Bool)

(assert (=> b!1231428 (=> res!819955 e!698639)))

(assert (=> b!1231428 (= res!819955 e!698638)))

(declare-fun res!819953 () Bool)

(assert (=> b!1231428 (=> (not res!819953) (not e!698638))))

(assert (=> b!1231428 (= res!819953 (= (h!28473 Nil!27265) (h!28473 acc!823)))))

(assert (= (and d!134703 (not res!819952)) b!1231427))

(assert (= (and b!1231427 res!819954) b!1231428))

(assert (= (and b!1231428 res!819953) b!1231429))

(assert (= (and b!1231428 (not res!819955)) b!1231430))

(declare-fun m!1135643 () Bool)

(assert (=> b!1231429 m!1135643))

(declare-fun m!1135645 () Bool)

(assert (=> b!1231430 m!1135645))

(assert (=> b!1231254 d!134703))

(check-sat (not b!1231323) (not b!1231376) (not d!134699) (not b!1231388) (not b!1231402) (not b!1231310) (not b!1231391) (not d!134669) (not bm!60878) (not b!1231386) (not b!1231429) (not d!134691) (not b!1231363) (not b!1231305) (not b!1231364) (not d!134697) (not b!1231311) (not b!1231389) (not b!1231430) (not b!1231361) (not bm!60881))
(check-sat)
