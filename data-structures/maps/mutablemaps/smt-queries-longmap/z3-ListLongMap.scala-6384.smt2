; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82086 () Bool)

(assert start!82086)

(declare-fun mapIsEmpty!33586 () Bool)

(declare-fun mapRes!33586 () Bool)

(assert (=> mapIsEmpty!33586 mapRes!33586))

(declare-fun b!956791 () Bool)

(declare-fun e!539234 () Bool)

(declare-fun tp_is_empty!21081 () Bool)

(assert (=> b!956791 (= e!539234 tp_is_empty!21081)))

(declare-fun res!640690 () Bool)

(declare-fun e!539237 () Bool)

(assert (=> start!82086 (=> (not res!640690) (not e!539237))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82086 (= res!640690 (validMask!0 mask!2088))))

(assert (=> start!82086 e!539237))

(assert (=> start!82086 true))

(declare-datatypes ((V!33091 0))(
  ( (V!33092 (val!10591 Int)) )
))
(declare-datatypes ((ValueCell!10059 0))(
  ( (ValueCellFull!10059 (v!13147 V!33091)) (EmptyCell!10059) )
))
(declare-datatypes ((array!58281 0))(
  ( (array!58282 (arr!28015 (Array (_ BitVec 32) ValueCell!10059)) (size!28495 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58281)

(declare-fun e!539236 () Bool)

(declare-fun array_inv!21679 (array!58281) Bool)

(assert (=> start!82086 (and (array_inv!21679 _values!1386) e!539236)))

(declare-datatypes ((array!58283 0))(
  ( (array!58284 (arr!28016 (Array (_ BitVec 32) (_ BitVec 64))) (size!28496 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58283)

(declare-fun array_inv!21680 (array!58283) Bool)

(assert (=> start!82086 (array_inv!21680 _keys!1668)))

(declare-fun mapNonEmpty!33586 () Bool)

(declare-fun tp!64192 () Bool)

(assert (=> mapNonEmpty!33586 (= mapRes!33586 (and tp!64192 e!539234))))

(declare-fun mapRest!33586 () (Array (_ BitVec 32) ValueCell!10059))

(declare-fun mapValue!33586 () ValueCell!10059)

(declare-fun mapKey!33586 () (_ BitVec 32))

(assert (=> mapNonEmpty!33586 (= (arr!28015 _values!1386) (store mapRest!33586 mapKey!33586 mapValue!33586))))

(declare-fun b!956792 () Bool)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!956792 (= e!539237 (and (= (size!28495 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28496 _keys!1668) (size!28495 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011) (= (size!28496 _keys!1668) (bvadd #b00000000000000000000000000000001 mask!2088)) (bvsgt #b00000000000000000000000000000000 (size!28496 _keys!1668))))))

(declare-fun b!956793 () Bool)

(declare-fun e!539235 () Bool)

(assert (=> b!956793 (= e!539236 (and e!539235 mapRes!33586))))

(declare-fun condMapEmpty!33586 () Bool)

(declare-fun mapDefault!33586 () ValueCell!10059)

(assert (=> b!956793 (= condMapEmpty!33586 (= (arr!28015 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10059)) mapDefault!33586)))))

(declare-fun b!956794 () Bool)

(assert (=> b!956794 (= e!539235 tp_is_empty!21081)))

(assert (= (and start!82086 res!640690) b!956792))

(assert (= (and b!956793 condMapEmpty!33586) mapIsEmpty!33586))

(assert (= (and b!956793 (not condMapEmpty!33586)) mapNonEmpty!33586))

(get-info :version)

(assert (= (and mapNonEmpty!33586 ((_ is ValueCellFull!10059) mapValue!33586)) b!956791))

(assert (= (and b!956793 ((_ is ValueCellFull!10059) mapDefault!33586)) b!956794))

(assert (= start!82086 b!956793))

(declare-fun m!888061 () Bool)

(assert (=> start!82086 m!888061))

(declare-fun m!888063 () Bool)

(assert (=> start!82086 m!888063))

(declare-fun m!888065 () Bool)

(assert (=> start!82086 m!888065))

(declare-fun m!888067 () Bool)

(assert (=> mapNonEmpty!33586 m!888067))

(check-sat (not start!82086) (not mapNonEmpty!33586) tp_is_empty!21081)
(check-sat)
(get-model)

(declare-fun d!115785 () Bool)

(assert (=> d!115785 (= (validMask!0 mask!2088) (and (or (= mask!2088 #b00000000000000000000000000000111) (= mask!2088 #b00000000000000000000000000001111) (= mask!2088 #b00000000000000000000000000011111) (= mask!2088 #b00000000000000000000000000111111) (= mask!2088 #b00000000000000000000000001111111) (= mask!2088 #b00000000000000000000000011111111) (= mask!2088 #b00000000000000000000000111111111) (= mask!2088 #b00000000000000000000001111111111) (= mask!2088 #b00000000000000000000011111111111) (= mask!2088 #b00000000000000000000111111111111) (= mask!2088 #b00000000000000000001111111111111) (= mask!2088 #b00000000000000000011111111111111) (= mask!2088 #b00000000000000000111111111111111) (= mask!2088 #b00000000000000001111111111111111) (= mask!2088 #b00000000000000011111111111111111) (= mask!2088 #b00000000000000111111111111111111) (= mask!2088 #b00000000000001111111111111111111) (= mask!2088 #b00000000000011111111111111111111) (= mask!2088 #b00000000000111111111111111111111) (= mask!2088 #b00000000001111111111111111111111) (= mask!2088 #b00000000011111111111111111111111) (= mask!2088 #b00000000111111111111111111111111) (= mask!2088 #b00000001111111111111111111111111) (= mask!2088 #b00000011111111111111111111111111) (= mask!2088 #b00000111111111111111111111111111) (= mask!2088 #b00001111111111111111111111111111) (= mask!2088 #b00011111111111111111111111111111) (= mask!2088 #b00111111111111111111111111111111)) (bvsle mask!2088 #b00111111111111111111111111111111)))))

(assert (=> start!82086 d!115785))

(declare-fun d!115787 () Bool)

(assert (=> d!115787 (= (array_inv!21679 _values!1386) (bvsge (size!28495 _values!1386) #b00000000000000000000000000000000))))

(assert (=> start!82086 d!115787))

(declare-fun d!115789 () Bool)

(assert (=> d!115789 (= (array_inv!21680 _keys!1668) (bvsge (size!28496 _keys!1668) #b00000000000000000000000000000000))))

(assert (=> start!82086 d!115789))

(declare-fun condMapEmpty!33592 () Bool)

(declare-fun mapDefault!33592 () ValueCell!10059)

(assert (=> mapNonEmpty!33586 (= condMapEmpty!33592 (= mapRest!33586 ((as const (Array (_ BitVec 32) ValueCell!10059)) mapDefault!33592)))))

(declare-fun e!539259 () Bool)

(declare-fun mapRes!33592 () Bool)

(assert (=> mapNonEmpty!33586 (= tp!64192 (and e!539259 mapRes!33592))))

(declare-fun mapNonEmpty!33592 () Bool)

(declare-fun tp!64198 () Bool)

(declare-fun e!539258 () Bool)

(assert (=> mapNonEmpty!33592 (= mapRes!33592 (and tp!64198 e!539258))))

(declare-fun mapKey!33592 () (_ BitVec 32))

(declare-fun mapValue!33592 () ValueCell!10059)

(declare-fun mapRest!33592 () (Array (_ BitVec 32) ValueCell!10059))

(assert (=> mapNonEmpty!33592 (= mapRest!33586 (store mapRest!33592 mapKey!33592 mapValue!33592))))

(declare-fun mapIsEmpty!33592 () Bool)

(assert (=> mapIsEmpty!33592 mapRes!33592))

(declare-fun b!956813 () Bool)

(assert (=> b!956813 (= e!539258 tp_is_empty!21081)))

(declare-fun b!956814 () Bool)

(assert (=> b!956814 (= e!539259 tp_is_empty!21081)))

(assert (= (and mapNonEmpty!33586 condMapEmpty!33592) mapIsEmpty!33592))

(assert (= (and mapNonEmpty!33586 (not condMapEmpty!33592)) mapNonEmpty!33592))

(assert (= (and mapNonEmpty!33592 ((_ is ValueCellFull!10059) mapValue!33592)) b!956813))

(assert (= (and mapNonEmpty!33586 ((_ is ValueCellFull!10059) mapDefault!33592)) b!956814))

(declare-fun m!888077 () Bool)

(assert (=> mapNonEmpty!33592 m!888077))

(check-sat (not mapNonEmpty!33592) tp_is_empty!21081)
(check-sat)
