; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83064 () Bool)

(assert start!83064)

(declare-fun b!968680 () Bool)

(declare-fun e!546025 () Bool)

(declare-fun tp_is_empty!21939 () Bool)

(assert (=> b!968680 (= e!546025 tp_is_empty!21939)))

(declare-fun b!968681 () Bool)

(declare-fun e!546023 () Bool)

(declare-fun e!546021 () Bool)

(assert (=> b!968681 (= e!546023 e!546021)))

(declare-fun res!648542 () Bool)

(assert (=> b!968681 (=> res!648542 e!546021)))

(declare-datatypes ((List!20124 0))(
  ( (Nil!20121) (Cons!20120 (h!21282 (_ BitVec 64)) (t!28495 List!20124)) )
))
(declare-fun contains!5549 (List!20124 (_ BitVec 64)) Bool)

(assert (=> b!968681 (= res!648542 (contains!5549 Nil!20121 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!34915 () Bool)

(declare-fun mapRes!34915 () Bool)

(declare-fun tp!66484 () Bool)

(declare-fun e!546022 () Bool)

(assert (=> mapNonEmpty!34915 (= mapRes!34915 (and tp!66484 e!546022))))

(declare-datatypes ((V!34235 0))(
  ( (V!34236 (val!11020 Int)) )
))
(declare-datatypes ((ValueCell!10488 0))(
  ( (ValueCellFull!10488 (v!13578 V!34235)) (EmptyCell!10488) )
))
(declare-datatypes ((array!59929 0))(
  ( (array!59930 (arr!28825 (Array (_ BitVec 32) ValueCell!10488)) (size!29305 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59929)

(declare-fun mapRest!34915 () (Array (_ BitVec 32) ValueCell!10488))

(declare-fun mapValue!34915 () ValueCell!10488)

(declare-fun mapKey!34915 () (_ BitVec 32))

(assert (=> mapNonEmpty!34915 (= (arr!28825 _values!1425) (store mapRest!34915 mapKey!34915 mapValue!34915))))

(declare-fun res!648540 () Bool)

(assert (=> start!83064 (=> (not res!648540) (not e!546023))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83064 (= res!648540 (validMask!0 mask!2147))))

(assert (=> start!83064 e!546023))

(assert (=> start!83064 true))

(declare-fun e!546024 () Bool)

(declare-fun array_inv!22209 (array!59929) Bool)

(assert (=> start!83064 (and (array_inv!22209 _values!1425) e!546024)))

(declare-datatypes ((array!59931 0))(
  ( (array!59932 (arr!28826 (Array (_ BitVec 32) (_ BitVec 64))) (size!29306 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59931)

(declare-fun array_inv!22210 (array!59931) Bool)

(assert (=> start!83064 (array_inv!22210 _keys!1717)))

(declare-fun mapIsEmpty!34915 () Bool)

(assert (=> mapIsEmpty!34915 mapRes!34915))

(declare-fun b!968682 () Bool)

(assert (=> b!968682 (= e!546024 (and e!546025 mapRes!34915))))

(declare-fun condMapEmpty!34915 () Bool)

(declare-fun mapDefault!34915 () ValueCell!10488)

(assert (=> b!968682 (= condMapEmpty!34915 (= (arr!28825 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10488)) mapDefault!34915)))))

(declare-fun b!968683 () Bool)

(declare-fun res!648544 () Bool)

(assert (=> b!968683 (=> (not res!648544) (not e!546023))))

(assert (=> b!968683 (= res!648544 (and (bvsle #b00000000000000000000000000000000 (size!29306 _keys!1717)) (bvslt (size!29306 _keys!1717) #b01111111111111111111111111111111)))))

(declare-fun b!968684 () Bool)

(assert (=> b!968684 (= e!546022 tp_is_empty!21939)))

(declare-fun b!968685 () Bool)

(declare-fun res!648541 () Bool)

(assert (=> b!968685 (=> (not res!648541) (not e!546023))))

(declare-fun noDuplicate!1379 (List!20124) Bool)

(assert (=> b!968685 (= res!648541 (noDuplicate!1379 Nil!20121))))

(declare-fun b!968686 () Bool)

(declare-fun res!648543 () Bool)

(assert (=> b!968686 (=> (not res!648543) (not e!546023))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968686 (= res!648543 (and (= (size!29305 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29306 _keys!1717) (size!29305 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968687 () Bool)

(declare-fun res!648545 () Bool)

(assert (=> b!968687 (=> (not res!648545) (not e!546023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59931 (_ BitVec 32)) Bool)

(assert (=> b!968687 (= res!648545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968688 () Bool)

(assert (=> b!968688 (= e!546021 (contains!5549 Nil!20121 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!83064 res!648540) b!968686))

(assert (= (and b!968686 res!648543) b!968687))

(assert (= (and b!968687 res!648545) b!968683))

(assert (= (and b!968683 res!648544) b!968685))

(assert (= (and b!968685 res!648541) b!968681))

(assert (= (and b!968681 (not res!648542)) b!968688))

(assert (= (and b!968682 condMapEmpty!34915) mapIsEmpty!34915))

(assert (= (and b!968682 (not condMapEmpty!34915)) mapNonEmpty!34915))

(get-info :version)

(assert (= (and mapNonEmpty!34915 ((_ is ValueCellFull!10488) mapValue!34915)) b!968684))

(assert (= (and b!968682 ((_ is ValueCellFull!10488) mapDefault!34915)) b!968680))

(assert (= start!83064 b!968682))

(declare-fun m!896987 () Bool)

(assert (=> start!83064 m!896987))

(declare-fun m!896989 () Bool)

(assert (=> start!83064 m!896989))

(declare-fun m!896991 () Bool)

(assert (=> start!83064 m!896991))

(declare-fun m!896993 () Bool)

(assert (=> b!968681 m!896993))

(declare-fun m!896995 () Bool)

(assert (=> mapNonEmpty!34915 m!896995))

(declare-fun m!896997 () Bool)

(assert (=> b!968687 m!896997))

(declare-fun m!896999 () Bool)

(assert (=> b!968688 m!896999))

(declare-fun m!897001 () Bool)

(assert (=> b!968685 m!897001))

(check-sat (not b!968688) (not mapNonEmpty!34915) (not start!83064) (not b!968681) tp_is_empty!21939 (not b!968685) (not b!968687))
(check-sat)
(get-model)

(declare-fun d!116195 () Bool)

(assert (=> d!116195 (= (validMask!0 mask!2147) (and (or (= mask!2147 #b00000000000000000000000000000111) (= mask!2147 #b00000000000000000000000000001111) (= mask!2147 #b00000000000000000000000000011111) (= mask!2147 #b00000000000000000000000000111111) (= mask!2147 #b00000000000000000000000001111111) (= mask!2147 #b00000000000000000000000011111111) (= mask!2147 #b00000000000000000000000111111111) (= mask!2147 #b00000000000000000000001111111111) (= mask!2147 #b00000000000000000000011111111111) (= mask!2147 #b00000000000000000000111111111111) (= mask!2147 #b00000000000000000001111111111111) (= mask!2147 #b00000000000000000011111111111111) (= mask!2147 #b00000000000000000111111111111111) (= mask!2147 #b00000000000000001111111111111111) (= mask!2147 #b00000000000000011111111111111111) (= mask!2147 #b00000000000000111111111111111111) (= mask!2147 #b00000000000001111111111111111111) (= mask!2147 #b00000000000011111111111111111111) (= mask!2147 #b00000000000111111111111111111111) (= mask!2147 #b00000000001111111111111111111111) (= mask!2147 #b00000000011111111111111111111111) (= mask!2147 #b00000000111111111111111111111111) (= mask!2147 #b00000001111111111111111111111111) (= mask!2147 #b00000011111111111111111111111111) (= mask!2147 #b00000111111111111111111111111111) (= mask!2147 #b00001111111111111111111111111111) (= mask!2147 #b00011111111111111111111111111111) (= mask!2147 #b00111111111111111111111111111111)) (bvsle mask!2147 #b00111111111111111111111111111111)))))

(assert (=> start!83064 d!116195))

(declare-fun d!116197 () Bool)

(assert (=> d!116197 (= (array_inv!22209 _values!1425) (bvsge (size!29305 _values!1425) #b00000000000000000000000000000000))))

(assert (=> start!83064 d!116197))

(declare-fun d!116199 () Bool)

(assert (=> d!116199 (= (array_inv!22210 _keys!1717) (bvsge (size!29306 _keys!1717) #b00000000000000000000000000000000))))

(assert (=> start!83064 d!116199))

(declare-fun d!116201 () Bool)

(declare-fun res!648568 () Bool)

(declare-fun e!546048 () Bool)

(assert (=> d!116201 (=> res!648568 e!546048)))

(assert (=> d!116201 (= res!648568 ((_ is Nil!20121) Nil!20121))))

(assert (=> d!116201 (= (noDuplicate!1379 Nil!20121) e!546048)))

(declare-fun b!968720 () Bool)

(declare-fun e!546049 () Bool)

(assert (=> b!968720 (= e!546048 e!546049)))

(declare-fun res!648569 () Bool)

(assert (=> b!968720 (=> (not res!648569) (not e!546049))))

(assert (=> b!968720 (= res!648569 (not (contains!5549 (t!28495 Nil!20121) (h!21282 Nil!20121))))))

(declare-fun b!968721 () Bool)

(assert (=> b!968721 (= e!546049 (noDuplicate!1379 (t!28495 Nil!20121)))))

(assert (= (and d!116201 (not res!648568)) b!968720))

(assert (= (and b!968720 res!648569) b!968721))

(declare-fun m!897019 () Bool)

(assert (=> b!968720 m!897019))

(declare-fun m!897021 () Bool)

(assert (=> b!968721 m!897021))

(assert (=> b!968685 d!116201))

(declare-fun d!116203 () Bool)

(declare-fun lt!431496 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!417 (List!20124) (InoxSet (_ BitVec 64)))

(assert (=> d!116203 (= lt!431496 (select (content!417 Nil!20121) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!546055 () Bool)

(assert (=> d!116203 (= lt!431496 e!546055)))

(declare-fun res!648575 () Bool)

(assert (=> d!116203 (=> (not res!648575) (not e!546055))))

(assert (=> d!116203 (= res!648575 ((_ is Cons!20120) Nil!20121))))

(assert (=> d!116203 (= (contains!5549 Nil!20121 #b0000000000000000000000000000000000000000000000000000000000000000) lt!431496)))

(declare-fun b!968726 () Bool)

(declare-fun e!546054 () Bool)

(assert (=> b!968726 (= e!546055 e!546054)))

(declare-fun res!648574 () Bool)

(assert (=> b!968726 (=> res!648574 e!546054)))

(assert (=> b!968726 (= res!648574 (= (h!21282 Nil!20121) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!968727 () Bool)

(assert (=> b!968727 (= e!546054 (contains!5549 (t!28495 Nil!20121) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!116203 res!648575) b!968726))

(assert (= (and b!968726 (not res!648574)) b!968727))

(declare-fun m!897023 () Bool)

(assert (=> d!116203 m!897023))

(declare-fun m!897025 () Bool)

(assert (=> d!116203 m!897025))

(declare-fun m!897027 () Bool)

(assert (=> b!968727 m!897027))

(assert (=> b!968681 d!116203))

(declare-fun d!116205 () Bool)

(declare-fun lt!431497 () Bool)

(assert (=> d!116205 (= lt!431497 (select (content!417 Nil!20121) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!546057 () Bool)

(assert (=> d!116205 (= lt!431497 e!546057)))

(declare-fun res!648577 () Bool)

(assert (=> d!116205 (=> (not res!648577) (not e!546057))))

(assert (=> d!116205 (= res!648577 ((_ is Cons!20120) Nil!20121))))

(assert (=> d!116205 (= (contains!5549 Nil!20121 #b1000000000000000000000000000000000000000000000000000000000000000) lt!431497)))

(declare-fun b!968728 () Bool)

(declare-fun e!546056 () Bool)

(assert (=> b!968728 (= e!546057 e!546056)))

(declare-fun res!648576 () Bool)

(assert (=> b!968728 (=> res!648576 e!546056)))

(assert (=> b!968728 (= res!648576 (= (h!21282 Nil!20121) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!968729 () Bool)

(assert (=> b!968729 (= e!546056 (contains!5549 (t!28495 Nil!20121) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!116205 res!648577) b!968728))

(assert (= (and b!968728 (not res!648576)) b!968729))

(assert (=> d!116205 m!897023))

(declare-fun m!897029 () Bool)

(assert (=> d!116205 m!897029))

(declare-fun m!897031 () Bool)

(assert (=> b!968729 m!897031))

(assert (=> b!968688 d!116205))

(declare-fun b!968738 () Bool)

(declare-fun e!546064 () Bool)

(declare-fun e!546065 () Bool)

(assert (=> b!968738 (= e!546064 e!546065)))

(declare-fun c!99847 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968738 (= c!99847 (validKeyInArray!0 (select (arr!28826 _keys!1717) #b00000000000000000000000000000000)))))

(declare-fun d!116207 () Bool)

(declare-fun res!648582 () Bool)

(assert (=> d!116207 (=> res!648582 e!546064)))

(assert (=> d!116207 (= res!648582 (bvsge #b00000000000000000000000000000000 (size!29306 _keys!1717)))))

(assert (=> d!116207 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147) e!546064)))

(declare-fun b!968739 () Bool)

(declare-fun call!41741 () Bool)

(assert (=> b!968739 (= e!546065 call!41741)))

(declare-fun b!968740 () Bool)

(declare-fun e!546066 () Bool)

(assert (=> b!968740 (= e!546065 e!546066)))

(declare-fun lt!431505 () (_ BitVec 64))

(assert (=> b!968740 (= lt!431505 (select (arr!28826 _keys!1717) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32337 0))(
  ( (Unit!32338) )
))
(declare-fun lt!431506 () Unit!32337)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!59931 (_ BitVec 64) (_ BitVec 32)) Unit!32337)

(assert (=> b!968740 (= lt!431506 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1717 lt!431505 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!59931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!968740 (arrayContainsKey!0 _keys!1717 lt!431505 #b00000000000000000000000000000000)))

(declare-fun lt!431504 () Unit!32337)

(assert (=> b!968740 (= lt!431504 lt!431506)))

(declare-fun res!648583 () Bool)

(declare-datatypes ((SeekEntryResult!9188 0))(
  ( (MissingZero!9188 (index!39122 (_ BitVec 32))) (Found!9188 (index!39123 (_ BitVec 32))) (Intermediate!9188 (undefined!10000 Bool) (index!39124 (_ BitVec 32)) (x!83631 (_ BitVec 32))) (Undefined!9188) (MissingVacant!9188 (index!39125 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!59931 (_ BitVec 32)) SeekEntryResult!9188)

(assert (=> b!968740 (= res!648583 (= (seekEntryOrOpen!0 (select (arr!28826 _keys!1717) #b00000000000000000000000000000000) _keys!1717 mask!2147) (Found!9188 #b00000000000000000000000000000000)))))

(assert (=> b!968740 (=> (not res!648583) (not e!546066))))

(declare-fun b!968741 () Bool)

(assert (=> b!968741 (= e!546066 call!41741)))

(declare-fun bm!41738 () Bool)

(assert (=> bm!41738 (= call!41741 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1717 mask!2147))))

(assert (= (and d!116207 (not res!648582)) b!968738))

(assert (= (and b!968738 c!99847) b!968740))

(assert (= (and b!968738 (not c!99847)) b!968739))

(assert (= (and b!968740 res!648583) b!968741))

(assert (= (or b!968741 b!968739) bm!41738))

(declare-fun m!897033 () Bool)

(assert (=> b!968738 m!897033))

(assert (=> b!968738 m!897033))

(declare-fun m!897035 () Bool)

(assert (=> b!968738 m!897035))

(assert (=> b!968740 m!897033))

(declare-fun m!897037 () Bool)

(assert (=> b!968740 m!897037))

(declare-fun m!897039 () Bool)

(assert (=> b!968740 m!897039))

(assert (=> b!968740 m!897033))

(declare-fun m!897041 () Bool)

(assert (=> b!968740 m!897041))

(declare-fun m!897043 () Bool)

(assert (=> bm!41738 m!897043))

(assert (=> b!968687 d!116207))

(declare-fun mapNonEmpty!34921 () Bool)

(declare-fun mapRes!34921 () Bool)

(declare-fun tp!66490 () Bool)

(declare-fun e!546072 () Bool)

(assert (=> mapNonEmpty!34921 (= mapRes!34921 (and tp!66490 e!546072))))

(declare-fun mapValue!34921 () ValueCell!10488)

(declare-fun mapRest!34921 () (Array (_ BitVec 32) ValueCell!10488))

(declare-fun mapKey!34921 () (_ BitVec 32))

(assert (=> mapNonEmpty!34921 (= mapRest!34915 (store mapRest!34921 mapKey!34921 mapValue!34921))))

(declare-fun b!968748 () Bool)

(assert (=> b!968748 (= e!546072 tp_is_empty!21939)))

(declare-fun mapIsEmpty!34921 () Bool)

(assert (=> mapIsEmpty!34921 mapRes!34921))

(declare-fun b!968749 () Bool)

(declare-fun e!546071 () Bool)

(assert (=> b!968749 (= e!546071 tp_is_empty!21939)))

(declare-fun condMapEmpty!34921 () Bool)

(declare-fun mapDefault!34921 () ValueCell!10488)

(assert (=> mapNonEmpty!34915 (= condMapEmpty!34921 (= mapRest!34915 ((as const (Array (_ BitVec 32) ValueCell!10488)) mapDefault!34921)))))

(assert (=> mapNonEmpty!34915 (= tp!66484 (and e!546071 mapRes!34921))))

(assert (= (and mapNonEmpty!34915 condMapEmpty!34921) mapIsEmpty!34921))

(assert (= (and mapNonEmpty!34915 (not condMapEmpty!34921)) mapNonEmpty!34921))

(assert (= (and mapNonEmpty!34921 ((_ is ValueCellFull!10488) mapValue!34921)) b!968748))

(assert (= (and mapNonEmpty!34915 ((_ is ValueCellFull!10488) mapDefault!34921)) b!968749))

(declare-fun m!897045 () Bool)

(assert (=> mapNonEmpty!34921 m!897045))

(check-sat (not mapNonEmpty!34921) (not bm!41738) (not b!968729) (not b!968740) (not d!116203) tp_is_empty!21939 (not b!968720) (not b!968738) (not d!116205) (not b!968727) (not b!968721))
(check-sat)
