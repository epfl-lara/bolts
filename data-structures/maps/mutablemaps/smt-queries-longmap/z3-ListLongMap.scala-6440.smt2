; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82498 () Bool)

(assert start!82498)

(declare-fun b!961120 () Bool)

(declare-fun res!643397 () Bool)

(declare-fun e!541911 () Bool)

(assert (=> b!961120 (=> (not res!643397) (not e!541911))))

(declare-datatypes ((array!58931 0))(
  ( (array!58932 (arr!28331 (Array (_ BitVec 32) (_ BitVec 64))) (size!28811 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58931)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58931 (_ BitVec 32)) Bool)

(assert (=> b!961120 (= res!643397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961121 () Bool)

(declare-fun res!643398 () Bool)

(assert (=> b!961121 (=> (not res!643398) (not e!541911))))

(declare-datatypes ((List!19804 0))(
  ( (Nil!19801) (Cons!19800 (h!20962 (_ BitVec 64)) (t!28175 List!19804)) )
))
(declare-fun noDuplicate!1374 (List!19804) Bool)

(assert (=> b!961121 (= res!643398 (noDuplicate!1374 Nil!19801))))

(declare-fun mapNonEmpty!34117 () Bool)

(declare-fun mapRes!34117 () Bool)

(declare-fun tp!65047 () Bool)

(declare-fun e!541913 () Bool)

(assert (=> mapNonEmpty!34117 (= mapRes!34117 (and tp!65047 e!541913))))

(declare-datatypes ((V!33539 0))(
  ( (V!33540 (val!10759 Int)) )
))
(declare-datatypes ((ValueCell!10227 0))(
  ( (ValueCellFull!10227 (v!13316 V!33539)) (EmptyCell!10227) )
))
(declare-fun mapRest!34117 () (Array (_ BitVec 32) ValueCell!10227))

(declare-fun mapValue!34117 () ValueCell!10227)

(declare-datatypes ((array!58933 0))(
  ( (array!58934 (arr!28332 (Array (_ BitVec 32) ValueCell!10227)) (size!28812 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58933)

(declare-fun mapKey!34117 () (_ BitVec 32))

(assert (=> mapNonEmpty!34117 (= (arr!28332 _values!1400) (store mapRest!34117 mapKey!34117 mapValue!34117))))

(declare-fun res!643394 () Bool)

(assert (=> start!82498 (=> (not res!643394) (not e!541911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82498 (= res!643394 (validMask!0 mask!2110))))

(assert (=> start!82498 e!541911))

(assert (=> start!82498 true))

(declare-fun e!541914 () Bool)

(declare-fun array_inv!21883 (array!58933) Bool)

(assert (=> start!82498 (and (array_inv!21883 _values!1400) e!541914)))

(declare-fun array_inv!21884 (array!58931) Bool)

(assert (=> start!82498 (array_inv!21884 _keys!1686)))

(declare-fun b!961122 () Bool)

(declare-fun res!643396 () Bool)

(assert (=> b!961122 (=> (not res!643396) (not e!541911))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961122 (= res!643396 (and (= (size!28812 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28811 _keys!1686) (size!28812 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34117 () Bool)

(assert (=> mapIsEmpty!34117 mapRes!34117))

(declare-fun b!961123 () Bool)

(declare-fun e!541916 () Bool)

(declare-fun contains!5395 (List!19804 (_ BitVec 64)) Bool)

(assert (=> b!961123 (= e!541916 (contains!5395 Nil!19801 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!961124 () Bool)

(assert (=> b!961124 (= e!541911 e!541916)))

(declare-fun res!643393 () Bool)

(assert (=> b!961124 (=> res!643393 e!541916)))

(assert (=> b!961124 (= res!643393 (contains!5395 Nil!19801 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!961125 () Bool)

(declare-fun res!643395 () Bool)

(assert (=> b!961125 (=> (not res!643395) (not e!541911))))

(assert (=> b!961125 (= res!643395 (and (bvsle #b00000000000000000000000000000000 (size!28811 _keys!1686)) (bvslt (size!28811 _keys!1686) #b01111111111111111111111111111111)))))

(declare-fun b!961126 () Bool)

(declare-fun e!541915 () Bool)

(declare-fun tp_is_empty!21417 () Bool)

(assert (=> b!961126 (= e!541915 tp_is_empty!21417)))

(declare-fun b!961127 () Bool)

(assert (=> b!961127 (= e!541913 tp_is_empty!21417)))

(declare-fun b!961128 () Bool)

(assert (=> b!961128 (= e!541914 (and e!541915 mapRes!34117))))

(declare-fun condMapEmpty!34117 () Bool)

(declare-fun mapDefault!34117 () ValueCell!10227)

(assert (=> b!961128 (= condMapEmpty!34117 (= (arr!28332 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10227)) mapDefault!34117)))))

(assert (= (and start!82498 res!643394) b!961122))

(assert (= (and b!961122 res!643396) b!961120))

(assert (= (and b!961120 res!643397) b!961125))

(assert (= (and b!961125 res!643395) b!961121))

(assert (= (and b!961121 res!643398) b!961124))

(assert (= (and b!961124 (not res!643393)) b!961123))

(assert (= (and b!961128 condMapEmpty!34117) mapIsEmpty!34117))

(assert (= (and b!961128 (not condMapEmpty!34117)) mapNonEmpty!34117))

(get-info :version)

(assert (= (and mapNonEmpty!34117 ((_ is ValueCellFull!10227) mapValue!34117)) b!961127))

(assert (= (and b!961128 ((_ is ValueCellFull!10227) mapDefault!34117)) b!961126))

(assert (= start!82498 b!961128))

(declare-fun m!891229 () Bool)

(assert (=> mapNonEmpty!34117 m!891229))

(declare-fun m!891231 () Bool)

(assert (=> start!82498 m!891231))

(declare-fun m!891233 () Bool)

(assert (=> start!82498 m!891233))

(declare-fun m!891235 () Bool)

(assert (=> start!82498 m!891235))

(declare-fun m!891237 () Bool)

(assert (=> b!961124 m!891237))

(declare-fun m!891239 () Bool)

(assert (=> b!961123 m!891239))

(declare-fun m!891241 () Bool)

(assert (=> b!961121 m!891241))

(declare-fun m!891243 () Bool)

(assert (=> b!961120 m!891243))

(check-sat (not start!82498) (not b!961124) (not mapNonEmpty!34117) (not b!961121) tp_is_empty!21417 (not b!961123) (not b!961120))
(check-sat)
(get-model)

(declare-fun d!115975 () Bool)

(assert (=> d!115975 (= (validMask!0 mask!2110) (and (or (= mask!2110 #b00000000000000000000000000000111) (= mask!2110 #b00000000000000000000000000001111) (= mask!2110 #b00000000000000000000000000011111) (= mask!2110 #b00000000000000000000000000111111) (= mask!2110 #b00000000000000000000000001111111) (= mask!2110 #b00000000000000000000000011111111) (= mask!2110 #b00000000000000000000000111111111) (= mask!2110 #b00000000000000000000001111111111) (= mask!2110 #b00000000000000000000011111111111) (= mask!2110 #b00000000000000000000111111111111) (= mask!2110 #b00000000000000000001111111111111) (= mask!2110 #b00000000000000000011111111111111) (= mask!2110 #b00000000000000000111111111111111) (= mask!2110 #b00000000000000001111111111111111) (= mask!2110 #b00000000000000011111111111111111) (= mask!2110 #b00000000000000111111111111111111) (= mask!2110 #b00000000000001111111111111111111) (= mask!2110 #b00000000000011111111111111111111) (= mask!2110 #b00000000000111111111111111111111) (= mask!2110 #b00000000001111111111111111111111) (= mask!2110 #b00000000011111111111111111111111) (= mask!2110 #b00000000111111111111111111111111) (= mask!2110 #b00000001111111111111111111111111) (= mask!2110 #b00000011111111111111111111111111) (= mask!2110 #b00000111111111111111111111111111) (= mask!2110 #b00001111111111111111111111111111) (= mask!2110 #b00011111111111111111111111111111) (= mask!2110 #b00111111111111111111111111111111)) (bvsle mask!2110 #b00111111111111111111111111111111)))))

(assert (=> start!82498 d!115975))

(declare-fun d!115977 () Bool)

(assert (=> d!115977 (= (array_inv!21883 _values!1400) (bvsge (size!28812 _values!1400) #b00000000000000000000000000000000))))

(assert (=> start!82498 d!115977))

(declare-fun d!115979 () Bool)

(assert (=> d!115979 (= (array_inv!21884 _keys!1686) (bvsge (size!28811 _keys!1686) #b00000000000000000000000000000000))))

(assert (=> start!82498 d!115979))

(declare-fun d!115981 () Bool)

(declare-fun lt!430673 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!416 (List!19804) (InoxSet (_ BitVec 64)))

(assert (=> d!115981 (= lt!430673 (select (content!416 Nil!19801) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!541939 () Bool)

(assert (=> d!115981 (= lt!430673 e!541939)))

(declare-fun res!643422 () Bool)

(assert (=> d!115981 (=> (not res!643422) (not e!541939))))

(assert (=> d!115981 (= res!643422 ((_ is Cons!19800) Nil!19801))))

(assert (=> d!115981 (= (contains!5395 Nil!19801 #b1000000000000000000000000000000000000000000000000000000000000000) lt!430673)))

(declare-fun b!961160 () Bool)

(declare-fun e!541940 () Bool)

(assert (=> b!961160 (= e!541939 e!541940)))

(declare-fun res!643421 () Bool)

(assert (=> b!961160 (=> res!643421 e!541940)))

(assert (=> b!961160 (= res!643421 (= (h!20962 Nil!19801) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!961161 () Bool)

(assert (=> b!961161 (= e!541940 (contains!5395 (t!28175 Nil!19801) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!115981 res!643422) b!961160))

(assert (= (and b!961160 (not res!643421)) b!961161))

(declare-fun m!891261 () Bool)

(assert (=> d!115981 m!891261))

(declare-fun m!891263 () Bool)

(assert (=> d!115981 m!891263))

(declare-fun m!891265 () Bool)

(assert (=> b!961161 m!891265))

(assert (=> b!961123 d!115981))

(declare-fun d!115983 () Bool)

(declare-fun res!643427 () Bool)

(declare-fun e!541947 () Bool)

(assert (=> d!115983 (=> res!643427 e!541947)))

(assert (=> d!115983 (= res!643427 (bvsge #b00000000000000000000000000000000 (size!28811 _keys!1686)))))

(assert (=> d!115983 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110) e!541947)))

(declare-fun b!961170 () Bool)

(declare-fun e!541949 () Bool)

(declare-fun call!41729 () Bool)

(assert (=> b!961170 (= e!541949 call!41729)))

(declare-fun b!961171 () Bool)

(declare-fun e!541948 () Bool)

(assert (=> b!961171 (= e!541948 call!41729)))

(declare-fun bm!41726 () Bool)

(assert (=> bm!41726 (= call!41729 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1686 mask!2110))))

(declare-fun b!961172 () Bool)

(assert (=> b!961172 (= e!541947 e!541948)))

(declare-fun c!99835 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961172 (= c!99835 (validKeyInArray!0 (select (arr!28331 _keys!1686) #b00000000000000000000000000000000)))))

(declare-fun b!961173 () Bool)

(assert (=> b!961173 (= e!541948 e!541949)))

(declare-fun lt!430681 () (_ BitVec 64))

(assert (=> b!961173 (= lt!430681 (select (arr!28331 _keys!1686) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32183 0))(
  ( (Unit!32184) )
))
(declare-fun lt!430682 () Unit!32183)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!58931 (_ BitVec 64) (_ BitVec 32)) Unit!32183)

(assert (=> b!961173 (= lt!430682 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1686 lt!430681 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!58931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!961173 (arrayContainsKey!0 _keys!1686 lt!430681 #b00000000000000000000000000000000)))

(declare-fun lt!430680 () Unit!32183)

(assert (=> b!961173 (= lt!430680 lt!430682)))

(declare-fun res!643428 () Bool)

(declare-datatypes ((SeekEntryResult!9184 0))(
  ( (MissingZero!9184 (index!39106 (_ BitVec 32))) (Found!9184 (index!39107 (_ BitVec 32))) (Intermediate!9184 (undefined!9996 Bool) (index!39108 (_ BitVec 32)) (x!82921 (_ BitVec 32))) (Undefined!9184) (MissingVacant!9184 (index!39109 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!58931 (_ BitVec 32)) SeekEntryResult!9184)

(assert (=> b!961173 (= res!643428 (= (seekEntryOrOpen!0 (select (arr!28331 _keys!1686) #b00000000000000000000000000000000) _keys!1686 mask!2110) (Found!9184 #b00000000000000000000000000000000)))))

(assert (=> b!961173 (=> (not res!643428) (not e!541949))))

(assert (= (and d!115983 (not res!643427)) b!961172))

(assert (= (and b!961172 c!99835) b!961173))

(assert (= (and b!961172 (not c!99835)) b!961171))

(assert (= (and b!961173 res!643428) b!961170))

(assert (= (or b!961170 b!961171) bm!41726))

(declare-fun m!891267 () Bool)

(assert (=> bm!41726 m!891267))

(declare-fun m!891269 () Bool)

(assert (=> b!961172 m!891269))

(assert (=> b!961172 m!891269))

(declare-fun m!891271 () Bool)

(assert (=> b!961172 m!891271))

(assert (=> b!961173 m!891269))

(declare-fun m!891273 () Bool)

(assert (=> b!961173 m!891273))

(declare-fun m!891275 () Bool)

(assert (=> b!961173 m!891275))

(assert (=> b!961173 m!891269))

(declare-fun m!891277 () Bool)

(assert (=> b!961173 m!891277))

(assert (=> b!961120 d!115983))

(declare-fun d!115985 () Bool)

(declare-fun res!643433 () Bool)

(declare-fun e!541954 () Bool)

(assert (=> d!115985 (=> res!643433 e!541954)))

(assert (=> d!115985 (= res!643433 ((_ is Nil!19801) Nil!19801))))

(assert (=> d!115985 (= (noDuplicate!1374 Nil!19801) e!541954)))

(declare-fun b!961178 () Bool)

(declare-fun e!541955 () Bool)

(assert (=> b!961178 (= e!541954 e!541955)))

(declare-fun res!643434 () Bool)

(assert (=> b!961178 (=> (not res!643434) (not e!541955))))

(assert (=> b!961178 (= res!643434 (not (contains!5395 (t!28175 Nil!19801) (h!20962 Nil!19801))))))

(declare-fun b!961179 () Bool)

(assert (=> b!961179 (= e!541955 (noDuplicate!1374 (t!28175 Nil!19801)))))

(assert (= (and d!115985 (not res!643433)) b!961178))

(assert (= (and b!961178 res!643434) b!961179))

(declare-fun m!891279 () Bool)

(assert (=> b!961178 m!891279))

(declare-fun m!891281 () Bool)

(assert (=> b!961179 m!891281))

(assert (=> b!961121 d!115985))

(declare-fun d!115987 () Bool)

(declare-fun lt!430683 () Bool)

(assert (=> d!115987 (= lt!430683 (select (content!416 Nil!19801) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!541956 () Bool)

(assert (=> d!115987 (= lt!430683 e!541956)))

(declare-fun res!643436 () Bool)

(assert (=> d!115987 (=> (not res!643436) (not e!541956))))

(assert (=> d!115987 (= res!643436 ((_ is Cons!19800) Nil!19801))))

(assert (=> d!115987 (= (contains!5395 Nil!19801 #b0000000000000000000000000000000000000000000000000000000000000000) lt!430683)))

(declare-fun b!961180 () Bool)

(declare-fun e!541957 () Bool)

(assert (=> b!961180 (= e!541956 e!541957)))

(declare-fun res!643435 () Bool)

(assert (=> b!961180 (=> res!643435 e!541957)))

(assert (=> b!961180 (= res!643435 (= (h!20962 Nil!19801) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!961181 () Bool)

(assert (=> b!961181 (= e!541957 (contains!5395 (t!28175 Nil!19801) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!115987 res!643436) b!961180))

(assert (= (and b!961180 (not res!643435)) b!961181))

(assert (=> d!115987 m!891261))

(declare-fun m!891283 () Bool)

(assert (=> d!115987 m!891283))

(declare-fun m!891285 () Bool)

(assert (=> b!961181 m!891285))

(assert (=> b!961124 d!115987))

(declare-fun mapNonEmpty!34123 () Bool)

(declare-fun mapRes!34123 () Bool)

(declare-fun tp!65053 () Bool)

(declare-fun e!541963 () Bool)

(assert (=> mapNonEmpty!34123 (= mapRes!34123 (and tp!65053 e!541963))))

(declare-fun mapKey!34123 () (_ BitVec 32))

(declare-fun mapValue!34123 () ValueCell!10227)

(declare-fun mapRest!34123 () (Array (_ BitVec 32) ValueCell!10227))

(assert (=> mapNonEmpty!34123 (= mapRest!34117 (store mapRest!34123 mapKey!34123 mapValue!34123))))

(declare-fun mapIsEmpty!34123 () Bool)

(assert (=> mapIsEmpty!34123 mapRes!34123))

(declare-fun b!961189 () Bool)

(declare-fun e!541962 () Bool)

(assert (=> b!961189 (= e!541962 tp_is_empty!21417)))

(declare-fun condMapEmpty!34123 () Bool)

(declare-fun mapDefault!34123 () ValueCell!10227)

(assert (=> mapNonEmpty!34117 (= condMapEmpty!34123 (= mapRest!34117 ((as const (Array (_ BitVec 32) ValueCell!10227)) mapDefault!34123)))))

(assert (=> mapNonEmpty!34117 (= tp!65047 (and e!541962 mapRes!34123))))

(declare-fun b!961188 () Bool)

(assert (=> b!961188 (= e!541963 tp_is_empty!21417)))

(assert (= (and mapNonEmpty!34117 condMapEmpty!34123) mapIsEmpty!34123))

(assert (= (and mapNonEmpty!34117 (not condMapEmpty!34123)) mapNonEmpty!34123))

(assert (= (and mapNonEmpty!34123 ((_ is ValueCellFull!10227) mapValue!34123)) b!961188))

(assert (= (and mapNonEmpty!34117 ((_ is ValueCellFull!10227) mapDefault!34123)) b!961189))

(declare-fun m!891287 () Bool)

(assert (=> mapNonEmpty!34123 m!891287))

(check-sat (not b!961179) (not mapNonEmpty!34123) (not b!961178) tp_is_empty!21417 (not b!961161) (not b!961172) (not d!115987) (not d!115981) (not bm!41726) (not b!961173) (not b!961181))
(check-sat)
