; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111260 () Bool)

(assert start!111260)

(declare-fun b!1316616 () Bool)

(declare-fun e!751156 () Bool)

(declare-fun e!751154 () Bool)

(declare-fun mapRes!55250 () Bool)

(assert (=> b!1316616 (= e!751156 (and e!751154 mapRes!55250))))

(declare-fun condMapEmpty!55250 () Bool)

(declare-datatypes ((V!52763 0))(
  ( (V!52764 (val!17947 Int)) )
))
(declare-datatypes ((ValueCell!16974 0))(
  ( (ValueCellFull!16974 (v!20574 V!52763)) (EmptyCell!16974) )
))
(declare-datatypes ((array!88403 0))(
  ( (array!88404 (arr!42676 (Array (_ BitVec 32) ValueCell!16974)) (size!43227 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88403)

(declare-fun mapDefault!55250 () ValueCell!16974)

(assert (=> b!1316616 (= condMapEmpty!55250 (= (arr!42676 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!16974)) mapDefault!55250)))))

(declare-fun res!874037 () Bool)

(declare-fun e!751153 () Bool)

(assert (=> start!111260 (=> (not res!874037) (not e!751153))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111260 (= res!874037 (validMask!0 mask!2019))))

(assert (=> start!111260 e!751153))

(assert (=> start!111260 true))

(declare-fun array_inv!32197 (array!88403) Bool)

(assert (=> start!111260 (and (array_inv!32197 _values!1337) e!751156)))

(declare-datatypes ((array!88405 0))(
  ( (array!88406 (arr!42677 (Array (_ BitVec 32) (_ BitVec 64))) (size!43228 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88405)

(declare-fun array_inv!32198 (array!88405) Bool)

(assert (=> start!111260 (array_inv!32198 _keys!1609)))

(declare-fun b!1316617 () Bool)

(declare-fun tp_is_empty!35745 () Bool)

(assert (=> b!1316617 (= e!751154 tp_is_empty!35745)))

(declare-fun mapIsEmpty!55250 () Bool)

(assert (=> mapIsEmpty!55250 mapRes!55250))

(declare-fun mapNonEmpty!55250 () Bool)

(declare-fun tp!105357 () Bool)

(declare-fun e!751155 () Bool)

(assert (=> mapNonEmpty!55250 (= mapRes!55250 (and tp!105357 e!751155))))

(declare-fun mapKey!55250 () (_ BitVec 32))

(declare-fun mapRest!55250 () (Array (_ BitVec 32) ValueCell!16974))

(declare-fun mapValue!55250 () ValueCell!16974)

(assert (=> mapNonEmpty!55250 (= (arr!42676 _values!1337) (store mapRest!55250 mapKey!55250 mapValue!55250))))

(declare-fun b!1316618 () Bool)

(assert (=> b!1316618 (= e!751155 tp_is_empty!35745)))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun b!1316619 () Bool)

(assert (=> b!1316619 (= e!751153 (and (= (size!43227 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43228 _keys!1609) (size!43227 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011) (= (size!43228 _keys!1609) (bvadd #b00000000000000000000000000000001 mask!2019)) (bvsgt #b00000000000000000000000000000000 (size!43228 _keys!1609))))))

(assert (= (and start!111260 res!874037) b!1316619))

(assert (= (and b!1316616 condMapEmpty!55250) mapIsEmpty!55250))

(assert (= (and b!1316616 (not condMapEmpty!55250)) mapNonEmpty!55250))

(get-info :version)

(assert (= (and mapNonEmpty!55250 ((_ is ValueCellFull!16974) mapValue!55250)) b!1316618))

(assert (= (and b!1316616 ((_ is ValueCellFull!16974) mapDefault!55250)) b!1316617))

(assert (= start!111260 b!1316616))

(declare-fun m!1204783 () Bool)

(assert (=> start!111260 m!1204783))

(declare-fun m!1204785 () Bool)

(assert (=> start!111260 m!1204785))

(declare-fun m!1204787 () Bool)

(assert (=> start!111260 m!1204787))

(declare-fun m!1204789 () Bool)

(assert (=> mapNonEmpty!55250 m!1204789))

(check-sat (not start!111260) (not mapNonEmpty!55250) tp_is_empty!35745)
(check-sat)
(get-model)

(declare-fun d!142587 () Bool)

(assert (=> d!142587 (= (validMask!0 mask!2019) (and (or (= mask!2019 #b00000000000000000000000000000111) (= mask!2019 #b00000000000000000000000000001111) (= mask!2019 #b00000000000000000000000000011111) (= mask!2019 #b00000000000000000000000000111111) (= mask!2019 #b00000000000000000000000001111111) (= mask!2019 #b00000000000000000000000011111111) (= mask!2019 #b00000000000000000000000111111111) (= mask!2019 #b00000000000000000000001111111111) (= mask!2019 #b00000000000000000000011111111111) (= mask!2019 #b00000000000000000000111111111111) (= mask!2019 #b00000000000000000001111111111111) (= mask!2019 #b00000000000000000011111111111111) (= mask!2019 #b00000000000000000111111111111111) (= mask!2019 #b00000000000000001111111111111111) (= mask!2019 #b00000000000000011111111111111111) (= mask!2019 #b00000000000000111111111111111111) (= mask!2019 #b00000000000001111111111111111111) (= mask!2019 #b00000000000011111111111111111111) (= mask!2019 #b00000000000111111111111111111111) (= mask!2019 #b00000000001111111111111111111111) (= mask!2019 #b00000000011111111111111111111111) (= mask!2019 #b00000000111111111111111111111111) (= mask!2019 #b00000001111111111111111111111111) (= mask!2019 #b00000011111111111111111111111111) (= mask!2019 #b00000111111111111111111111111111) (= mask!2019 #b00001111111111111111111111111111) (= mask!2019 #b00011111111111111111111111111111) (= mask!2019 #b00111111111111111111111111111111)) (bvsle mask!2019 #b00111111111111111111111111111111)))))

(assert (=> start!111260 d!142587))

(declare-fun d!142589 () Bool)

(assert (=> d!142589 (= (array_inv!32197 _values!1337) (bvsge (size!43227 _values!1337) #b00000000000000000000000000000000))))

(assert (=> start!111260 d!142589))

(declare-fun d!142591 () Bool)

(assert (=> d!142591 (= (array_inv!32198 _keys!1609) (bvsge (size!43228 _keys!1609) #b00000000000000000000000000000000))))

(assert (=> start!111260 d!142591))

(declare-fun mapNonEmpty!55256 () Bool)

(declare-fun mapRes!55256 () Bool)

(declare-fun tp!105363 () Bool)

(declare-fun e!751178 () Bool)

(assert (=> mapNonEmpty!55256 (= mapRes!55256 (and tp!105363 e!751178))))

(declare-fun mapKey!55256 () (_ BitVec 32))

(declare-fun mapRest!55256 () (Array (_ BitVec 32) ValueCell!16974))

(declare-fun mapValue!55256 () ValueCell!16974)

(assert (=> mapNonEmpty!55256 (= mapRest!55250 (store mapRest!55256 mapKey!55256 mapValue!55256))))

(declare-fun b!1316639 () Bool)

(declare-fun e!751177 () Bool)

(assert (=> b!1316639 (= e!751177 tp_is_empty!35745)))

(declare-fun b!1316638 () Bool)

(assert (=> b!1316638 (= e!751178 tp_is_empty!35745)))

(declare-fun condMapEmpty!55256 () Bool)

(declare-fun mapDefault!55256 () ValueCell!16974)

(assert (=> mapNonEmpty!55250 (= condMapEmpty!55256 (= mapRest!55250 ((as const (Array (_ BitVec 32) ValueCell!16974)) mapDefault!55256)))))

(assert (=> mapNonEmpty!55250 (= tp!105357 (and e!751177 mapRes!55256))))

(declare-fun mapIsEmpty!55256 () Bool)

(assert (=> mapIsEmpty!55256 mapRes!55256))

(assert (= (and mapNonEmpty!55250 condMapEmpty!55256) mapIsEmpty!55256))

(assert (= (and mapNonEmpty!55250 (not condMapEmpty!55256)) mapNonEmpty!55256))

(assert (= (and mapNonEmpty!55256 ((_ is ValueCellFull!16974) mapValue!55256)) b!1316638))

(assert (= (and mapNonEmpty!55250 ((_ is ValueCellFull!16974) mapDefault!55256)) b!1316639))

(declare-fun m!1204799 () Bool)

(assert (=> mapNonEmpty!55256 m!1204799))

(check-sat (not mapNonEmpty!55256) tp_is_empty!35745)
(check-sat)
