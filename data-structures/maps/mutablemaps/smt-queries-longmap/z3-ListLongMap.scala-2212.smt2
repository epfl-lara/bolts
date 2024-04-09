; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36696 () Bool)

(assert start!36696)

(declare-fun b!366076 () Bool)

(declare-fun res!204819 () Bool)

(declare-fun e!224157 () Bool)

(assert (=> b!366076 (=> (not res!204819) (not e!224157))))

(declare-datatypes ((array!20947 0))(
  ( (array!20948 (arr!9942 (Array (_ BitVec 32) (_ BitVec 64))) (size!10294 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20947)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20947 (_ BitVec 32)) Bool)

(assert (=> b!366076 (= res!204819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14322 () Bool)

(declare-fun mapRes!14322 () Bool)

(assert (=> mapIsEmpty!14322 mapRes!14322))

(declare-fun b!366077 () Bool)

(declare-fun res!204814 () Bool)

(assert (=> b!366077 (=> (not res!204814) (not e!224157))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366077 (= res!204814 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10294 _keys!658))))))

(declare-fun b!366078 () Bool)

(declare-fun res!204816 () Bool)

(assert (=> b!366078 (=> (not res!204816) (not e!224157))))

(assert (=> b!366078 (= res!204816 (or (= (select (arr!9942 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9942 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366080 () Bool)

(assert (=> b!366080 (= e!224157 (and (bvsle #b00000000000000000000000000000000 (size!10294 _keys!658)) (bvsge (size!10294 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun b!366081 () Bool)

(declare-fun res!204818 () Bool)

(assert (=> b!366081 (=> (not res!204818) (not e!224157))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366081 (= res!204818 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!366082 () Bool)

(declare-fun res!204817 () Bool)

(assert (=> b!366082 (=> (not res!204817) (not e!224157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366082 (= res!204817 (validKeyInArray!0 k0!778))))

(declare-fun b!366083 () Bool)

(declare-fun e!224155 () Bool)

(declare-fun e!224154 () Bool)

(assert (=> b!366083 (= e!224155 (and e!224154 mapRes!14322))))

(declare-fun condMapEmpty!14322 () Bool)

(declare-datatypes ((V!12453 0))(
  ( (V!12454 (val!4300 Int)) )
))
(declare-datatypes ((ValueCell!3912 0))(
  ( (ValueCellFull!3912 (v!6492 V!12453)) (EmptyCell!3912) )
))
(declare-datatypes ((array!20949 0))(
  ( (array!20950 (arr!9943 (Array (_ BitVec 32) ValueCell!3912)) (size!10295 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20949)

(declare-fun mapDefault!14322 () ValueCell!3912)

(assert (=> b!366083 (= condMapEmpty!14322 (= (arr!9943 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3912)) mapDefault!14322)))))

(declare-fun mapNonEmpty!14322 () Bool)

(declare-fun tp!28398 () Bool)

(declare-fun e!224156 () Bool)

(assert (=> mapNonEmpty!14322 (= mapRes!14322 (and tp!28398 e!224156))))

(declare-fun mapValue!14322 () ValueCell!3912)

(declare-fun mapRest!14322 () (Array (_ BitVec 32) ValueCell!3912))

(declare-fun mapKey!14322 () (_ BitVec 32))

(assert (=> mapNonEmpty!14322 (= (arr!9943 _values!506) (store mapRest!14322 mapKey!14322 mapValue!14322))))

(declare-fun b!366084 () Bool)

(declare-fun res!204821 () Bool)

(assert (=> b!366084 (=> (not res!204821) (not e!224157))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366084 (= res!204821 (and (= (size!10295 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10294 _keys!658) (size!10295 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366085 () Bool)

(declare-fun res!204815 () Bool)

(assert (=> b!366085 (=> (not res!204815) (not e!224157))))

(declare-datatypes ((List!5565 0))(
  ( (Nil!5562) (Cons!5561 (h!6417 (_ BitVec 64)) (t!10723 List!5565)) )
))
(declare-fun arrayNoDuplicates!0 (array!20947 (_ BitVec 32) List!5565) Bool)

(assert (=> b!366085 (= res!204815 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5562))))

(declare-fun b!366086 () Bool)

(declare-fun res!204822 () Bool)

(assert (=> b!366086 (=> (not res!204822) (not e!224157))))

(assert (=> b!366086 (= res!204822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20948 (store (arr!9942 _keys!658) i!548 k0!778) (size!10294 _keys!658)) mask!970))))

(declare-fun b!366087 () Bool)

(declare-fun tp_is_empty!8511 () Bool)

(assert (=> b!366087 (= e!224156 tp_is_empty!8511)))

(declare-fun b!366079 () Bool)

(assert (=> b!366079 (= e!224154 tp_is_empty!8511)))

(declare-fun res!204820 () Bool)

(assert (=> start!36696 (=> (not res!204820) (not e!224157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36696 (= res!204820 (validMask!0 mask!970))))

(assert (=> start!36696 e!224157))

(assert (=> start!36696 true))

(declare-fun array_inv!7352 (array!20949) Bool)

(assert (=> start!36696 (and (array_inv!7352 _values!506) e!224155)))

(declare-fun array_inv!7353 (array!20947) Bool)

(assert (=> start!36696 (array_inv!7353 _keys!658)))

(assert (= (and start!36696 res!204820) b!366084))

(assert (= (and b!366084 res!204821) b!366076))

(assert (= (and b!366076 res!204819) b!366085))

(assert (= (and b!366085 res!204815) b!366077))

(assert (= (and b!366077 res!204814) b!366082))

(assert (= (and b!366082 res!204817) b!366078))

(assert (= (and b!366078 res!204816) b!366081))

(assert (= (and b!366081 res!204818) b!366086))

(assert (= (and b!366086 res!204822) b!366080))

(assert (= (and b!366083 condMapEmpty!14322) mapIsEmpty!14322))

(assert (= (and b!366083 (not condMapEmpty!14322)) mapNonEmpty!14322))

(get-info :version)

(assert (= (and mapNonEmpty!14322 ((_ is ValueCellFull!3912) mapValue!14322)) b!366087))

(assert (= (and b!366083 ((_ is ValueCellFull!3912) mapDefault!14322)) b!366079))

(assert (= start!36696 b!366083))

(declare-fun m!363495 () Bool)

(assert (=> b!366086 m!363495))

(declare-fun m!363497 () Bool)

(assert (=> b!366086 m!363497))

(declare-fun m!363499 () Bool)

(assert (=> b!366078 m!363499))

(declare-fun m!363501 () Bool)

(assert (=> b!366081 m!363501))

(declare-fun m!363503 () Bool)

(assert (=> b!366085 m!363503))

(declare-fun m!363505 () Bool)

(assert (=> b!366076 m!363505))

(declare-fun m!363507 () Bool)

(assert (=> mapNonEmpty!14322 m!363507))

(declare-fun m!363509 () Bool)

(assert (=> start!36696 m!363509))

(declare-fun m!363511 () Bool)

(assert (=> start!36696 m!363511))

(declare-fun m!363513 () Bool)

(assert (=> start!36696 m!363513))

(declare-fun m!363515 () Bool)

(assert (=> b!366082 m!363515))

(check-sat (not b!366086) (not b!366082) (not start!36696) (not b!366085) tp_is_empty!8511 (not b!366081) (not mapNonEmpty!14322) (not b!366076))
(check-sat)
(get-model)

(declare-fun d!72259 () Bool)

(assert (=> d!72259 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!366082 d!72259))

(declare-fun d!72261 () Bool)

(assert (=> d!72261 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!36696 d!72261))

(declare-fun d!72263 () Bool)

(assert (=> d!72263 (= (array_inv!7352 _values!506) (bvsge (size!10295 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!36696 d!72263))

(declare-fun d!72265 () Bool)

(assert (=> d!72265 (= (array_inv!7353 _keys!658) (bvsge (size!10294 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!36696 d!72265))

(declare-fun d!72267 () Bool)

(declare-fun res!204855 () Bool)

(declare-fun e!224182 () Bool)

(assert (=> d!72267 (=> res!204855 e!224182)))

(assert (=> d!72267 (= res!204855 (bvsge #b00000000000000000000000000000000 (size!10294 (array!20948 (store (arr!9942 _keys!658) i!548 k0!778) (size!10294 _keys!658)))))))

(assert (=> d!72267 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20948 (store (arr!9942 _keys!658) i!548 k0!778) (size!10294 _keys!658)) mask!970) e!224182)))

(declare-fun b!366132 () Bool)

(declare-fun e!224181 () Bool)

(assert (=> b!366132 (= e!224182 e!224181)))

(declare-fun c!53831 () Bool)

(assert (=> b!366132 (= c!53831 (validKeyInArray!0 (select (arr!9942 (array!20948 (store (arr!9942 _keys!658) i!548 k0!778) (size!10294 _keys!658))) #b00000000000000000000000000000000)))))

(declare-fun b!366133 () Bool)

(declare-fun call!27287 () Bool)

(assert (=> b!366133 (= e!224181 call!27287)))

(declare-fun b!366134 () Bool)

(declare-fun e!224180 () Bool)

(assert (=> b!366134 (= e!224181 e!224180)))

(declare-fun lt!169192 () (_ BitVec 64))

(assert (=> b!366134 (= lt!169192 (select (arr!9942 (array!20948 (store (arr!9942 _keys!658) i!548 k0!778) (size!10294 _keys!658))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11381 0))(
  ( (Unit!11382) )
))
(declare-fun lt!169194 () Unit!11381)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20947 (_ BitVec 64) (_ BitVec 32)) Unit!11381)

(assert (=> b!366134 (= lt!169194 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20948 (store (arr!9942 _keys!658) i!548 k0!778) (size!10294 _keys!658)) lt!169192 #b00000000000000000000000000000000))))

(assert (=> b!366134 (arrayContainsKey!0 (array!20948 (store (arr!9942 _keys!658) i!548 k0!778) (size!10294 _keys!658)) lt!169192 #b00000000000000000000000000000000)))

(declare-fun lt!169193 () Unit!11381)

(assert (=> b!366134 (= lt!169193 lt!169194)))

(declare-fun res!204854 () Bool)

(declare-datatypes ((SeekEntryResult!3493 0))(
  ( (MissingZero!3493 (index!16151 (_ BitVec 32))) (Found!3493 (index!16152 (_ BitVec 32))) (Intermediate!3493 (undefined!4305 Bool) (index!16153 (_ BitVec 32)) (x!36722 (_ BitVec 32))) (Undefined!3493) (MissingVacant!3493 (index!16154 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20947 (_ BitVec 32)) SeekEntryResult!3493)

(assert (=> b!366134 (= res!204854 (= (seekEntryOrOpen!0 (select (arr!9942 (array!20948 (store (arr!9942 _keys!658) i!548 k0!778) (size!10294 _keys!658))) #b00000000000000000000000000000000) (array!20948 (store (arr!9942 _keys!658) i!548 k0!778) (size!10294 _keys!658)) mask!970) (Found!3493 #b00000000000000000000000000000000)))))

(assert (=> b!366134 (=> (not res!204854) (not e!224180))))

(declare-fun bm!27284 () Bool)

(assert (=> bm!27284 (= call!27287 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!20948 (store (arr!9942 _keys!658) i!548 k0!778) (size!10294 _keys!658)) mask!970))))

(declare-fun b!366135 () Bool)

(assert (=> b!366135 (= e!224180 call!27287)))

(assert (= (and d!72267 (not res!204855)) b!366132))

(assert (= (and b!366132 c!53831) b!366134))

(assert (= (and b!366132 (not c!53831)) b!366133))

(assert (= (and b!366134 res!204854) b!366135))

(assert (= (or b!366135 b!366133) bm!27284))

(declare-fun m!363539 () Bool)

(assert (=> b!366132 m!363539))

(assert (=> b!366132 m!363539))

(declare-fun m!363541 () Bool)

(assert (=> b!366132 m!363541))

(assert (=> b!366134 m!363539))

(declare-fun m!363543 () Bool)

(assert (=> b!366134 m!363543))

(declare-fun m!363545 () Bool)

(assert (=> b!366134 m!363545))

(assert (=> b!366134 m!363539))

(declare-fun m!363547 () Bool)

(assert (=> b!366134 m!363547))

(declare-fun m!363549 () Bool)

(assert (=> bm!27284 m!363549))

(assert (=> b!366086 d!72267))

(declare-fun b!366146 () Bool)

(declare-fun e!224193 () Bool)

(declare-fun e!224191 () Bool)

(assert (=> b!366146 (= e!224193 e!224191)))

(declare-fun c!53834 () Bool)

(assert (=> b!366146 (= c!53834 (validKeyInArray!0 (select (arr!9942 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!366147 () Bool)

(declare-fun e!224194 () Bool)

(assert (=> b!366147 (= e!224194 e!224193)))

(declare-fun res!204863 () Bool)

(assert (=> b!366147 (=> (not res!204863) (not e!224193))))

(declare-fun e!224192 () Bool)

(assert (=> b!366147 (= res!204863 (not e!224192))))

(declare-fun res!204862 () Bool)

(assert (=> b!366147 (=> (not res!204862) (not e!224192))))

(assert (=> b!366147 (= res!204862 (validKeyInArray!0 (select (arr!9942 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!366148 () Bool)

(declare-fun contains!2436 (List!5565 (_ BitVec 64)) Bool)

(assert (=> b!366148 (= e!224192 (contains!2436 Nil!5562 (select (arr!9942 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!366149 () Bool)

(declare-fun call!27290 () Bool)

(assert (=> b!366149 (= e!224191 call!27290)))

(declare-fun b!366150 () Bool)

(assert (=> b!366150 (= e!224191 call!27290)))

(declare-fun bm!27287 () Bool)

(assert (=> bm!27287 (= call!27290 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53834 (Cons!5561 (select (arr!9942 _keys!658) #b00000000000000000000000000000000) Nil!5562) Nil!5562)))))

(declare-fun d!72269 () Bool)

(declare-fun res!204864 () Bool)

(assert (=> d!72269 (=> res!204864 e!224194)))

(assert (=> d!72269 (= res!204864 (bvsge #b00000000000000000000000000000000 (size!10294 _keys!658)))))

(assert (=> d!72269 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5562) e!224194)))

(assert (= (and d!72269 (not res!204864)) b!366147))

(assert (= (and b!366147 res!204862) b!366148))

(assert (= (and b!366147 res!204863) b!366146))

(assert (= (and b!366146 c!53834) b!366150))

(assert (= (and b!366146 (not c!53834)) b!366149))

(assert (= (or b!366150 b!366149) bm!27287))

(declare-fun m!363551 () Bool)

(assert (=> b!366146 m!363551))

(assert (=> b!366146 m!363551))

(declare-fun m!363553 () Bool)

(assert (=> b!366146 m!363553))

(assert (=> b!366147 m!363551))

(assert (=> b!366147 m!363551))

(assert (=> b!366147 m!363553))

(assert (=> b!366148 m!363551))

(assert (=> b!366148 m!363551))

(declare-fun m!363555 () Bool)

(assert (=> b!366148 m!363555))

(assert (=> bm!27287 m!363551))

(declare-fun m!363557 () Bool)

(assert (=> bm!27287 m!363557))

(assert (=> b!366085 d!72269))

(declare-fun d!72271 () Bool)

(declare-fun res!204869 () Bool)

(declare-fun e!224199 () Bool)

(assert (=> d!72271 (=> res!204869 e!224199)))

(assert (=> d!72271 (= res!204869 (= (select (arr!9942 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72271 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!224199)))

(declare-fun b!366155 () Bool)

(declare-fun e!224200 () Bool)

(assert (=> b!366155 (= e!224199 e!224200)))

(declare-fun res!204870 () Bool)

(assert (=> b!366155 (=> (not res!204870) (not e!224200))))

(assert (=> b!366155 (= res!204870 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!10294 _keys!658)))))

(declare-fun b!366156 () Bool)

(assert (=> b!366156 (= e!224200 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72271 (not res!204869)) b!366155))

(assert (= (and b!366155 res!204870) b!366156))

(assert (=> d!72271 m!363551))

(declare-fun m!363559 () Bool)

(assert (=> b!366156 m!363559))

(assert (=> b!366081 d!72271))

(declare-fun d!72273 () Bool)

(declare-fun res!204872 () Bool)

(declare-fun e!224203 () Bool)

(assert (=> d!72273 (=> res!204872 e!224203)))

(assert (=> d!72273 (= res!204872 (bvsge #b00000000000000000000000000000000 (size!10294 _keys!658)))))

(assert (=> d!72273 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!224203)))

(declare-fun b!366157 () Bool)

(declare-fun e!224202 () Bool)

(assert (=> b!366157 (= e!224203 e!224202)))

(declare-fun c!53835 () Bool)

(assert (=> b!366157 (= c!53835 (validKeyInArray!0 (select (arr!9942 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!366158 () Bool)

(declare-fun call!27291 () Bool)

(assert (=> b!366158 (= e!224202 call!27291)))

(declare-fun b!366159 () Bool)

(declare-fun e!224201 () Bool)

(assert (=> b!366159 (= e!224202 e!224201)))

(declare-fun lt!169195 () (_ BitVec 64))

(assert (=> b!366159 (= lt!169195 (select (arr!9942 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!169197 () Unit!11381)

(assert (=> b!366159 (= lt!169197 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!169195 #b00000000000000000000000000000000))))

(assert (=> b!366159 (arrayContainsKey!0 _keys!658 lt!169195 #b00000000000000000000000000000000)))

(declare-fun lt!169196 () Unit!11381)

(assert (=> b!366159 (= lt!169196 lt!169197)))

(declare-fun res!204871 () Bool)

(assert (=> b!366159 (= res!204871 (= (seekEntryOrOpen!0 (select (arr!9942 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3493 #b00000000000000000000000000000000)))))

(assert (=> b!366159 (=> (not res!204871) (not e!224201))))

(declare-fun bm!27288 () Bool)

(assert (=> bm!27288 (= call!27291 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!366160 () Bool)

(assert (=> b!366160 (= e!224201 call!27291)))

(assert (= (and d!72273 (not res!204872)) b!366157))

(assert (= (and b!366157 c!53835) b!366159))

(assert (= (and b!366157 (not c!53835)) b!366158))

(assert (= (and b!366159 res!204871) b!366160))

(assert (= (or b!366160 b!366158) bm!27288))

(assert (=> b!366157 m!363551))

(assert (=> b!366157 m!363551))

(assert (=> b!366157 m!363553))

(assert (=> b!366159 m!363551))

(declare-fun m!363561 () Bool)

(assert (=> b!366159 m!363561))

(declare-fun m!363563 () Bool)

(assert (=> b!366159 m!363563))

(assert (=> b!366159 m!363551))

(declare-fun m!363565 () Bool)

(assert (=> b!366159 m!363565))

(declare-fun m!363567 () Bool)

(assert (=> bm!27288 m!363567))

(assert (=> b!366076 d!72273))

(declare-fun mapIsEmpty!14328 () Bool)

(declare-fun mapRes!14328 () Bool)

(assert (=> mapIsEmpty!14328 mapRes!14328))

(declare-fun b!366167 () Bool)

(declare-fun e!224209 () Bool)

(assert (=> b!366167 (= e!224209 tp_is_empty!8511)))

(declare-fun condMapEmpty!14328 () Bool)

(declare-fun mapDefault!14328 () ValueCell!3912)

(assert (=> mapNonEmpty!14322 (= condMapEmpty!14328 (= mapRest!14322 ((as const (Array (_ BitVec 32) ValueCell!3912)) mapDefault!14328)))))

(declare-fun e!224208 () Bool)

(assert (=> mapNonEmpty!14322 (= tp!28398 (and e!224208 mapRes!14328))))

(declare-fun mapNonEmpty!14328 () Bool)

(declare-fun tp!28404 () Bool)

(assert (=> mapNonEmpty!14328 (= mapRes!14328 (and tp!28404 e!224209))))

(declare-fun mapKey!14328 () (_ BitVec 32))

(declare-fun mapValue!14328 () ValueCell!3912)

(declare-fun mapRest!14328 () (Array (_ BitVec 32) ValueCell!3912))

(assert (=> mapNonEmpty!14328 (= mapRest!14322 (store mapRest!14328 mapKey!14328 mapValue!14328))))

(declare-fun b!366168 () Bool)

(assert (=> b!366168 (= e!224208 tp_is_empty!8511)))

(assert (= (and mapNonEmpty!14322 condMapEmpty!14328) mapIsEmpty!14328))

(assert (= (and mapNonEmpty!14322 (not condMapEmpty!14328)) mapNonEmpty!14328))

(assert (= (and mapNonEmpty!14328 ((_ is ValueCellFull!3912) mapValue!14328)) b!366167))

(assert (= (and mapNonEmpty!14322 ((_ is ValueCellFull!3912) mapDefault!14328)) b!366168))

(declare-fun m!363569 () Bool)

(assert (=> mapNonEmpty!14328 m!363569))

(check-sat tp_is_empty!8511 (not b!366159) (not b!366134) (not mapNonEmpty!14328) (not b!366146) (not b!366156) (not bm!27287) (not bm!27288) (not b!366157) (not b!366132) (not b!366148) (not b!366147) (not bm!27284))
(check-sat)
