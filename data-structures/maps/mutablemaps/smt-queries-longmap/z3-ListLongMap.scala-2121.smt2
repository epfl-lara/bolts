; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35920 () Bool)

(assert start!35920)

(declare-fun mapIsEmpty!14034 () Bool)

(declare-fun mapRes!14034 () Bool)

(assert (=> mapIsEmpty!14034 mapRes!14034))

(declare-fun res!200829 () Bool)

(declare-fun e!220930 () Bool)

(assert (=> start!35920 (=> (not res!200829) (not e!220930))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35920 (= res!200829 (validMask!0 mask!1943))))

(assert (=> start!35920 e!220930))

(assert (=> start!35920 true))

(declare-datatypes ((V!12109 0))(
  ( (V!12110 (val!4219 Int)) )
))
(declare-datatypes ((ValueCell!3831 0))(
  ( (ValueCellFull!3831 (v!6409 V!12109)) (EmptyCell!3831) )
))
(declare-datatypes ((array!20217 0))(
  ( (array!20218 (arr!9598 (Array (_ BitVec 32) ValueCell!3831)) (size!9950 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20217)

(declare-fun e!220928 () Bool)

(declare-fun array_inv!7056 (array!20217) Bool)

(assert (=> start!35920 (and (array_inv!7056 _values!1277) e!220928)))

(declare-datatypes ((array!20219 0))(
  ( (array!20220 (arr!9599 (Array (_ BitVec 32) (_ BitVec 64))) (size!9951 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20219)

(declare-fun array_inv!7057 (array!20219) Bool)

(assert (=> start!35920 (array_inv!7057 _keys!1541)))

(declare-fun b!360858 () Bool)

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!360858 (= e!220930 (and (= (size!9950 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9951 _keys!1541) (size!9950 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011) (= (size!9951 _keys!1541) (bvadd #b00000000000000000000000000000001 mask!1943)) (bvsgt #b00000000000000000000000000000000 (size!9951 _keys!1541))))))

(declare-fun mapNonEmpty!14034 () Bool)

(declare-fun tp!28110 () Bool)

(declare-fun e!220926 () Bool)

(assert (=> mapNonEmpty!14034 (= mapRes!14034 (and tp!28110 e!220926))))

(declare-fun mapKey!14034 () (_ BitVec 32))

(declare-fun mapValue!14034 () ValueCell!3831)

(declare-fun mapRest!14034 () (Array (_ BitVec 32) ValueCell!3831))

(assert (=> mapNonEmpty!14034 (= (arr!9598 _values!1277) (store mapRest!14034 mapKey!14034 mapValue!14034))))

(declare-fun b!360859 () Bool)

(declare-fun e!220929 () Bool)

(assert (=> b!360859 (= e!220928 (and e!220929 mapRes!14034))))

(declare-fun condMapEmpty!14034 () Bool)

(declare-fun mapDefault!14034 () ValueCell!3831)

(assert (=> b!360859 (= condMapEmpty!14034 (= (arr!9598 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3831)) mapDefault!14034)))))

(declare-fun b!360860 () Bool)

(declare-fun tp_is_empty!8349 () Bool)

(assert (=> b!360860 (= e!220926 tp_is_empty!8349)))

(declare-fun b!360861 () Bool)

(assert (=> b!360861 (= e!220929 tp_is_empty!8349)))

(assert (= (and start!35920 res!200829) b!360858))

(assert (= (and b!360859 condMapEmpty!14034) mapIsEmpty!14034))

(assert (= (and b!360859 (not condMapEmpty!14034)) mapNonEmpty!14034))

(get-info :version)

(assert (= (and mapNonEmpty!14034 ((_ is ValueCellFull!3831) mapValue!14034)) b!360860))

(assert (= (and b!360859 ((_ is ValueCellFull!3831) mapDefault!14034)) b!360861))

(assert (= start!35920 b!360859))

(declare-fun m!357877 () Bool)

(assert (=> start!35920 m!357877))

(declare-fun m!357879 () Bool)

(assert (=> start!35920 m!357879))

(declare-fun m!357881 () Bool)

(assert (=> start!35920 m!357881))

(declare-fun m!357883 () Bool)

(assert (=> mapNonEmpty!14034 m!357883))

(check-sat (not start!35920) (not mapNonEmpty!14034) tp_is_empty!8349)
(check-sat)
(get-model)

(declare-fun d!71749 () Bool)

(assert (=> d!71749 (= (validMask!0 mask!1943) (and (or (= mask!1943 #b00000000000000000000000000000111) (= mask!1943 #b00000000000000000000000000001111) (= mask!1943 #b00000000000000000000000000011111) (= mask!1943 #b00000000000000000000000000111111) (= mask!1943 #b00000000000000000000000001111111) (= mask!1943 #b00000000000000000000000011111111) (= mask!1943 #b00000000000000000000000111111111) (= mask!1943 #b00000000000000000000001111111111) (= mask!1943 #b00000000000000000000011111111111) (= mask!1943 #b00000000000000000000111111111111) (= mask!1943 #b00000000000000000001111111111111) (= mask!1943 #b00000000000000000011111111111111) (= mask!1943 #b00000000000000000111111111111111) (= mask!1943 #b00000000000000001111111111111111) (= mask!1943 #b00000000000000011111111111111111) (= mask!1943 #b00000000000000111111111111111111) (= mask!1943 #b00000000000001111111111111111111) (= mask!1943 #b00000000000011111111111111111111) (= mask!1943 #b00000000000111111111111111111111) (= mask!1943 #b00000000001111111111111111111111) (= mask!1943 #b00000000011111111111111111111111) (= mask!1943 #b00000000111111111111111111111111) (= mask!1943 #b00000001111111111111111111111111) (= mask!1943 #b00000011111111111111111111111111) (= mask!1943 #b00000111111111111111111111111111) (= mask!1943 #b00001111111111111111111111111111) (= mask!1943 #b00011111111111111111111111111111) (= mask!1943 #b00111111111111111111111111111111)) (bvsle mask!1943 #b00111111111111111111111111111111)))))

(assert (=> start!35920 d!71749))

(declare-fun d!71751 () Bool)

(assert (=> d!71751 (= (array_inv!7056 _values!1277) (bvsge (size!9950 _values!1277) #b00000000000000000000000000000000))))

(assert (=> start!35920 d!71751))

(declare-fun d!71753 () Bool)

(assert (=> d!71753 (= (array_inv!7057 _keys!1541) (bvsge (size!9951 _keys!1541) #b00000000000000000000000000000000))))

(assert (=> start!35920 d!71753))

(declare-fun b!360880 () Bool)

(declare-fun e!220950 () Bool)

(assert (=> b!360880 (= e!220950 tp_is_empty!8349)))

(declare-fun b!360881 () Bool)

(declare-fun e!220951 () Bool)

(assert (=> b!360881 (= e!220951 tp_is_empty!8349)))

(declare-fun condMapEmpty!14040 () Bool)

(declare-fun mapDefault!14040 () ValueCell!3831)

(assert (=> mapNonEmpty!14034 (= condMapEmpty!14040 (= mapRest!14034 ((as const (Array (_ BitVec 32) ValueCell!3831)) mapDefault!14040)))))

(declare-fun mapRes!14040 () Bool)

(assert (=> mapNonEmpty!14034 (= tp!28110 (and e!220951 mapRes!14040))))

(declare-fun mapIsEmpty!14040 () Bool)

(assert (=> mapIsEmpty!14040 mapRes!14040))

(declare-fun mapNonEmpty!14040 () Bool)

(declare-fun tp!28116 () Bool)

(assert (=> mapNonEmpty!14040 (= mapRes!14040 (and tp!28116 e!220950))))

(declare-fun mapValue!14040 () ValueCell!3831)

(declare-fun mapRest!14040 () (Array (_ BitVec 32) ValueCell!3831))

(declare-fun mapKey!14040 () (_ BitVec 32))

(assert (=> mapNonEmpty!14040 (= mapRest!14034 (store mapRest!14040 mapKey!14040 mapValue!14040))))

(assert (= (and mapNonEmpty!14034 condMapEmpty!14040) mapIsEmpty!14040))

(assert (= (and mapNonEmpty!14034 (not condMapEmpty!14040)) mapNonEmpty!14040))

(assert (= (and mapNonEmpty!14040 ((_ is ValueCellFull!3831) mapValue!14040)) b!360880))

(assert (= (and mapNonEmpty!14034 ((_ is ValueCellFull!3831) mapDefault!14040)) b!360881))

(declare-fun m!357893 () Bool)

(assert (=> mapNonEmpty!14040 m!357893))

(check-sat (not mapNonEmpty!14040) tp_is_empty!8349)
(check-sat)
