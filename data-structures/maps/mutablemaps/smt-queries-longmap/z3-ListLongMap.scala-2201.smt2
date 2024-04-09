; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36588 () Bool)

(assert start!36588)

(declare-fun b!365103 () Bool)

(declare-fun e!223562 () Bool)

(declare-fun tp_is_empty!8445 () Bool)

(assert (=> b!365103 (= e!223562 tp_is_empty!8445)))

(declare-fun mapNonEmpty!14211 () Bool)

(declare-fun mapRes!14211 () Bool)

(declare-fun tp!28287 () Bool)

(assert (=> mapNonEmpty!14211 (= mapRes!14211 (and tp!28287 e!223562))))

(declare-datatypes ((V!12365 0))(
  ( (V!12366 (val!4267 Int)) )
))
(declare-datatypes ((ValueCell!3879 0))(
  ( (ValueCellFull!3879 (v!6458 V!12365)) (EmptyCell!3879) )
))
(declare-datatypes ((array!20817 0))(
  ( (array!20818 (arr!9881 (Array (_ BitVec 32) ValueCell!3879)) (size!10233 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20817)

(declare-fun mapValue!14211 () ValueCell!3879)

(declare-fun mapKey!14211 () (_ BitVec 32))

(declare-fun mapRest!14211 () (Array (_ BitVec 32) ValueCell!3879))

(assert (=> mapNonEmpty!14211 (= (arr!9881 _values!506) (store mapRest!14211 mapKey!14211 mapValue!14211))))

(declare-fun b!365105 () Bool)

(declare-fun e!223559 () Bool)

(assert (=> b!365105 (= e!223559 tp_is_empty!8445)))

(declare-fun b!365106 () Bool)

(declare-fun res!204200 () Bool)

(declare-fun e!223561 () Bool)

(assert (=> b!365106 (=> (not res!204200) (not e!223561))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!20819 0))(
  ( (array!20820 (arr!9882 (Array (_ BitVec 32) (_ BitVec 64))) (size!10234 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20819)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!365106 (= res!204200 (and (= (size!10233 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10234 _keys!658) (size!10233 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14211 () Bool)

(assert (=> mapIsEmpty!14211 mapRes!14211))

(declare-fun b!365107 () Bool)

(declare-fun e!223560 () Bool)

(assert (=> b!365107 (= e!223560 (and e!223559 mapRes!14211))))

(declare-fun condMapEmpty!14211 () Bool)

(declare-fun mapDefault!14211 () ValueCell!3879)

(assert (=> b!365107 (= condMapEmpty!14211 (= (arr!9881 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3879)) mapDefault!14211)))))

(declare-fun b!365108 () Bool)

(declare-fun res!204201 () Bool)

(assert (=> b!365108 (=> (not res!204201) (not e!223561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20819 (_ BitVec 32)) Bool)

(assert (=> b!365108 (= res!204201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!204202 () Bool)

(assert (=> start!36588 (=> (not res!204202) (not e!223561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36588 (= res!204202 (validMask!0 mask!970))))

(assert (=> start!36588 e!223561))

(assert (=> start!36588 true))

(declare-fun array_inv!7310 (array!20817) Bool)

(assert (=> start!36588 (and (array_inv!7310 _values!506) e!223560)))

(declare-fun array_inv!7311 (array!20819) Bool)

(assert (=> start!36588 (array_inv!7311 _keys!658)))

(declare-fun b!365104 () Bool)

(assert (=> b!365104 (= e!223561 (and (bvsle #b00000000000000000000000000000000 (size!10234 _keys!658)) (bvsge (size!10234 _keys!658) #b01111111111111111111111111111111)))))

(assert (= (and start!36588 res!204202) b!365106))

(assert (= (and b!365106 res!204200) b!365108))

(assert (= (and b!365108 res!204201) b!365104))

(assert (= (and b!365107 condMapEmpty!14211) mapIsEmpty!14211))

(assert (= (and b!365107 (not condMapEmpty!14211)) mapNonEmpty!14211))

(get-info :version)

(assert (= (and mapNonEmpty!14211 ((_ is ValueCellFull!3879) mapValue!14211)) b!365103))

(assert (= (and b!365107 ((_ is ValueCellFull!3879) mapDefault!14211)) b!365105))

(assert (= start!36588 b!365107))

(declare-fun m!362913 () Bool)

(assert (=> mapNonEmpty!14211 m!362913))

(declare-fun m!362915 () Bool)

(assert (=> b!365108 m!362915))

(declare-fun m!362917 () Bool)

(assert (=> start!36588 m!362917))

(declare-fun m!362919 () Bool)

(assert (=> start!36588 m!362919))

(declare-fun m!362921 () Bool)

(assert (=> start!36588 m!362921))

(check-sat (not start!36588) (not b!365108) (not mapNonEmpty!14211) tp_is_empty!8445)
(check-sat)
(get-model)

(declare-fun d!72193 () Bool)

(assert (=> d!72193 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!36588 d!72193))

(declare-fun d!72195 () Bool)

(assert (=> d!72195 (= (array_inv!7310 _values!506) (bvsge (size!10233 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!36588 d!72195))

(declare-fun d!72197 () Bool)

(assert (=> d!72197 (= (array_inv!7311 _keys!658) (bvsge (size!10234 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!36588 d!72197))

(declare-fun b!365135 () Bool)

(declare-fun e!223585 () Bool)

(declare-fun call!27272 () Bool)

(assert (=> b!365135 (= e!223585 call!27272)))

(declare-fun b!365136 () Bool)

(declare-fun e!223584 () Bool)

(assert (=> b!365136 (= e!223584 call!27272)))

(declare-fun b!365137 () Bool)

(assert (=> b!365137 (= e!223584 e!223585)))

(declare-fun lt!169127 () (_ BitVec 64))

(assert (=> b!365137 (= lt!169127 (select (arr!9882 _keys!658) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11373 0))(
  ( (Unit!11374) )
))
(declare-fun lt!169125 () Unit!11373)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20819 (_ BitVec 64) (_ BitVec 32)) Unit!11373)

(assert (=> b!365137 (= lt!169125 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!169127 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!20819 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!365137 (arrayContainsKey!0 _keys!658 lt!169127 #b00000000000000000000000000000000)))

(declare-fun lt!169126 () Unit!11373)

(assert (=> b!365137 (= lt!169126 lt!169125)))

(declare-fun res!204217 () Bool)

(declare-datatypes ((SeekEntryResult!3489 0))(
  ( (MissingZero!3489 (index!16135 (_ BitVec 32))) (Found!3489 (index!16136 (_ BitVec 32))) (Intermediate!3489 (undefined!4301 Bool) (index!16137 (_ BitVec 32)) (x!36622 (_ BitVec 32))) (Undefined!3489) (MissingVacant!3489 (index!16138 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20819 (_ BitVec 32)) SeekEntryResult!3489)

(assert (=> b!365137 (= res!204217 (= (seekEntryOrOpen!0 (select (arr!9882 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3489 #b00000000000000000000000000000000)))))

(assert (=> b!365137 (=> (not res!204217) (not e!223585))))

(declare-fun b!365138 () Bool)

(declare-fun e!223586 () Bool)

(assert (=> b!365138 (= e!223586 e!223584)))

(declare-fun c!53816 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365138 (= c!53816 (validKeyInArray!0 (select (arr!9882 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27269 () Bool)

(assert (=> bm!27269 (= call!27272 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun d!72199 () Bool)

(declare-fun res!204216 () Bool)

(assert (=> d!72199 (=> res!204216 e!223586)))

(assert (=> d!72199 (= res!204216 (bvsge #b00000000000000000000000000000000 (size!10234 _keys!658)))))

(assert (=> d!72199 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!223586)))

(assert (= (and d!72199 (not res!204216)) b!365138))

(assert (= (and b!365138 c!53816) b!365137))

(assert (= (and b!365138 (not c!53816)) b!365136))

(assert (= (and b!365137 res!204217) b!365135))

(assert (= (or b!365135 b!365136) bm!27269))

(declare-fun m!362933 () Bool)

(assert (=> b!365137 m!362933))

(declare-fun m!362935 () Bool)

(assert (=> b!365137 m!362935))

(declare-fun m!362937 () Bool)

(assert (=> b!365137 m!362937))

(assert (=> b!365137 m!362933))

(declare-fun m!362939 () Bool)

(assert (=> b!365137 m!362939))

(assert (=> b!365138 m!362933))

(assert (=> b!365138 m!362933))

(declare-fun m!362941 () Bool)

(assert (=> b!365138 m!362941))

(declare-fun m!362943 () Bool)

(assert (=> bm!27269 m!362943))

(assert (=> b!365108 d!72199))

(declare-fun b!365146 () Bool)

(declare-fun e!223592 () Bool)

(assert (=> b!365146 (= e!223592 tp_is_empty!8445)))

(declare-fun mapIsEmpty!14217 () Bool)

(declare-fun mapRes!14217 () Bool)

(assert (=> mapIsEmpty!14217 mapRes!14217))

(declare-fun condMapEmpty!14217 () Bool)

(declare-fun mapDefault!14217 () ValueCell!3879)

(assert (=> mapNonEmpty!14211 (= condMapEmpty!14217 (= mapRest!14211 ((as const (Array (_ BitVec 32) ValueCell!3879)) mapDefault!14217)))))

(assert (=> mapNonEmpty!14211 (= tp!28287 (and e!223592 mapRes!14217))))

(declare-fun mapNonEmpty!14217 () Bool)

(declare-fun tp!28293 () Bool)

(declare-fun e!223591 () Bool)

(assert (=> mapNonEmpty!14217 (= mapRes!14217 (and tp!28293 e!223591))))

(declare-fun mapKey!14217 () (_ BitVec 32))

(declare-fun mapValue!14217 () ValueCell!3879)

(declare-fun mapRest!14217 () (Array (_ BitVec 32) ValueCell!3879))

(assert (=> mapNonEmpty!14217 (= mapRest!14211 (store mapRest!14217 mapKey!14217 mapValue!14217))))

(declare-fun b!365145 () Bool)

(assert (=> b!365145 (= e!223591 tp_is_empty!8445)))

(assert (= (and mapNonEmpty!14211 condMapEmpty!14217) mapIsEmpty!14217))

(assert (= (and mapNonEmpty!14211 (not condMapEmpty!14217)) mapNonEmpty!14217))

(assert (= (and mapNonEmpty!14217 ((_ is ValueCellFull!3879) mapValue!14217)) b!365145))

(assert (= (and mapNonEmpty!14211 ((_ is ValueCellFull!3879) mapDefault!14217)) b!365146))

(declare-fun m!362945 () Bool)

(assert (=> mapNonEmpty!14217 m!362945))

(check-sat (not b!365137) tp_is_empty!8445 (not b!365138) (not bm!27269) (not mapNonEmpty!14217))
(check-sat)
