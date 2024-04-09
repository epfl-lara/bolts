; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38666 () Bool)

(assert start!38666)

(declare-fun b_free!9195 () Bool)

(declare-fun b_next!9195 () Bool)

(assert (=> start!38666 (= b_free!9195 (not b_next!9195))))

(declare-fun tp!32709 () Bool)

(declare-fun b_and!16599 () Bool)

(assert (=> start!38666 (= tp!32709 b_and!16599)))

(declare-fun b!401236 () Bool)

(declare-fun res!231039 () Bool)

(declare-fun e!241947 () Bool)

(assert (=> b!401236 (=> (not res!231039) (not e!241947))))

(declare-datatypes ((array!24029 0))(
  ( (array!24030 (arr!11461 (Array (_ BitVec 32) (_ BitVec 64))) (size!11813 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24029)

(declare-datatypes ((List!6631 0))(
  ( (Nil!6628) (Cons!6627 (h!7483 (_ BitVec 64)) (t!11813 List!6631)) )
))
(declare-fun arrayNoDuplicates!0 (array!24029 (_ BitVec 32) List!6631) Bool)

(assert (=> b!401236 (= res!231039 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6628))))

(declare-fun mapIsEmpty!16737 () Bool)

(declare-fun mapRes!16737 () Bool)

(assert (=> mapIsEmpty!16737 mapRes!16737))

(declare-fun b!401237 () Bool)

(declare-fun res!231040 () Bool)

(declare-fun e!241946 () Bool)

(assert (=> b!401237 (=> (not res!231040) (not e!241946))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!401237 (= res!231040 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11813 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401238 () Bool)

(declare-fun res!231038 () Bool)

(assert (=> b!401238 (=> (not res!231038) (not e!241947))))

(assert (=> b!401238 (= res!231038 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11813 _keys!709))))))

(declare-fun e!241944 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((V!14541 0))(
  ( (V!14542 (val!5083 Int)) )
))
(declare-datatypes ((tuple2!6680 0))(
  ( (tuple2!6681 (_1!3350 (_ BitVec 64)) (_2!3350 V!14541)) )
))
(declare-datatypes ((List!6632 0))(
  ( (Nil!6629) (Cons!6628 (h!7484 tuple2!6680) (t!11814 List!6632)) )
))
(declare-datatypes ((ListLongMap!5607 0))(
  ( (ListLongMap!5608 (toList!2819 List!6632)) )
))
(declare-fun call!28246 () ListLongMap!5607)

(declare-fun v!412 () V!14541)

(declare-fun b!401239 () Bool)

(declare-fun call!28247 () ListLongMap!5607)

(declare-fun +!1103 (ListLongMap!5607 tuple2!6680) ListLongMap!5607)

(assert (=> b!401239 (= e!241944 (= call!28246 (+!1103 call!28247 (tuple2!6681 k0!794 v!412))))))

(declare-fun b!401240 () Bool)

(declare-fun res!231044 () Bool)

(assert (=> b!401240 (=> (not res!231044) (not e!241947))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24029 (_ BitVec 32)) Bool)

(assert (=> b!401240 (= res!231044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!401241 () Bool)

(declare-fun res!231046 () Bool)

(assert (=> b!401241 (=> (not res!231046) (not e!241947))))

(declare-fun arrayContainsKey!0 (array!24029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401241 (= res!231046 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16737 () Bool)

(declare-fun tp!32708 () Bool)

(declare-fun e!241942 () Bool)

(assert (=> mapNonEmpty!16737 (= mapRes!16737 (and tp!32708 e!241942))))

(declare-datatypes ((ValueCell!4695 0))(
  ( (ValueCellFull!4695 (v!7326 V!14541)) (EmptyCell!4695) )
))
(declare-fun mapValue!16737 () ValueCell!4695)

(declare-fun mapRest!16737 () (Array (_ BitVec 32) ValueCell!4695))

(declare-datatypes ((array!24031 0))(
  ( (array!24032 (arr!11462 (Array (_ BitVec 32) ValueCell!4695)) (size!11814 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24031)

(declare-fun mapKey!16737 () (_ BitVec 32))

(assert (=> mapNonEmpty!16737 (= (arr!11462 _values!549) (store mapRest!16737 mapKey!16737 mapValue!16737))))

(declare-fun b!401242 () Bool)

(declare-fun e!241943 () Bool)

(declare-fun e!241948 () Bool)

(assert (=> b!401242 (= e!241943 (and e!241948 mapRes!16737))))

(declare-fun condMapEmpty!16737 () Bool)

(declare-fun mapDefault!16737 () ValueCell!4695)

(assert (=> b!401242 (= condMapEmpty!16737 (= (arr!11462 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4695)) mapDefault!16737)))))

(declare-fun b!401243 () Bool)

(declare-fun tp_is_empty!10077 () Bool)

(assert (=> b!401243 (= e!241948 tp_is_empty!10077)))

(declare-fun minValue!515 () V!14541)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28243 () Bool)

(declare-fun zeroValue!515 () V!14541)

(declare-fun c!54674 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!187772 () array!24029)

(declare-fun getCurrentListMapNoExtraKeys!1033 (array!24029 array!24031 (_ BitVec 32) (_ BitVec 32) V!14541 V!14541 (_ BitVec 32) Int) ListLongMap!5607)

(assert (=> bm!28243 (= call!28247 (getCurrentListMapNoExtraKeys!1033 (ite c!54674 _keys!709 lt!187772) (ite c!54674 _values!549 (array!24032 (store (arr!11462 _values!549) i!563 (ValueCellFull!4695 v!412)) (size!11814 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28244 () Bool)

(assert (=> bm!28244 (= call!28246 (getCurrentListMapNoExtraKeys!1033 (ite c!54674 lt!187772 _keys!709) (ite c!54674 (array!24032 (store (arr!11462 _values!549) i!563 (ValueCellFull!4695 v!412)) (size!11814 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401245 () Bool)

(declare-fun res!231042 () Bool)

(assert (=> b!401245 (=> (not res!231042) (not e!241947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401245 (= res!231042 (validMask!0 mask!1025))))

(declare-fun b!401246 () Bool)

(declare-fun res!231037 () Bool)

(assert (=> b!401246 (=> (not res!231037) (not e!241947))))

(assert (=> b!401246 (= res!231037 (and (= (size!11814 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11813 _keys!709) (size!11814 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!401247 () Bool)

(assert (=> b!401247 (= e!241942 tp_is_empty!10077)))

(declare-fun b!401248 () Bool)

(declare-fun res!231048 () Bool)

(assert (=> b!401248 (=> (not res!231048) (not e!241947))))

(assert (=> b!401248 (= res!231048 (or (= (select (arr!11461 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11461 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!401249 () Bool)

(declare-fun res!231047 () Bool)

(assert (=> b!401249 (=> (not res!231047) (not e!241947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401249 (= res!231047 (validKeyInArray!0 k0!794))))

(declare-fun b!401250 () Bool)

(assert (=> b!401250 (= e!241944 (= call!28247 call!28246))))

(declare-fun b!401251 () Bool)

(assert (=> b!401251 (= e!241946 (not true))))

(assert (=> b!401251 e!241944))

(assert (=> b!401251 (= c!54674 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12105 0))(
  ( (Unit!12106) )
))
(declare-fun lt!187773 () Unit!12105)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!315 (array!24029 array!24031 (_ BitVec 32) (_ BitVec 32) V!14541 V!14541 (_ BitVec 32) (_ BitVec 64) V!14541 (_ BitVec 32) Int) Unit!12105)

(assert (=> b!401251 (= lt!187773 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!315 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401252 () Bool)

(declare-fun res!231043 () Bool)

(assert (=> b!401252 (=> (not res!231043) (not e!241946))))

(assert (=> b!401252 (= res!231043 (arrayNoDuplicates!0 lt!187772 #b00000000000000000000000000000000 Nil!6628))))

(declare-fun b!401244 () Bool)

(assert (=> b!401244 (= e!241947 e!241946)))

(declare-fun res!231045 () Bool)

(assert (=> b!401244 (=> (not res!231045) (not e!241946))))

(assert (=> b!401244 (= res!231045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187772 mask!1025))))

(assert (=> b!401244 (= lt!187772 (array!24030 (store (arr!11461 _keys!709) i!563 k0!794) (size!11813 _keys!709)))))

(declare-fun res!231041 () Bool)

(assert (=> start!38666 (=> (not res!231041) (not e!241947))))

(assert (=> start!38666 (= res!231041 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11813 _keys!709))))))

(assert (=> start!38666 e!241947))

(assert (=> start!38666 tp_is_empty!10077))

(assert (=> start!38666 tp!32709))

(assert (=> start!38666 true))

(declare-fun array_inv!8384 (array!24031) Bool)

(assert (=> start!38666 (and (array_inv!8384 _values!549) e!241943)))

(declare-fun array_inv!8385 (array!24029) Bool)

(assert (=> start!38666 (array_inv!8385 _keys!709)))

(assert (= (and start!38666 res!231041) b!401245))

(assert (= (and b!401245 res!231042) b!401246))

(assert (= (and b!401246 res!231037) b!401240))

(assert (= (and b!401240 res!231044) b!401236))

(assert (= (and b!401236 res!231039) b!401238))

(assert (= (and b!401238 res!231038) b!401249))

(assert (= (and b!401249 res!231047) b!401248))

(assert (= (and b!401248 res!231048) b!401241))

(assert (= (and b!401241 res!231046) b!401244))

(assert (= (and b!401244 res!231045) b!401252))

(assert (= (and b!401252 res!231043) b!401237))

(assert (= (and b!401237 res!231040) b!401251))

(assert (= (and b!401251 c!54674) b!401239))

(assert (= (and b!401251 (not c!54674)) b!401250))

(assert (= (or b!401239 b!401250) bm!28244))

(assert (= (or b!401239 b!401250) bm!28243))

(assert (= (and b!401242 condMapEmpty!16737) mapIsEmpty!16737))

(assert (= (and b!401242 (not condMapEmpty!16737)) mapNonEmpty!16737))

(get-info :version)

(assert (= (and mapNonEmpty!16737 ((_ is ValueCellFull!4695) mapValue!16737)) b!401247))

(assert (= (and b!401242 ((_ is ValueCellFull!4695) mapDefault!16737)) b!401243))

(assert (= start!38666 b!401242))

(declare-fun m!395137 () Bool)

(assert (=> start!38666 m!395137))

(declare-fun m!395139 () Bool)

(assert (=> start!38666 m!395139))

(declare-fun m!395141 () Bool)

(assert (=> b!401251 m!395141))

(declare-fun m!395143 () Bool)

(assert (=> b!401244 m!395143))

(declare-fun m!395145 () Bool)

(assert (=> b!401244 m!395145))

(declare-fun m!395147 () Bool)

(assert (=> bm!28244 m!395147))

(declare-fun m!395149 () Bool)

(assert (=> bm!28244 m!395149))

(declare-fun m!395151 () Bool)

(assert (=> b!401241 m!395151))

(declare-fun m!395153 () Bool)

(assert (=> b!401248 m!395153))

(assert (=> bm!28243 m!395147))

(declare-fun m!395155 () Bool)

(assert (=> bm!28243 m!395155))

(declare-fun m!395157 () Bool)

(assert (=> b!401245 m!395157))

(declare-fun m!395159 () Bool)

(assert (=> b!401239 m!395159))

(declare-fun m!395161 () Bool)

(assert (=> b!401240 m!395161))

(declare-fun m!395163 () Bool)

(assert (=> b!401249 m!395163))

(declare-fun m!395165 () Bool)

(assert (=> b!401252 m!395165))

(declare-fun m!395167 () Bool)

(assert (=> mapNonEmpty!16737 m!395167))

(declare-fun m!395169 () Bool)

(assert (=> b!401236 m!395169))

(check-sat (not b!401244) b_and!16599 (not mapNonEmpty!16737) (not b!401241) (not b_next!9195) (not bm!28243) (not bm!28244) tp_is_empty!10077 (not b!401240) (not b!401251) (not b!401249) (not b!401252) (not b!401239) (not b!401236) (not start!38666) (not b!401245))
(check-sat b_and!16599 (not b_next!9195))
