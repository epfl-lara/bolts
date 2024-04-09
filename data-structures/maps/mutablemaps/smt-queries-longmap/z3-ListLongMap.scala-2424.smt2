; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38300 () Bool)

(assert start!38300)

(declare-fun b!394785 () Bool)

(declare-fun e!239027 () Bool)

(declare-fun e!239031 () Bool)

(assert (=> b!394785 (= e!239027 e!239031)))

(declare-fun res!226366 () Bool)

(assert (=> b!394785 (=> res!226366 e!239031)))

(declare-datatypes ((List!6460 0))(
  ( (Nil!6457) (Cons!6456 (h!7312 (_ BitVec 64)) (t!11642 List!6460)) )
))
(declare-fun contains!2479 (List!6460 (_ BitVec 64)) Bool)

(assert (=> b!394785 (= res!226366 (contains!2479 Nil!6457 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!394786 () Bool)

(declare-fun e!239028 () Bool)

(declare-fun tp_is_empty!9783 () Bool)

(assert (=> b!394786 (= e!239028 tp_is_empty!9783)))

(declare-fun b!394787 () Bool)

(declare-fun res!226365 () Bool)

(assert (=> b!394787 (=> (not res!226365) (not e!239027))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394787 (= res!226365 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16281 () Bool)

(declare-fun mapRes!16281 () Bool)

(declare-fun tp!32076 () Bool)

(assert (=> mapNonEmpty!16281 (= mapRes!16281 (and tp!32076 e!239028))))

(declare-datatypes ((V!14149 0))(
  ( (V!14150 (val!4936 Int)) )
))
(declare-datatypes ((ValueCell!4548 0))(
  ( (ValueCellFull!4548 (v!7177 V!14149)) (EmptyCell!4548) )
))
(declare-fun mapRest!16281 () (Array (_ BitVec 32) ValueCell!4548))

(declare-fun mapKey!16281 () (_ BitVec 32))

(declare-datatypes ((array!23449 0))(
  ( (array!23450 (arr!11176 (Array (_ BitVec 32) ValueCell!4548)) (size!11528 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23449)

(declare-fun mapValue!16281 () ValueCell!4548)

(assert (=> mapNonEmpty!16281 (= (arr!11176 _values!549) (store mapRest!16281 mapKey!16281 mapValue!16281))))

(declare-fun b!394788 () Bool)

(declare-fun e!239030 () Bool)

(declare-fun e!239029 () Bool)

(assert (=> b!394788 (= e!239030 (and e!239029 mapRes!16281))))

(declare-fun condMapEmpty!16281 () Bool)

(declare-fun mapDefault!16281 () ValueCell!4548)

(assert (=> b!394788 (= condMapEmpty!16281 (= (arr!11176 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4548)) mapDefault!16281)))))

(declare-fun b!394789 () Bool)

(declare-fun res!226361 () Bool)

(assert (=> b!394789 (=> (not res!226361) (not e!239027))))

(declare-datatypes ((array!23451 0))(
  ( (array!23452 (arr!11177 (Array (_ BitVec 32) (_ BitVec 64))) (size!11529 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23451)

(assert (=> b!394789 (= res!226361 (and (bvsle #b00000000000000000000000000000000 (size!11529 _keys!709)) (bvslt (size!11529 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!16281 () Bool)

(assert (=> mapIsEmpty!16281 mapRes!16281))

(declare-fun b!394791 () Bool)

(declare-fun res!226363 () Bool)

(assert (=> b!394791 (=> (not res!226363) (not e!239027))))

(declare-fun noDuplicate!195 (List!6460) Bool)

(assert (=> b!394791 (= res!226363 (noDuplicate!195 Nil!6457))))

(declare-fun b!394792 () Bool)

(declare-fun res!226367 () Bool)

(assert (=> b!394792 (=> (not res!226367) (not e!239027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23451 (_ BitVec 32)) Bool)

(assert (=> b!394792 (= res!226367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!226362 () Bool)

(assert (=> start!38300 (=> (not res!226362) (not e!239027))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38300 (= res!226362 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11529 _keys!709))))))

(assert (=> start!38300 e!239027))

(assert (=> start!38300 true))

(declare-fun array_inv!8180 (array!23449) Bool)

(assert (=> start!38300 (and (array_inv!8180 _values!549) e!239030)))

(declare-fun array_inv!8181 (array!23451) Bool)

(assert (=> start!38300 (array_inv!8181 _keys!709)))

(declare-fun b!394790 () Bool)

(assert (=> b!394790 (= e!239031 (contains!2479 Nil!6457 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!394793 () Bool)

(assert (=> b!394793 (= e!239029 tp_is_empty!9783)))

(declare-fun b!394794 () Bool)

(declare-fun res!226364 () Bool)

(assert (=> b!394794 (=> (not res!226364) (not e!239027))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!394794 (= res!226364 (and (= (size!11528 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11529 _keys!709) (size!11528 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(assert (= (and start!38300 res!226362) b!394787))

(assert (= (and b!394787 res!226365) b!394794))

(assert (= (and b!394794 res!226364) b!394792))

(assert (= (and b!394792 res!226367) b!394789))

(assert (= (and b!394789 res!226361) b!394791))

(assert (= (and b!394791 res!226363) b!394785))

(assert (= (and b!394785 (not res!226366)) b!394790))

(assert (= (and b!394788 condMapEmpty!16281) mapIsEmpty!16281))

(assert (= (and b!394788 (not condMapEmpty!16281)) mapNonEmpty!16281))

(get-info :version)

(assert (= (and mapNonEmpty!16281 ((_ is ValueCellFull!4548) mapValue!16281)) b!394786))

(assert (= (and b!394788 ((_ is ValueCellFull!4548) mapDefault!16281)) b!394793))

(assert (= start!38300 b!394788))

(declare-fun m!391077 () Bool)

(assert (=> b!394790 m!391077))

(declare-fun m!391079 () Bool)

(assert (=> mapNonEmpty!16281 m!391079))

(declare-fun m!391081 () Bool)

(assert (=> b!394787 m!391081))

(declare-fun m!391083 () Bool)

(assert (=> b!394785 m!391083))

(declare-fun m!391085 () Bool)

(assert (=> b!394791 m!391085))

(declare-fun m!391087 () Bool)

(assert (=> b!394792 m!391087))

(declare-fun m!391089 () Bool)

(assert (=> start!38300 m!391089))

(declare-fun m!391091 () Bool)

(assert (=> start!38300 m!391091))

(check-sat (not b!394785) (not b!394790) (not b!394787) (not mapNonEmpty!16281) (not b!394792) tp_is_empty!9783 (not b!394791) (not start!38300))
(check-sat)
(get-model)

(declare-fun d!73185 () Bool)

(declare-fun res!226393 () Bool)

(declare-fun e!239054 () Bool)

(assert (=> d!73185 (=> res!226393 e!239054)))

(assert (=> d!73185 (= res!226393 ((_ is Nil!6457) Nil!6457))))

(assert (=> d!73185 (= (noDuplicate!195 Nil!6457) e!239054)))

(declare-fun b!394829 () Bool)

(declare-fun e!239055 () Bool)

(assert (=> b!394829 (= e!239054 e!239055)))

(declare-fun res!226394 () Bool)

(assert (=> b!394829 (=> (not res!226394) (not e!239055))))

(assert (=> b!394829 (= res!226394 (not (contains!2479 (t!11642 Nil!6457) (h!7312 Nil!6457))))))

(declare-fun b!394830 () Bool)

(assert (=> b!394830 (= e!239055 (noDuplicate!195 (t!11642 Nil!6457)))))

(assert (= (and d!73185 (not res!226393)) b!394829))

(assert (= (and b!394829 res!226394) b!394830))

(declare-fun m!391109 () Bool)

(assert (=> b!394829 m!391109))

(declare-fun m!391111 () Bool)

(assert (=> b!394830 m!391111))

(assert (=> b!394791 d!73185))

(declare-fun bm!27863 () Bool)

(declare-fun call!27866 () Bool)

(assert (=> bm!27863 (= call!27866 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!394839 () Bool)

(declare-fun e!239064 () Bool)

(declare-fun e!239063 () Bool)

(assert (=> b!394839 (= e!239064 e!239063)))

(declare-fun c!54470 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!394839 (= c!54470 (validKeyInArray!0 (select (arr!11177 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!394840 () Bool)

(assert (=> b!394840 (= e!239063 call!27866)))

(declare-fun d!73187 () Bool)

(declare-fun res!226400 () Bool)

(assert (=> d!73187 (=> res!226400 e!239064)))

(assert (=> d!73187 (= res!226400 (bvsge #b00000000000000000000000000000000 (size!11529 _keys!709)))))

(assert (=> d!73187 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!239064)))

(declare-fun b!394841 () Bool)

(declare-fun e!239062 () Bool)

(assert (=> b!394841 (= e!239062 call!27866)))

(declare-fun b!394842 () Bool)

(assert (=> b!394842 (= e!239063 e!239062)))

(declare-fun lt!187014 () (_ BitVec 64))

(assert (=> b!394842 (= lt!187014 (select (arr!11177 _keys!709) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!12025 0))(
  ( (Unit!12026) )
))
(declare-fun lt!187015 () Unit!12025)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23451 (_ BitVec 64) (_ BitVec 32)) Unit!12025)

(assert (=> b!394842 (= lt!187015 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!187014 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!23451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!394842 (arrayContainsKey!0 _keys!709 lt!187014 #b00000000000000000000000000000000)))

(declare-fun lt!187013 () Unit!12025)

(assert (=> b!394842 (= lt!187013 lt!187015)))

(declare-fun res!226399 () Bool)

(declare-datatypes ((SeekEntryResult!3510 0))(
  ( (MissingZero!3510 (index!16219 (_ BitVec 32))) (Found!3510 (index!16220 (_ BitVec 32))) (Intermediate!3510 (undefined!4322 Bool) (index!16221 (_ BitVec 32)) (x!38577 (_ BitVec 32))) (Undefined!3510) (MissingVacant!3510 (index!16222 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23451 (_ BitVec 32)) SeekEntryResult!3510)

(assert (=> b!394842 (= res!226399 (= (seekEntryOrOpen!0 (select (arr!11177 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3510 #b00000000000000000000000000000000)))))

(assert (=> b!394842 (=> (not res!226399) (not e!239062))))

(assert (= (and d!73187 (not res!226400)) b!394839))

(assert (= (and b!394839 c!54470) b!394842))

(assert (= (and b!394839 (not c!54470)) b!394840))

(assert (= (and b!394842 res!226399) b!394841))

(assert (= (or b!394841 b!394840) bm!27863))

(declare-fun m!391113 () Bool)

(assert (=> bm!27863 m!391113))

(declare-fun m!391115 () Bool)

(assert (=> b!394839 m!391115))

(assert (=> b!394839 m!391115))

(declare-fun m!391117 () Bool)

(assert (=> b!394839 m!391117))

(assert (=> b!394842 m!391115))

(declare-fun m!391119 () Bool)

(assert (=> b!394842 m!391119))

(declare-fun m!391121 () Bool)

(assert (=> b!394842 m!391121))

(assert (=> b!394842 m!391115))

(declare-fun m!391123 () Bool)

(assert (=> b!394842 m!391123))

(assert (=> b!394792 d!73187))

(declare-fun d!73189 () Bool)

(assert (=> d!73189 (= (array_inv!8180 _values!549) (bvsge (size!11528 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!38300 d!73189))

(declare-fun d!73191 () Bool)

(assert (=> d!73191 (= (array_inv!8181 _keys!709) (bvsge (size!11529 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!38300 d!73191))

(declare-fun d!73193 () Bool)

(declare-fun lt!187018 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!201 (List!6460) (InoxSet (_ BitVec 64)))

(assert (=> d!73193 (= lt!187018 (select (content!201 Nil!6457) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!239069 () Bool)

(assert (=> d!73193 (= lt!187018 e!239069)))

(declare-fun res!226406 () Bool)

(assert (=> d!73193 (=> (not res!226406) (not e!239069))))

(assert (=> d!73193 (= res!226406 ((_ is Cons!6456) Nil!6457))))

(assert (=> d!73193 (= (contains!2479 Nil!6457 #b0000000000000000000000000000000000000000000000000000000000000000) lt!187018)))

(declare-fun b!394847 () Bool)

(declare-fun e!239070 () Bool)

(assert (=> b!394847 (= e!239069 e!239070)))

(declare-fun res!226405 () Bool)

(assert (=> b!394847 (=> res!226405 e!239070)))

(assert (=> b!394847 (= res!226405 (= (h!7312 Nil!6457) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!394848 () Bool)

(assert (=> b!394848 (= e!239070 (contains!2479 (t!11642 Nil!6457) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!73193 res!226406) b!394847))

(assert (= (and b!394847 (not res!226405)) b!394848))

(declare-fun m!391125 () Bool)

(assert (=> d!73193 m!391125))

(declare-fun m!391127 () Bool)

(assert (=> d!73193 m!391127))

(declare-fun m!391129 () Bool)

(assert (=> b!394848 m!391129))

(assert (=> b!394785 d!73193))

(declare-fun d!73195 () Bool)

(declare-fun lt!187019 () Bool)

(assert (=> d!73195 (= lt!187019 (select (content!201 Nil!6457) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!239071 () Bool)

(assert (=> d!73195 (= lt!187019 e!239071)))

(declare-fun res!226408 () Bool)

(assert (=> d!73195 (=> (not res!226408) (not e!239071))))

(assert (=> d!73195 (= res!226408 ((_ is Cons!6456) Nil!6457))))

(assert (=> d!73195 (= (contains!2479 Nil!6457 #b1000000000000000000000000000000000000000000000000000000000000000) lt!187019)))

(declare-fun b!394849 () Bool)

(declare-fun e!239072 () Bool)

(assert (=> b!394849 (= e!239071 e!239072)))

(declare-fun res!226407 () Bool)

(assert (=> b!394849 (=> res!226407 e!239072)))

(assert (=> b!394849 (= res!226407 (= (h!7312 Nil!6457) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!394850 () Bool)

(assert (=> b!394850 (= e!239072 (contains!2479 (t!11642 Nil!6457) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!73195 res!226408) b!394849))

(assert (= (and b!394849 (not res!226407)) b!394850))

(assert (=> d!73195 m!391125))

(declare-fun m!391131 () Bool)

(assert (=> d!73195 m!391131))

(declare-fun m!391133 () Bool)

(assert (=> b!394850 m!391133))

(assert (=> b!394790 d!73195))

(declare-fun d!73197 () Bool)

(assert (=> d!73197 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!394787 d!73197))

(declare-fun b!394857 () Bool)

(declare-fun e!239078 () Bool)

(assert (=> b!394857 (= e!239078 tp_is_empty!9783)))

(declare-fun b!394858 () Bool)

(declare-fun e!239077 () Bool)

(assert (=> b!394858 (= e!239077 tp_is_empty!9783)))

(declare-fun mapNonEmpty!16287 () Bool)

(declare-fun mapRes!16287 () Bool)

(declare-fun tp!32082 () Bool)

(assert (=> mapNonEmpty!16287 (= mapRes!16287 (and tp!32082 e!239078))))

(declare-fun mapValue!16287 () ValueCell!4548)

(declare-fun mapRest!16287 () (Array (_ BitVec 32) ValueCell!4548))

(declare-fun mapKey!16287 () (_ BitVec 32))

(assert (=> mapNonEmpty!16287 (= mapRest!16281 (store mapRest!16287 mapKey!16287 mapValue!16287))))

(declare-fun condMapEmpty!16287 () Bool)

(declare-fun mapDefault!16287 () ValueCell!4548)

(assert (=> mapNonEmpty!16281 (= condMapEmpty!16287 (= mapRest!16281 ((as const (Array (_ BitVec 32) ValueCell!4548)) mapDefault!16287)))))

(assert (=> mapNonEmpty!16281 (= tp!32076 (and e!239077 mapRes!16287))))

(declare-fun mapIsEmpty!16287 () Bool)

(assert (=> mapIsEmpty!16287 mapRes!16287))

(assert (= (and mapNonEmpty!16281 condMapEmpty!16287) mapIsEmpty!16287))

(assert (= (and mapNonEmpty!16281 (not condMapEmpty!16287)) mapNonEmpty!16287))

(assert (= (and mapNonEmpty!16287 ((_ is ValueCellFull!4548) mapValue!16287)) b!394857))

(assert (= (and mapNonEmpty!16281 ((_ is ValueCellFull!4548) mapDefault!16287)) b!394858))

(declare-fun m!391135 () Bool)

(assert (=> mapNonEmpty!16287 m!391135))

(check-sat (not b!394829) (not b!394850) (not mapNonEmpty!16287) (not b!394848) (not b!394830) (not d!73193) (not b!394839) (not bm!27863) tp_is_empty!9783 (not b!394842) (not d!73195))
(check-sat)
