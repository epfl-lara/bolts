; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7960 () Bool)

(assert start!7960)

(declare-fun res!28850 () Bool)

(declare-fun e!32178 () Bool)

(assert (=> start!7960 (=> (not res!28850) (not e!32178))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7960 (= res!28850 (validMask!0 mask!2234))))

(assert (=> start!7960 e!32178))

(assert (=> start!7960 true))

(declare-datatypes ((array!3247 0))(
  ( (array!3248 (arr!1554 (Array (_ BitVec 32) (_ BitVec 64))) (size!1776 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3247)

(declare-fun array_inv!905 (array!3247) Bool)

(assert (=> start!7960 (array_inv!905 _keys!1794)))

(declare-fun b!49937 () Bool)

(declare-fun res!28851 () Bool)

(assert (=> b!49937 (=> (not res!28851) (not e!32178))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49937 (= res!28851 (and (= (size!1776 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3248 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1776 _keys!1794)) (bvsge i!836 (size!1776 _keys!1794))))))

(declare-fun b!49938 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3247 (_ BitVec 32)) Bool)

(assert (=> b!49938 (= e!32178 (not (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234)))))

(assert (= (and start!7960 res!28850) b!49937))

(assert (= (and b!49937 res!28851) b!49938))

(declare-fun m!43437 () Bool)

(assert (=> start!7960 m!43437))

(declare-fun m!43439 () Bool)

(assert (=> start!7960 m!43439))

(declare-fun m!43441 () Bool)

(assert (=> b!49938 m!43441))

(check-sat (not start!7960) (not b!49938))
(check-sat)
(get-model)

(declare-fun d!10103 () Bool)

(assert (=> d!10103 (= (validMask!0 mask!2234) (and (or (= mask!2234 #b00000000000000000000000000000111) (= mask!2234 #b00000000000000000000000000001111) (= mask!2234 #b00000000000000000000000000011111) (= mask!2234 #b00000000000000000000000000111111) (= mask!2234 #b00000000000000000000000001111111) (= mask!2234 #b00000000000000000000000011111111) (= mask!2234 #b00000000000000000000000111111111) (= mask!2234 #b00000000000000000000001111111111) (= mask!2234 #b00000000000000000000011111111111) (= mask!2234 #b00000000000000000000111111111111) (= mask!2234 #b00000000000000000001111111111111) (= mask!2234 #b00000000000000000011111111111111) (= mask!2234 #b00000000000000000111111111111111) (= mask!2234 #b00000000000000001111111111111111) (= mask!2234 #b00000000000000011111111111111111) (= mask!2234 #b00000000000000111111111111111111) (= mask!2234 #b00000000000001111111111111111111) (= mask!2234 #b00000000000011111111111111111111) (= mask!2234 #b00000000000111111111111111111111) (= mask!2234 #b00000000001111111111111111111111) (= mask!2234 #b00000000011111111111111111111111) (= mask!2234 #b00000000111111111111111111111111) (= mask!2234 #b00000001111111111111111111111111) (= mask!2234 #b00000011111111111111111111111111) (= mask!2234 #b00000111111111111111111111111111) (= mask!2234 #b00001111111111111111111111111111) (= mask!2234 #b00011111111111111111111111111111) (= mask!2234 #b00111111111111111111111111111111)) (bvsle mask!2234 #b00111111111111111111111111111111)))))

(assert (=> start!7960 d!10103))

(declare-fun d!10109 () Bool)

(assert (=> d!10109 (= (array_inv!905 _keys!1794) (bvsge (size!1776 _keys!1794) #b00000000000000000000000000000000))))

(assert (=> start!7960 d!10109))

(declare-fun b!49965 () Bool)

(declare-fun e!32201 () Bool)

(declare-fun e!32203 () Bool)

(assert (=> b!49965 (= e!32201 e!32203)))

(declare-fun lt!21005 () (_ BitVec 64))

(assert (=> b!49965 (= lt!21005 (select (arr!1554 _keys!1794) i!836))))

(declare-datatypes ((Unit!1412 0))(
  ( (Unit!1413) )
))
(declare-fun lt!21004 () Unit!1412)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3247 (_ BitVec 64) (_ BitVec 32)) Unit!1412)

(assert (=> b!49965 (= lt!21004 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!21005 i!836))))

(declare-fun arrayContainsKey!0 (array!3247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!49965 (arrayContainsKey!0 _keys!1794 lt!21005 #b00000000000000000000000000000000)))

(declare-fun lt!21006 () Unit!1412)

(assert (=> b!49965 (= lt!21006 lt!21004)))

(declare-fun res!28869 () Bool)

(declare-datatypes ((SeekEntryResult!226 0))(
  ( (MissingZero!226 (index!3026 (_ BitVec 32))) (Found!226 (index!3027 (_ BitVec 32))) (Intermediate!226 (undefined!1038 Bool) (index!3028 (_ BitVec 32)) (x!9124 (_ BitVec 32))) (Undefined!226) (MissingVacant!226 (index!3029 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3247 (_ BitVec 32)) SeekEntryResult!226)

(assert (=> b!49965 (= res!28869 (= (seekEntryOrOpen!0 (select (arr!1554 _keys!1794) i!836) _keys!1794 mask!2234) (Found!226 i!836)))))

(assert (=> b!49965 (=> (not res!28869) (not e!32203))))

(declare-fun b!49966 () Bool)

(declare-fun call!3870 () Bool)

(assert (=> b!49966 (= e!32203 call!3870)))

(declare-fun bm!3867 () Bool)

(assert (=> bm!3867 (= call!3870 (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun d!10111 () Bool)

(declare-fun res!28868 () Bool)

(declare-fun e!32202 () Bool)

(assert (=> d!10111 (=> res!28868 e!32202)))

(assert (=> d!10111 (= res!28868 (bvsge i!836 (size!1776 _keys!1794)))))

(assert (=> d!10111 (= (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234) e!32202)))

(declare-fun b!49967 () Bool)

(assert (=> b!49967 (= e!32201 call!3870)))

(declare-fun b!49968 () Bool)

(assert (=> b!49968 (= e!32202 e!32201)))

(declare-fun c!6774 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!49968 (= c!6774 (validKeyInArray!0 (select (arr!1554 _keys!1794) i!836)))))

(assert (= (and d!10111 (not res!28868)) b!49968))

(assert (= (and b!49968 c!6774) b!49965))

(assert (= (and b!49968 (not c!6774)) b!49967))

(assert (= (and b!49965 res!28869) b!49966))

(assert (= (or b!49966 b!49967) bm!3867))

(declare-fun m!43461 () Bool)

(assert (=> b!49965 m!43461))

(declare-fun m!43463 () Bool)

(assert (=> b!49965 m!43463))

(declare-fun m!43465 () Bool)

(assert (=> b!49965 m!43465))

(assert (=> b!49965 m!43461))

(declare-fun m!43467 () Bool)

(assert (=> b!49965 m!43467))

(declare-fun m!43469 () Bool)

(assert (=> bm!3867 m!43469))

(assert (=> b!49968 m!43461))

(assert (=> b!49968 m!43461))

(declare-fun m!43471 () Bool)

(assert (=> b!49968 m!43471))

(assert (=> b!49938 d!10111))

(check-sat (not b!49965) (not bm!3867) (not b!49968))
(check-sat)
