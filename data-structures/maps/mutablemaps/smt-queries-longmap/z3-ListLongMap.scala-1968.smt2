; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34640 () Bool)

(assert start!34640)

(declare-fun b_free!7479 () Bool)

(declare-fun b_next!7479 () Bool)

(assert (=> start!34640 (= b_free!7479 (not b_next!7479))))

(declare-fun tp!25995 () Bool)

(declare-fun b_and!14713 () Bool)

(assert (=> start!34640 (= tp!25995 b_and!14713)))

(declare-fun b!345868 () Bool)

(declare-fun e!211993 () Bool)

(declare-fun e!211995 () Bool)

(assert (=> b!345868 (= e!211993 e!211995)))

(declare-fun res!191393 () Bool)

(assert (=> b!345868 (=> (not res!191393) (not e!211995))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!18419 0))(
  ( (array!18420 (arr!8719 (Array (_ BitVec 32) (_ BitVec 64))) (size!9071 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18419)

(declare-datatypes ((SeekEntryResult!3357 0))(
  ( (MissingZero!3357 (index!15607 (_ BitVec 32))) (Found!3357 (index!15608 (_ BitVec 32))) (Intermediate!3357 (undefined!4169 Bool) (index!15609 (_ BitVec 32)) (x!34458 (_ BitVec 32))) (Undefined!3357) (MissingVacant!3357 (index!15610 (_ BitVec 32))) )
))
(declare-fun lt!163137 () SeekEntryResult!3357)

(get-info :version)

(assert (=> b!345868 (= res!191393 (and ((_ is Found!3357) lt!163137) (= (select (arr!8719 _keys!1895) (index!15608 lt!163137)) k0!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18419 (_ BitVec 32)) SeekEntryResult!3357)

(assert (=> b!345868 (= lt!163137 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!191390 () Bool)

(assert (=> start!34640 (=> (not res!191390) (not e!211993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34640 (= res!191390 (validMask!0 mask!2385))))

(assert (=> start!34640 e!211993))

(assert (=> start!34640 true))

(declare-fun tp_is_empty!7431 () Bool)

(assert (=> start!34640 tp_is_empty!7431))

(assert (=> start!34640 tp!25995))

(declare-datatypes ((V!10885 0))(
  ( (V!10886 (val!3760 Int)) )
))
(declare-datatypes ((ValueCell!3372 0))(
  ( (ValueCellFull!3372 (v!5936 V!10885)) (EmptyCell!3372) )
))
(declare-datatypes ((array!18421 0))(
  ( (array!18422 (arr!8720 (Array (_ BitVec 32) ValueCell!3372)) (size!9072 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18421)

(declare-fun e!211994 () Bool)

(declare-fun array_inv!6448 (array!18421) Bool)

(assert (=> start!34640 (and (array_inv!6448 _values!1525) e!211994)))

(declare-fun array_inv!6449 (array!18419) Bool)

(assert (=> start!34640 (array_inv!6449 _keys!1895)))

(declare-fun b!345869 () Bool)

(declare-fun res!191391 () Bool)

(assert (=> b!345869 (=> (not res!191391) (not e!211993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18419 (_ BitVec 32)) Bool)

(assert (=> b!345869 (= res!191391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!345870 () Bool)

(declare-fun e!211998 () Bool)

(assert (=> b!345870 (= e!211998 tp_is_empty!7431)))

(declare-fun b!345871 () Bool)

(declare-fun res!191389 () Bool)

(assert (=> b!345871 (=> (not res!191389) (not e!211993))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!345871 (= res!191389 (and (= (size!9072 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9071 _keys!1895) (size!9072 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!345872 () Bool)

(declare-fun res!191387 () Bool)

(assert (=> b!345872 (=> (not res!191387) (not e!211993))))

(declare-datatypes ((List!5073 0))(
  ( (Nil!5070) (Cons!5069 (h!5925 (_ BitVec 64)) (t!10205 List!5073)) )
))
(declare-fun arrayNoDuplicates!0 (array!18419 (_ BitVec 32) List!5073) Bool)

(assert (=> b!345872 (= res!191387 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5070))))

(declare-fun b!345873 () Bool)

(declare-fun res!191392 () Bool)

(assert (=> b!345873 (=> (not res!191392) (not e!211995))))

(declare-fun arrayContainsKey!0 (array!18419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!345873 (= res!191392 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15608 lt!163137)))))

(declare-fun b!345874 () Bool)

(assert (=> b!345874 (= e!211995 (and (bvsge (index!15608 lt!163137) #b00000000000000000000000000000000) (bvsge (index!15608 lt!163137) (size!9071 _keys!1895))))))

(declare-fun b!345875 () Bool)

(declare-fun e!211997 () Bool)

(declare-fun mapRes!12597 () Bool)

(assert (=> b!345875 (= e!211994 (and e!211997 mapRes!12597))))

(declare-fun condMapEmpty!12597 () Bool)

(declare-fun mapDefault!12597 () ValueCell!3372)

(assert (=> b!345875 (= condMapEmpty!12597 (= (arr!8720 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3372)) mapDefault!12597)))))

(declare-fun mapIsEmpty!12597 () Bool)

(assert (=> mapIsEmpty!12597 mapRes!12597))

(declare-fun b!345876 () Bool)

(declare-fun res!191388 () Bool)

(assert (=> b!345876 (=> (not res!191388) (not e!211993))))

(declare-fun zeroValue!1467 () V!10885)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10885)

(declare-datatypes ((tuple2!5426 0))(
  ( (tuple2!5427 (_1!2723 (_ BitVec 64)) (_2!2723 V!10885)) )
))
(declare-datatypes ((List!5074 0))(
  ( (Nil!5071) (Cons!5070 (h!5926 tuple2!5426) (t!10206 List!5074)) )
))
(declare-datatypes ((ListLongMap!4353 0))(
  ( (ListLongMap!4354 (toList!2192 List!5074)) )
))
(declare-fun contains!2250 (ListLongMap!4353 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1712 (array!18419 array!18421 (_ BitVec 32) (_ BitVec 32) V!10885 V!10885 (_ BitVec 32) Int) ListLongMap!4353)

(assert (=> b!345876 (= res!191388 (not (contains!2250 (getCurrentListMap!1712 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!345877 () Bool)

(declare-fun res!191386 () Bool)

(assert (=> b!345877 (=> (not res!191386) (not e!211993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345877 (= res!191386 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!12597 () Bool)

(declare-fun tp!25994 () Bool)

(assert (=> mapNonEmpty!12597 (= mapRes!12597 (and tp!25994 e!211998))))

(declare-fun mapRest!12597 () (Array (_ BitVec 32) ValueCell!3372))

(declare-fun mapKey!12597 () (_ BitVec 32))

(declare-fun mapValue!12597 () ValueCell!3372)

(assert (=> mapNonEmpty!12597 (= (arr!8720 _values!1525) (store mapRest!12597 mapKey!12597 mapValue!12597))))

(declare-fun b!345878 () Bool)

(assert (=> b!345878 (= e!211997 tp_is_empty!7431)))

(assert (= (and start!34640 res!191390) b!345871))

(assert (= (and b!345871 res!191389) b!345869))

(assert (= (and b!345869 res!191391) b!345872))

(assert (= (and b!345872 res!191387) b!345877))

(assert (= (and b!345877 res!191386) b!345876))

(assert (= (and b!345876 res!191388) b!345868))

(assert (= (and b!345868 res!191393) b!345873))

(assert (= (and b!345873 res!191392) b!345874))

(assert (= (and b!345875 condMapEmpty!12597) mapIsEmpty!12597))

(assert (= (and b!345875 (not condMapEmpty!12597)) mapNonEmpty!12597))

(assert (= (and mapNonEmpty!12597 ((_ is ValueCellFull!3372) mapValue!12597)) b!345870))

(assert (= (and b!345875 ((_ is ValueCellFull!3372) mapDefault!12597)) b!345878))

(assert (= start!34640 b!345875))

(declare-fun m!347111 () Bool)

(assert (=> b!345873 m!347111))

(declare-fun m!347113 () Bool)

(assert (=> b!345869 m!347113))

(declare-fun m!347115 () Bool)

(assert (=> start!34640 m!347115))

(declare-fun m!347117 () Bool)

(assert (=> start!34640 m!347117))

(declare-fun m!347119 () Bool)

(assert (=> start!34640 m!347119))

(declare-fun m!347121 () Bool)

(assert (=> b!345876 m!347121))

(assert (=> b!345876 m!347121))

(declare-fun m!347123 () Bool)

(assert (=> b!345876 m!347123))

(declare-fun m!347125 () Bool)

(assert (=> b!345868 m!347125))

(declare-fun m!347127 () Bool)

(assert (=> b!345868 m!347127))

(declare-fun m!347129 () Bool)

(assert (=> b!345872 m!347129))

(declare-fun m!347131 () Bool)

(assert (=> b!345877 m!347131))

(declare-fun m!347133 () Bool)

(assert (=> mapNonEmpty!12597 m!347133))

(check-sat (not start!34640) (not b!345869) b_and!14713 (not b!345872) (not b_next!7479) (not b!345876) (not b!345873) tp_is_empty!7431 (not mapNonEmpty!12597) (not b!345868) (not b!345877))
(check-sat b_and!14713 (not b_next!7479))
(get-model)

(declare-fun d!71071 () Bool)

(assert (=> d!71071 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34640 d!71071))

(declare-fun d!71073 () Bool)

(assert (=> d!71073 (= (array_inv!6448 _values!1525) (bvsge (size!9072 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34640 d!71073))

(declare-fun d!71075 () Bool)

(assert (=> d!71075 (= (array_inv!6449 _keys!1895) (bvsge (size!9071 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34640 d!71075))

(declare-fun bm!26777 () Bool)

(declare-fun call!26780 () Bool)

(assert (=> bm!26777 (= call!26780 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!345920 () Bool)

(declare-fun e!212024 () Bool)

(assert (=> b!345920 (= e!212024 call!26780)))

(declare-fun d!71077 () Bool)

(declare-fun res!191423 () Bool)

(declare-fun e!212023 () Bool)

(assert (=> d!71077 (=> res!191423 e!212023)))

(assert (=> d!71077 (= res!191423 (bvsge #b00000000000000000000000000000000 (size!9071 _keys!1895)))))

(assert (=> d!71077 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!212023)))

(declare-fun b!345921 () Bool)

(declare-fun e!212025 () Bool)

(assert (=> b!345921 (= e!212023 e!212025)))

(declare-fun c!53024 () Bool)

(assert (=> b!345921 (= c!53024 (validKeyInArray!0 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345922 () Bool)

(assert (=> b!345922 (= e!212025 call!26780)))

(declare-fun b!345923 () Bool)

(assert (=> b!345923 (= e!212025 e!212024)))

(declare-fun lt!163148 () (_ BitVec 64))

(assert (=> b!345923 (= lt!163148 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10740 0))(
  ( (Unit!10741) )
))
(declare-fun lt!163149 () Unit!10740)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18419 (_ BitVec 64) (_ BitVec 32)) Unit!10740)

(assert (=> b!345923 (= lt!163149 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!163148 #b00000000000000000000000000000000))))

(assert (=> b!345923 (arrayContainsKey!0 _keys!1895 lt!163148 #b00000000000000000000000000000000)))

(declare-fun lt!163147 () Unit!10740)

(assert (=> b!345923 (= lt!163147 lt!163149)))

(declare-fun res!191422 () Bool)

(assert (=> b!345923 (= res!191422 (= (seekEntryOrOpen!0 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3357 #b00000000000000000000000000000000)))))

(assert (=> b!345923 (=> (not res!191422) (not e!212024))))

(assert (= (and d!71077 (not res!191423)) b!345921))

(assert (= (and b!345921 c!53024) b!345923))

(assert (= (and b!345921 (not c!53024)) b!345922))

(assert (= (and b!345923 res!191422) b!345920))

(assert (= (or b!345920 b!345922) bm!26777))

(declare-fun m!347159 () Bool)

(assert (=> bm!26777 m!347159))

(declare-fun m!347161 () Bool)

(assert (=> b!345921 m!347161))

(assert (=> b!345921 m!347161))

(declare-fun m!347163 () Bool)

(assert (=> b!345921 m!347163))

(assert (=> b!345923 m!347161))

(declare-fun m!347165 () Bool)

(assert (=> b!345923 m!347165))

(declare-fun m!347167 () Bool)

(assert (=> b!345923 m!347167))

(assert (=> b!345923 m!347161))

(declare-fun m!347169 () Bool)

(assert (=> b!345923 m!347169))

(assert (=> b!345869 d!71077))

(declare-fun b!345936 () Bool)

(declare-fun e!212034 () SeekEntryResult!3357)

(assert (=> b!345936 (= e!212034 Undefined!3357)))

(declare-fun b!345937 () Bool)

(declare-fun e!212032 () SeekEntryResult!3357)

(assert (=> b!345937 (= e!212034 e!212032)))

(declare-fun lt!163157 () (_ BitVec 64))

(declare-fun lt!163158 () SeekEntryResult!3357)

(assert (=> b!345937 (= lt!163157 (select (arr!8719 _keys!1895) (index!15609 lt!163158)))))

(declare-fun c!53032 () Bool)

(assert (=> b!345937 (= c!53032 (= lt!163157 k0!1348))))

(declare-fun b!345938 () Bool)

(declare-fun e!212033 () SeekEntryResult!3357)

(assert (=> b!345938 (= e!212033 (MissingZero!3357 (index!15609 lt!163158)))))

(declare-fun b!345939 () Bool)

(declare-fun c!53033 () Bool)

(assert (=> b!345939 (= c!53033 (= lt!163157 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!345939 (= e!212032 e!212033)))

(declare-fun b!345940 () Bool)

(assert (=> b!345940 (= e!212032 (Found!3357 (index!15609 lt!163158)))))

(declare-fun d!71079 () Bool)

(declare-fun lt!163156 () SeekEntryResult!3357)

(assert (=> d!71079 (and (or ((_ is Undefined!3357) lt!163156) (not ((_ is Found!3357) lt!163156)) (and (bvsge (index!15608 lt!163156) #b00000000000000000000000000000000) (bvslt (index!15608 lt!163156) (size!9071 _keys!1895)))) (or ((_ is Undefined!3357) lt!163156) ((_ is Found!3357) lt!163156) (not ((_ is MissingZero!3357) lt!163156)) (and (bvsge (index!15607 lt!163156) #b00000000000000000000000000000000) (bvslt (index!15607 lt!163156) (size!9071 _keys!1895)))) (or ((_ is Undefined!3357) lt!163156) ((_ is Found!3357) lt!163156) ((_ is MissingZero!3357) lt!163156) (not ((_ is MissingVacant!3357) lt!163156)) (and (bvsge (index!15610 lt!163156) #b00000000000000000000000000000000) (bvslt (index!15610 lt!163156) (size!9071 _keys!1895)))) (or ((_ is Undefined!3357) lt!163156) (ite ((_ is Found!3357) lt!163156) (= (select (arr!8719 _keys!1895) (index!15608 lt!163156)) k0!1348) (ite ((_ is MissingZero!3357) lt!163156) (= (select (arr!8719 _keys!1895) (index!15607 lt!163156)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3357) lt!163156) (= (select (arr!8719 _keys!1895) (index!15610 lt!163156)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71079 (= lt!163156 e!212034)))

(declare-fun c!53031 () Bool)

(assert (=> d!71079 (= c!53031 (and ((_ is Intermediate!3357) lt!163158) (undefined!4169 lt!163158)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18419 (_ BitVec 32)) SeekEntryResult!3357)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71079 (= lt!163158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71079 (validMask!0 mask!2385)))

(assert (=> d!71079 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!163156)))

(declare-fun b!345941 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18419 (_ BitVec 32)) SeekEntryResult!3357)

(assert (=> b!345941 (= e!212033 (seekKeyOrZeroReturnVacant!0 (x!34458 lt!163158) (index!15609 lt!163158) (index!15609 lt!163158) k0!1348 _keys!1895 mask!2385))))

(assert (= (and d!71079 c!53031) b!345936))

(assert (= (and d!71079 (not c!53031)) b!345937))

(assert (= (and b!345937 c!53032) b!345940))

(assert (= (and b!345937 (not c!53032)) b!345939))

(assert (= (and b!345939 c!53033) b!345938))

(assert (= (and b!345939 (not c!53033)) b!345941))

(declare-fun m!347171 () Bool)

(assert (=> b!345937 m!347171))

(declare-fun m!347173 () Bool)

(assert (=> d!71079 m!347173))

(declare-fun m!347175 () Bool)

(assert (=> d!71079 m!347175))

(assert (=> d!71079 m!347115))

(assert (=> d!71079 m!347173))

(declare-fun m!347177 () Bool)

(assert (=> d!71079 m!347177))

(declare-fun m!347179 () Bool)

(assert (=> d!71079 m!347179))

(declare-fun m!347181 () Bool)

(assert (=> d!71079 m!347181))

(declare-fun m!347183 () Bool)

(assert (=> b!345941 m!347183))

(assert (=> b!345868 d!71079))

(declare-fun d!71081 () Bool)

(declare-fun res!191428 () Bool)

(declare-fun e!212039 () Bool)

(assert (=> d!71081 (=> res!191428 e!212039)))

(assert (=> d!71081 (= res!191428 (= (select (arr!8719 _keys!1895) (index!15608 lt!163137)) k0!1348))))

(assert (=> d!71081 (= (arrayContainsKey!0 _keys!1895 k0!1348 (index!15608 lt!163137)) e!212039)))

(declare-fun b!345946 () Bool)

(declare-fun e!212040 () Bool)

(assert (=> b!345946 (= e!212039 e!212040)))

(declare-fun res!191429 () Bool)

(assert (=> b!345946 (=> (not res!191429) (not e!212040))))

(assert (=> b!345946 (= res!191429 (bvslt (bvadd (index!15608 lt!163137) #b00000000000000000000000000000001) (size!9071 _keys!1895)))))

(declare-fun b!345947 () Bool)

(assert (=> b!345947 (= e!212040 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd (index!15608 lt!163137) #b00000000000000000000000000000001)))))

(assert (= (and d!71081 (not res!191428)) b!345946))

(assert (= (and b!345946 res!191429) b!345947))

(assert (=> d!71081 m!347125))

(declare-fun m!347185 () Bool)

(assert (=> b!345947 m!347185))

(assert (=> b!345873 d!71081))

(declare-fun d!71083 () Bool)

(assert (=> d!71083 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!345877 d!71083))

(declare-fun b!345958 () Bool)

(declare-fun e!212049 () Bool)

(declare-fun e!212052 () Bool)

(assert (=> b!345958 (= e!212049 e!212052)))

(declare-fun res!191438 () Bool)

(assert (=> b!345958 (=> (not res!191438) (not e!212052))))

(declare-fun e!212051 () Bool)

(assert (=> b!345958 (= res!191438 (not e!212051))))

(declare-fun res!191437 () Bool)

(assert (=> b!345958 (=> (not res!191437) (not e!212051))))

(assert (=> b!345958 (= res!191437 (validKeyInArray!0 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71085 () Bool)

(declare-fun res!191436 () Bool)

(assert (=> d!71085 (=> res!191436 e!212049)))

(assert (=> d!71085 (= res!191436 (bvsge #b00000000000000000000000000000000 (size!9071 _keys!1895)))))

(assert (=> d!71085 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5070) e!212049)))

(declare-fun b!345959 () Bool)

(declare-fun e!212050 () Bool)

(declare-fun call!26783 () Bool)

(assert (=> b!345959 (= e!212050 call!26783)))

(declare-fun bm!26780 () Bool)

(declare-fun c!53036 () Bool)

(assert (=> bm!26780 (= call!26783 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53036 (Cons!5069 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000) Nil!5070) Nil!5070)))))

(declare-fun b!345960 () Bool)

(assert (=> b!345960 (= e!212050 call!26783)))

(declare-fun b!345961 () Bool)

(assert (=> b!345961 (= e!212052 e!212050)))

(assert (=> b!345961 (= c!53036 (validKeyInArray!0 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345962 () Bool)

(declare-fun contains!2252 (List!5073 (_ BitVec 64)) Bool)

(assert (=> b!345962 (= e!212051 (contains!2252 Nil!5070 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71085 (not res!191436)) b!345958))

(assert (= (and b!345958 res!191437) b!345962))

(assert (= (and b!345958 res!191438) b!345961))

(assert (= (and b!345961 c!53036) b!345959))

(assert (= (and b!345961 (not c!53036)) b!345960))

(assert (= (or b!345959 b!345960) bm!26780))

(assert (=> b!345958 m!347161))

(assert (=> b!345958 m!347161))

(assert (=> b!345958 m!347163))

(assert (=> bm!26780 m!347161))

(declare-fun m!347187 () Bool)

(assert (=> bm!26780 m!347187))

(assert (=> b!345961 m!347161))

(assert (=> b!345961 m!347161))

(assert (=> b!345961 m!347163))

(assert (=> b!345962 m!347161))

(assert (=> b!345962 m!347161))

(declare-fun m!347189 () Bool)

(assert (=> b!345962 m!347189))

(assert (=> b!345872 d!71085))

(declare-fun d!71087 () Bool)

(declare-fun e!212057 () Bool)

(assert (=> d!71087 e!212057))

(declare-fun res!191441 () Bool)

(assert (=> d!71087 (=> res!191441 e!212057)))

(declare-fun lt!163168 () Bool)

(assert (=> d!71087 (= res!191441 (not lt!163168))))

(declare-fun lt!163169 () Bool)

(assert (=> d!71087 (= lt!163168 lt!163169)))

(declare-fun lt!163167 () Unit!10740)

(declare-fun e!212058 () Unit!10740)

(assert (=> d!71087 (= lt!163167 e!212058)))

(declare-fun c!53039 () Bool)

(assert (=> d!71087 (= c!53039 lt!163169)))

(declare-fun containsKey!333 (List!5074 (_ BitVec 64)) Bool)

(assert (=> d!71087 (= lt!163169 (containsKey!333 (toList!2192 (getCurrentListMap!1712 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71087 (= (contains!2250 (getCurrentListMap!1712 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!163168)))

(declare-fun b!345969 () Bool)

(declare-fun lt!163170 () Unit!10740)

(assert (=> b!345969 (= e!212058 lt!163170)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!282 (List!5074 (_ BitVec 64)) Unit!10740)

(assert (=> b!345969 (= lt!163170 (lemmaContainsKeyImpliesGetValueByKeyDefined!282 (toList!2192 (getCurrentListMap!1712 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!347 0))(
  ( (Some!346 (v!5938 V!10885)) (None!345) )
))
(declare-fun isDefined!283 (Option!347) Bool)

(declare-fun getValueByKey!341 (List!5074 (_ BitVec 64)) Option!347)

(assert (=> b!345969 (isDefined!283 (getValueByKey!341 (toList!2192 (getCurrentListMap!1712 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!345970 () Bool)

(declare-fun Unit!10742 () Unit!10740)

(assert (=> b!345970 (= e!212058 Unit!10742)))

(declare-fun b!345971 () Bool)

(assert (=> b!345971 (= e!212057 (isDefined!283 (getValueByKey!341 (toList!2192 (getCurrentListMap!1712 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71087 c!53039) b!345969))

(assert (= (and d!71087 (not c!53039)) b!345970))

(assert (= (and d!71087 (not res!191441)) b!345971))

(declare-fun m!347191 () Bool)

(assert (=> d!71087 m!347191))

(declare-fun m!347193 () Bool)

(assert (=> b!345969 m!347193))

(declare-fun m!347195 () Bool)

(assert (=> b!345969 m!347195))

(assert (=> b!345969 m!347195))

(declare-fun m!347197 () Bool)

(assert (=> b!345969 m!347197))

(assert (=> b!345971 m!347195))

(assert (=> b!345971 m!347195))

(assert (=> b!345971 m!347197))

(assert (=> b!345876 d!71087))

(declare-fun bm!26795 () Bool)

(declare-fun call!26802 () ListLongMap!4353)

(declare-fun call!26799 () ListLongMap!4353)

(assert (=> bm!26795 (= call!26802 call!26799)))

(declare-fun e!212096 () Bool)

(declare-fun lt!163229 () ListLongMap!4353)

(declare-fun b!346014 () Bool)

(declare-fun apply!284 (ListLongMap!4353 (_ BitVec 64)) V!10885)

(declare-fun get!4707 (ValueCell!3372 V!10885) V!10885)

(declare-fun dynLambda!622 (Int (_ BitVec 64)) V!10885)

(assert (=> b!346014 (= e!212096 (= (apply!284 lt!163229 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000)) (get!4707 (select (arr!8720 _values!1525) #b00000000000000000000000000000000) (dynLambda!622 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!346014 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9072 _values!1525)))))

(assert (=> b!346014 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9071 _keys!1895)))))

(declare-fun b!346015 () Bool)

(declare-fun e!212090 () ListLongMap!4353)

(declare-fun e!212094 () ListLongMap!4353)

(assert (=> b!346015 (= e!212090 e!212094)))

(declare-fun c!53056 () Bool)

(assert (=> b!346015 (= c!53056 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!346016 () Bool)

(declare-fun +!728 (ListLongMap!4353 tuple2!5426) ListLongMap!4353)

(assert (=> b!346016 (= e!212090 (+!728 call!26799 (tuple2!5427 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!346017 () Bool)

(declare-fun e!212093 () Bool)

(assert (=> b!346017 (= e!212093 (= (apply!284 lt!163229 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!346018 () Bool)

(declare-fun e!212085 () Bool)

(declare-fun e!212091 () Bool)

(assert (=> b!346018 (= e!212085 e!212091)))

(declare-fun res!191460 () Bool)

(declare-fun call!26800 () Bool)

(assert (=> b!346018 (= res!191460 call!26800)))

(assert (=> b!346018 (=> (not res!191460) (not e!212091))))

(declare-fun b!346019 () Bool)

(declare-fun e!212086 () Bool)

(assert (=> b!346019 (= e!212086 (validKeyInArray!0 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!346020 () Bool)

(declare-fun e!212087 () Bool)

(declare-fun e!212092 () Bool)

(assert (=> b!346020 (= e!212087 e!212092)))

(declare-fun c!53055 () Bool)

(assert (=> b!346020 (= c!53055 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!346021 () Bool)

(assert (=> b!346021 (= e!212092 e!212093)))

(declare-fun res!191461 () Bool)

(declare-fun call!26803 () Bool)

(assert (=> b!346021 (= res!191461 call!26803)))

(assert (=> b!346021 (=> (not res!191461) (not e!212093))))

(declare-fun b!346022 () Bool)

(assert (=> b!346022 (= e!212085 (not call!26800))))

(declare-fun b!346023 () Bool)

(declare-fun res!191463 () Bool)

(assert (=> b!346023 (=> (not res!191463) (not e!212087))))

(declare-fun e!212088 () Bool)

(assert (=> b!346023 (= res!191463 e!212088)))

(declare-fun res!191462 () Bool)

(assert (=> b!346023 (=> res!191462 e!212088)))

(declare-fun e!212089 () Bool)

(assert (=> b!346023 (= res!191462 (not e!212089))))

(declare-fun res!191467 () Bool)

(assert (=> b!346023 (=> (not res!191467) (not e!212089))))

(assert (=> b!346023 (= res!191467 (bvslt #b00000000000000000000000000000000 (size!9071 _keys!1895)))))

(declare-fun b!346024 () Bool)

(declare-fun e!212097 () ListLongMap!4353)

(assert (=> b!346024 (= e!212097 call!26802)))

(declare-fun bm!26796 () Bool)

(declare-fun call!26798 () ListLongMap!4353)

(declare-fun call!26804 () ListLongMap!4353)

(assert (=> bm!26796 (= call!26798 call!26804)))

(declare-fun b!346025 () Bool)

(assert (=> b!346025 (= e!212092 (not call!26803))))

(declare-fun b!346026 () Bool)

(assert (=> b!346026 (= e!212097 call!26798)))

(declare-fun bm!26797 () Bool)

(assert (=> bm!26797 (= call!26803 (contains!2250 lt!163229 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!26801 () ListLongMap!4353)

(declare-fun bm!26798 () Bool)

(declare-fun c!53054 () Bool)

(assert (=> bm!26798 (= call!26799 (+!728 (ite c!53054 call!26801 (ite c!53056 call!26804 call!26798)) (ite (or c!53054 c!53056) (tuple2!5427 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5427 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!346027 () Bool)

(declare-fun c!53053 () Bool)

(assert (=> b!346027 (= c!53053 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!346027 (= e!212094 e!212097)))

(declare-fun b!346028 () Bool)

(declare-fun e!212095 () Unit!10740)

(declare-fun Unit!10743 () Unit!10740)

(assert (=> b!346028 (= e!212095 Unit!10743)))

(declare-fun bm!26799 () Bool)

(assert (=> bm!26799 (= call!26800 (contains!2250 lt!163229 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!71089 () Bool)

(assert (=> d!71089 e!212087))

(declare-fun res!191468 () Bool)

(assert (=> d!71089 (=> (not res!191468) (not e!212087))))

(assert (=> d!71089 (= res!191468 (or (bvsge #b00000000000000000000000000000000 (size!9071 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9071 _keys!1895)))))))

(declare-fun lt!163236 () ListLongMap!4353)

(assert (=> d!71089 (= lt!163229 lt!163236)))

(declare-fun lt!163224 () Unit!10740)

(assert (=> d!71089 (= lt!163224 e!212095)))

(declare-fun c!53057 () Bool)

(assert (=> d!71089 (= c!53057 e!212086)))

(declare-fun res!191465 () Bool)

(assert (=> d!71089 (=> (not res!191465) (not e!212086))))

(assert (=> d!71089 (= res!191465 (bvslt #b00000000000000000000000000000000 (size!9071 _keys!1895)))))

(assert (=> d!71089 (= lt!163236 e!212090)))

(assert (=> d!71089 (= c!53054 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71089 (validMask!0 mask!2385)))

(assert (=> d!71089 (= (getCurrentListMap!1712 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!163229)))

(declare-fun b!346029 () Bool)

(declare-fun lt!163222 () Unit!10740)

(assert (=> b!346029 (= e!212095 lt!163222)))

(declare-fun lt!163233 () ListLongMap!4353)

(declare-fun getCurrentListMapNoExtraKeys!603 (array!18419 array!18421 (_ BitVec 32) (_ BitVec 32) V!10885 V!10885 (_ BitVec 32) Int) ListLongMap!4353)

(assert (=> b!346029 (= lt!163233 (getCurrentListMapNoExtraKeys!603 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163218 () (_ BitVec 64))

(assert (=> b!346029 (= lt!163218 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163221 () (_ BitVec 64))

(assert (=> b!346029 (= lt!163221 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163217 () Unit!10740)

(declare-fun addStillContains!260 (ListLongMap!4353 (_ BitVec 64) V!10885 (_ BitVec 64)) Unit!10740)

(assert (=> b!346029 (= lt!163217 (addStillContains!260 lt!163233 lt!163218 zeroValue!1467 lt!163221))))

(assert (=> b!346029 (contains!2250 (+!728 lt!163233 (tuple2!5427 lt!163218 zeroValue!1467)) lt!163221)))

(declare-fun lt!163234 () Unit!10740)

(assert (=> b!346029 (= lt!163234 lt!163217)))

(declare-fun lt!163225 () ListLongMap!4353)

(assert (=> b!346029 (= lt!163225 (getCurrentListMapNoExtraKeys!603 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163227 () (_ BitVec 64))

(assert (=> b!346029 (= lt!163227 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163219 () (_ BitVec 64))

(assert (=> b!346029 (= lt!163219 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163223 () Unit!10740)

(declare-fun addApplyDifferent!260 (ListLongMap!4353 (_ BitVec 64) V!10885 (_ BitVec 64)) Unit!10740)

(assert (=> b!346029 (= lt!163223 (addApplyDifferent!260 lt!163225 lt!163227 minValue!1467 lt!163219))))

(assert (=> b!346029 (= (apply!284 (+!728 lt!163225 (tuple2!5427 lt!163227 minValue!1467)) lt!163219) (apply!284 lt!163225 lt!163219))))

(declare-fun lt!163215 () Unit!10740)

(assert (=> b!346029 (= lt!163215 lt!163223)))

(declare-fun lt!163220 () ListLongMap!4353)

(assert (=> b!346029 (= lt!163220 (getCurrentListMapNoExtraKeys!603 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163216 () (_ BitVec 64))

(assert (=> b!346029 (= lt!163216 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163232 () (_ BitVec 64))

(assert (=> b!346029 (= lt!163232 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163235 () Unit!10740)

(assert (=> b!346029 (= lt!163235 (addApplyDifferent!260 lt!163220 lt!163216 zeroValue!1467 lt!163232))))

(assert (=> b!346029 (= (apply!284 (+!728 lt!163220 (tuple2!5427 lt!163216 zeroValue!1467)) lt!163232) (apply!284 lt!163220 lt!163232))))

(declare-fun lt!163228 () Unit!10740)

(assert (=> b!346029 (= lt!163228 lt!163235)))

(declare-fun lt!163231 () ListLongMap!4353)

(assert (=> b!346029 (= lt!163231 (getCurrentListMapNoExtraKeys!603 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163226 () (_ BitVec 64))

(assert (=> b!346029 (= lt!163226 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163230 () (_ BitVec 64))

(assert (=> b!346029 (= lt!163230 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!346029 (= lt!163222 (addApplyDifferent!260 lt!163231 lt!163226 minValue!1467 lt!163230))))

(assert (=> b!346029 (= (apply!284 (+!728 lt!163231 (tuple2!5427 lt!163226 minValue!1467)) lt!163230) (apply!284 lt!163231 lt!163230))))

(declare-fun bm!26800 () Bool)

(assert (=> bm!26800 (= call!26801 (getCurrentListMapNoExtraKeys!603 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!346030 () Bool)

(assert (=> b!346030 (= e!212094 call!26802)))

(declare-fun b!346031 () Bool)

(assert (=> b!346031 (= e!212091 (= (apply!284 lt!163229 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun bm!26801 () Bool)

(assert (=> bm!26801 (= call!26804 call!26801)))

(declare-fun b!346032 () Bool)

(assert (=> b!346032 (= e!212088 e!212096)))

(declare-fun res!191466 () Bool)

(assert (=> b!346032 (=> (not res!191466) (not e!212096))))

(assert (=> b!346032 (= res!191466 (contains!2250 lt!163229 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!346032 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9071 _keys!1895)))))

(declare-fun b!346033 () Bool)

(declare-fun res!191464 () Bool)

(assert (=> b!346033 (=> (not res!191464) (not e!212087))))

(assert (=> b!346033 (= res!191464 e!212085)))

(declare-fun c!53052 () Bool)

(assert (=> b!346033 (= c!53052 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!346034 () Bool)

(assert (=> b!346034 (= e!212089 (validKeyInArray!0 (select (arr!8719 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71089 c!53054) b!346016))

(assert (= (and d!71089 (not c!53054)) b!346015))

(assert (= (and b!346015 c!53056) b!346030))

(assert (= (and b!346015 (not c!53056)) b!346027))

(assert (= (and b!346027 c!53053) b!346024))

(assert (= (and b!346027 (not c!53053)) b!346026))

(assert (= (or b!346024 b!346026) bm!26796))

(assert (= (or b!346030 bm!26796) bm!26801))

(assert (= (or b!346030 b!346024) bm!26795))

(assert (= (or b!346016 bm!26801) bm!26800))

(assert (= (or b!346016 bm!26795) bm!26798))

(assert (= (and d!71089 res!191465) b!346019))

(assert (= (and d!71089 c!53057) b!346029))

(assert (= (and d!71089 (not c!53057)) b!346028))

(assert (= (and d!71089 res!191468) b!346023))

(assert (= (and b!346023 res!191467) b!346034))

(assert (= (and b!346023 (not res!191462)) b!346032))

(assert (= (and b!346032 res!191466) b!346014))

(assert (= (and b!346023 res!191463) b!346033))

(assert (= (and b!346033 c!53052) b!346018))

(assert (= (and b!346033 (not c!53052)) b!346022))

(assert (= (and b!346018 res!191460) b!346031))

(assert (= (or b!346018 b!346022) bm!26799))

(assert (= (and b!346033 res!191464) b!346020))

(assert (= (and b!346020 c!53055) b!346021))

(assert (= (and b!346020 (not c!53055)) b!346025))

(assert (= (and b!346021 res!191461) b!346017))

(assert (= (or b!346021 b!346025) bm!26797))

(declare-fun b_lambda!8505 () Bool)

(assert (=> (not b_lambda!8505) (not b!346014)))

(declare-fun t!10210 () Bool)

(declare-fun tb!3091 () Bool)

(assert (=> (and start!34640 (= defaultEntry!1528 defaultEntry!1528) t!10210) tb!3091))

(declare-fun result!5587 () Bool)

(assert (=> tb!3091 (= result!5587 tp_is_empty!7431)))

(assert (=> b!346014 t!10210))

(declare-fun b_and!14717 () Bool)

(assert (= b_and!14713 (and (=> t!10210 result!5587) b_and!14717)))

(assert (=> b!346032 m!347161))

(assert (=> b!346032 m!347161))

(declare-fun m!347199 () Bool)

(assert (=> b!346032 m!347199))

(declare-fun m!347201 () Bool)

(assert (=> bm!26797 m!347201))

(declare-fun m!347203 () Bool)

(assert (=> bm!26800 m!347203))

(declare-fun m!347205 () Bool)

(assert (=> bm!26798 m!347205))

(declare-fun m!347207 () Bool)

(assert (=> b!346017 m!347207))

(declare-fun m!347209 () Bool)

(assert (=> b!346014 m!347209))

(declare-fun m!347211 () Bool)

(assert (=> b!346014 m!347211))

(assert (=> b!346014 m!347161))

(declare-fun m!347213 () Bool)

(assert (=> b!346014 m!347213))

(assert (=> b!346014 m!347211))

(assert (=> b!346014 m!347209))

(declare-fun m!347215 () Bool)

(assert (=> b!346014 m!347215))

(assert (=> b!346014 m!347161))

(declare-fun m!347217 () Bool)

(assert (=> b!346031 m!347217))

(assert (=> d!71089 m!347115))

(assert (=> b!346019 m!347161))

(assert (=> b!346019 m!347161))

(assert (=> b!346019 m!347163))

(declare-fun m!347219 () Bool)

(assert (=> b!346016 m!347219))

(declare-fun m!347221 () Bool)

(assert (=> b!346029 m!347221))

(declare-fun m!347223 () Bool)

(assert (=> b!346029 m!347223))

(declare-fun m!347225 () Bool)

(assert (=> b!346029 m!347225))

(assert (=> b!346029 m!347225))

(declare-fun m!347227 () Bool)

(assert (=> b!346029 m!347227))

(declare-fun m!347229 () Bool)

(assert (=> b!346029 m!347229))

(declare-fun m!347231 () Bool)

(assert (=> b!346029 m!347231))

(assert (=> b!346029 m!347203))

(declare-fun m!347233 () Bool)

(assert (=> b!346029 m!347233))

(declare-fun m!347235 () Bool)

(assert (=> b!346029 m!347235))

(assert (=> b!346029 m!347161))

(declare-fun m!347237 () Bool)

(assert (=> b!346029 m!347237))

(assert (=> b!346029 m!347229))

(declare-fun m!347239 () Bool)

(assert (=> b!346029 m!347239))

(declare-fun m!347241 () Bool)

(assert (=> b!346029 m!347241))

(declare-fun m!347243 () Bool)

(assert (=> b!346029 m!347243))

(assert (=> b!346029 m!347237))

(declare-fun m!347245 () Bool)

(assert (=> b!346029 m!347245))

(declare-fun m!347247 () Bool)

(assert (=> b!346029 m!347247))

(assert (=> b!346029 m!347221))

(declare-fun m!347249 () Bool)

(assert (=> b!346029 m!347249))

(declare-fun m!347251 () Bool)

(assert (=> bm!26799 m!347251))

(assert (=> b!346034 m!347161))

(assert (=> b!346034 m!347161))

(assert (=> b!346034 m!347163))

(assert (=> b!345876 d!71089))

(declare-fun condMapEmpty!12603 () Bool)

(declare-fun mapDefault!12603 () ValueCell!3372)

(assert (=> mapNonEmpty!12597 (= condMapEmpty!12603 (= mapRest!12597 ((as const (Array (_ BitVec 32) ValueCell!3372)) mapDefault!12603)))))

(declare-fun e!212103 () Bool)

(declare-fun mapRes!12603 () Bool)

(assert (=> mapNonEmpty!12597 (= tp!25994 (and e!212103 mapRes!12603))))

(declare-fun b!346044 () Bool)

(assert (=> b!346044 (= e!212103 tp_is_empty!7431)))

(declare-fun mapNonEmpty!12603 () Bool)

(declare-fun tp!26004 () Bool)

(declare-fun e!212102 () Bool)

(assert (=> mapNonEmpty!12603 (= mapRes!12603 (and tp!26004 e!212102))))

(declare-fun mapValue!12603 () ValueCell!3372)

(declare-fun mapRest!12603 () (Array (_ BitVec 32) ValueCell!3372))

(declare-fun mapKey!12603 () (_ BitVec 32))

(assert (=> mapNonEmpty!12603 (= mapRest!12597 (store mapRest!12603 mapKey!12603 mapValue!12603))))

(declare-fun b!346043 () Bool)

(assert (=> b!346043 (= e!212102 tp_is_empty!7431)))

(declare-fun mapIsEmpty!12603 () Bool)

(assert (=> mapIsEmpty!12603 mapRes!12603))

(assert (= (and mapNonEmpty!12597 condMapEmpty!12603) mapIsEmpty!12603))

(assert (= (and mapNonEmpty!12597 (not condMapEmpty!12603)) mapNonEmpty!12603))

(assert (= (and mapNonEmpty!12603 ((_ is ValueCellFull!3372) mapValue!12603)) b!346043))

(assert (= (and mapNonEmpty!12597 ((_ is ValueCellFull!3372) mapDefault!12603)) b!346044))

(declare-fun m!347253 () Bool)

(assert (=> mapNonEmpty!12603 m!347253))

(declare-fun b_lambda!8507 () Bool)

(assert (= b_lambda!8505 (or (and start!34640 b_free!7479) b_lambda!8507)))

(check-sat (not b!346014) (not b!345923) (not b!345958) b_and!14717 (not b_next!7479) (not bm!26780) tp_is_empty!7431 (not b!345971) (not b!345947) (not b!345941) (not mapNonEmpty!12603) (not b!345962) (not b!346031) (not bm!26797) (not d!71079) (not b!346016) (not bm!26798) (not b!345921) (not b!346017) (not bm!26777) (not bm!26799) (not b!345961) (not b!346034) (not b!345969) (not d!71089) (not b_lambda!8507) (not b!346032) (not d!71087) (not bm!26800) (not b!346029) (not b!346019))
(check-sat b_and!14717 (not b_next!7479))
