; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92624 () Bool)

(assert start!92624)

(declare-fun b!1052932 () Bool)

(declare-fun res!702170 () Bool)

(declare-fun e!597936 () Bool)

(assert (=> b!1052932 (=> (not res!702170) (not e!597936))))

(declare-datatypes ((array!66373 0))(
  ( (array!66374 (arr!31922 (Array (_ BitVec 32) (_ BitVec 64))) (size!32459 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66373)

(declare-datatypes ((List!22365 0))(
  ( (Nil!22362) (Cons!22361 (h!23570 (_ BitVec 64)) (t!31679 List!22365)) )
))
(declare-fun arrayNoDuplicates!0 (array!66373 (_ BitVec 32) List!22365) Bool)

(assert (=> b!1052932 (= res!702170 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22362))))

(declare-fun b!1052934 () Bool)

(declare-fun res!702167 () Bool)

(assert (=> b!1052934 (=> (not res!702167) (not e!597936))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052934 (= res!702167 (= (select (arr!31922 a!3488) i!1381) k0!2747))))

(declare-fun lt!465001 () array!66373)

(declare-fun e!597938 () Bool)

(declare-fun b!1052935 () Bool)

(declare-fun arrayScanForKey!0 (array!66373 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052935 (= e!597938 (= (arrayScanForKey!0 lt!465001 k0!2747 #b00000000000000000000000000000000) i!1381))))

(declare-fun b!1052936 () Bool)

(declare-fun res!702169 () Bool)

(assert (=> b!1052936 (=> (not res!702169) (not e!597936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052936 (= res!702169 (validKeyInArray!0 k0!2747))))

(declare-fun b!1052933 () Bool)

(assert (=> b!1052933 (= e!597936 e!597938)))

(declare-fun res!702171 () Bool)

(assert (=> b!1052933 (=> (not res!702171) (not e!597938))))

(declare-fun arrayContainsKey!0 (array!66373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052933 (= res!702171 (arrayContainsKey!0 lt!465001 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052933 (= lt!465001 (array!66374 (store (arr!31922 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32459 a!3488)))))

(declare-fun res!702168 () Bool)

(assert (=> start!92624 (=> (not res!702168) (not e!597936))))

(assert (=> start!92624 (= res!702168 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32459 a!3488)) (bvslt (size!32459 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92624 e!597936))

(assert (=> start!92624 true))

(declare-fun array_inv!24544 (array!66373) Bool)

(assert (=> start!92624 (array_inv!24544 a!3488)))

(assert (= (and start!92624 res!702168) b!1052932))

(assert (= (and b!1052932 res!702170) b!1052936))

(assert (= (and b!1052936 res!702169) b!1052934))

(assert (= (and b!1052934 res!702167) b!1052933))

(assert (= (and b!1052933 res!702171) b!1052935))

(declare-fun m!973463 () Bool)

(assert (=> b!1052933 m!973463))

(declare-fun m!973465 () Bool)

(assert (=> b!1052933 m!973465))

(declare-fun m!973467 () Bool)

(assert (=> b!1052932 m!973467))

(declare-fun m!973469 () Bool)

(assert (=> b!1052936 m!973469))

(declare-fun m!973471 () Bool)

(assert (=> start!92624 m!973471))

(declare-fun m!973473 () Bool)

(assert (=> b!1052935 m!973473))

(declare-fun m!973475 () Bool)

(assert (=> b!1052934 m!973475))

(check-sat (not b!1052935) (not b!1052933) (not b!1052932) (not start!92624) (not b!1052936))
(check-sat)
(get-model)

(declare-fun b!1052972 () Bool)

(declare-fun e!597967 () Bool)

(declare-fun contains!6178 (List!22365 (_ BitVec 64)) Bool)

(assert (=> b!1052972 (= e!597967 (contains!6178 Nil!22362 (select (arr!31922 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1052973 () Bool)

(declare-fun e!597964 () Bool)

(declare-fun e!597965 () Bool)

(assert (=> b!1052973 (= e!597964 e!597965)))

(declare-fun res!702201 () Bool)

(assert (=> b!1052973 (=> (not res!702201) (not e!597965))))

(assert (=> b!1052973 (= res!702201 (not e!597967))))

(declare-fun res!702199 () Bool)

(assert (=> b!1052973 (=> (not res!702199) (not e!597967))))

(assert (=> b!1052973 (= res!702199 (validKeyInArray!0 (select (arr!31922 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1052974 () Bool)

(declare-fun e!597966 () Bool)

(declare-fun call!44726 () Bool)

(assert (=> b!1052974 (= e!597966 call!44726)))

(declare-fun d!127753 () Bool)

(declare-fun res!702200 () Bool)

(assert (=> d!127753 (=> res!702200 e!597964)))

(assert (=> d!127753 (= res!702200 (bvsge #b00000000000000000000000000000000 (size!32459 a!3488)))))

(assert (=> d!127753 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22362) e!597964)))

(declare-fun bm!44723 () Bool)

(declare-fun c!106849 () Bool)

(assert (=> bm!44723 (= call!44726 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106849 (Cons!22361 (select (arr!31922 a!3488) #b00000000000000000000000000000000) Nil!22362) Nil!22362)))))

(declare-fun b!1052975 () Bool)

(assert (=> b!1052975 (= e!597965 e!597966)))

(assert (=> b!1052975 (= c!106849 (validKeyInArray!0 (select (arr!31922 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1052976 () Bool)

(assert (=> b!1052976 (= e!597966 call!44726)))

(assert (= (and d!127753 (not res!702200)) b!1052973))

(assert (= (and b!1052973 res!702199) b!1052972))

(assert (= (and b!1052973 res!702201) b!1052975))

(assert (= (and b!1052975 c!106849) b!1052976))

(assert (= (and b!1052975 (not c!106849)) b!1052974))

(assert (= (or b!1052976 b!1052974) bm!44723))

(declare-fun m!973491 () Bool)

(assert (=> b!1052972 m!973491))

(assert (=> b!1052972 m!973491))

(declare-fun m!973493 () Bool)

(assert (=> b!1052972 m!973493))

(assert (=> b!1052973 m!973491))

(assert (=> b!1052973 m!973491))

(declare-fun m!973495 () Bool)

(assert (=> b!1052973 m!973495))

(assert (=> bm!44723 m!973491))

(declare-fun m!973497 () Bool)

(assert (=> bm!44723 m!973497))

(assert (=> b!1052975 m!973491))

(assert (=> b!1052975 m!973491))

(assert (=> b!1052975 m!973495))

(assert (=> b!1052932 d!127753))

(declare-fun d!127759 () Bool)

(assert (=> d!127759 (= (array_inv!24544 a!3488) (bvsge (size!32459 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92624 d!127759))

(declare-fun d!127761 () Bool)

(assert (=> d!127761 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1052936 d!127761))

(declare-fun d!127765 () Bool)

(declare-fun lt!465007 () (_ BitVec 32))

(assert (=> d!127765 (and (or (bvslt lt!465007 #b00000000000000000000000000000000) (bvsge lt!465007 (size!32459 lt!465001)) (and (bvsge lt!465007 #b00000000000000000000000000000000) (bvslt lt!465007 (size!32459 lt!465001)))) (bvsge lt!465007 #b00000000000000000000000000000000) (bvslt lt!465007 (size!32459 lt!465001)) (= (select (arr!31922 lt!465001) lt!465007) k0!2747))))

(declare-fun e!597980 () (_ BitVec 32))

(assert (=> d!127765 (= lt!465007 e!597980)))

(declare-fun c!106853 () Bool)

(assert (=> d!127765 (= c!106853 (= (select (arr!31922 lt!465001) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127765 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32459 lt!465001)) (bvslt (size!32459 lt!465001) #b01111111111111111111111111111111))))

(assert (=> d!127765 (= (arrayScanForKey!0 lt!465001 k0!2747 #b00000000000000000000000000000000) lt!465007)))

(declare-fun b!1052992 () Bool)

(assert (=> b!1052992 (= e!597980 #b00000000000000000000000000000000)))

(declare-fun b!1052993 () Bool)

(assert (=> b!1052993 (= e!597980 (arrayScanForKey!0 lt!465001 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127765 c!106853) b!1052992))

(assert (= (and d!127765 (not c!106853)) b!1052993))

(declare-fun m!973511 () Bool)

(assert (=> d!127765 m!973511))

(declare-fun m!973513 () Bool)

(assert (=> d!127765 m!973513))

(declare-fun m!973515 () Bool)

(assert (=> b!1052993 m!973515))

(assert (=> b!1052935 d!127765))

(declare-fun d!127775 () Bool)

(declare-fun res!702217 () Bool)

(declare-fun e!597987 () Bool)

(assert (=> d!127775 (=> res!702217 e!597987)))

(assert (=> d!127775 (= res!702217 (= (select (arr!31922 lt!465001) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127775 (= (arrayContainsKey!0 lt!465001 k0!2747 #b00000000000000000000000000000000) e!597987)))

(declare-fun b!1053000 () Bool)

(declare-fun e!597988 () Bool)

(assert (=> b!1053000 (= e!597987 e!597988)))

(declare-fun res!702218 () Bool)

(assert (=> b!1053000 (=> (not res!702218) (not e!597988))))

(assert (=> b!1053000 (= res!702218 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32459 lt!465001)))))

(declare-fun b!1053001 () Bool)

(assert (=> b!1053001 (= e!597988 (arrayContainsKey!0 lt!465001 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127775 (not res!702217)) b!1053000))

(assert (= (and b!1053000 res!702218) b!1053001))

(assert (=> d!127775 m!973513))

(declare-fun m!973517 () Bool)

(assert (=> b!1053001 m!973517))

(assert (=> b!1052933 d!127775))

(check-sat (not b!1052993) (not b!1053001) (not b!1052975) (not bm!44723) (not b!1052973) (not b!1052972))
(check-sat)
