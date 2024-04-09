; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82080 () Bool)

(assert start!82080)

(declare-fun b!956755 () Bool)

(declare-fun e!539192 () Bool)

(declare-fun tp_is_empty!21075 () Bool)

(assert (=> b!956755 (= e!539192 tp_is_empty!21075)))

(declare-fun b!956756 () Bool)

(declare-fun e!539189 () Bool)

(assert (=> b!956756 (= e!539189 tp_is_empty!21075)))

(declare-fun b!956757 () Bool)

(declare-fun e!539193 () Bool)

(declare-fun mapRes!33577 () Bool)

(assert (=> b!956757 (= e!539193 (and e!539192 mapRes!33577))))

(declare-fun condMapEmpty!33577 () Bool)

(declare-datatypes ((V!33083 0))(
  ( (V!33084 (val!10588 Int)) )
))
(declare-datatypes ((ValueCell!10056 0))(
  ( (ValueCellFull!10056 (v!13144 V!33083)) (EmptyCell!10056) )
))
(declare-datatypes ((array!58269 0))(
  ( (array!58270 (arr!28009 (Array (_ BitVec 32) ValueCell!10056)) (size!28489 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58269)

(declare-fun mapDefault!33577 () ValueCell!10056)

(assert (=> b!956757 (= condMapEmpty!33577 (= (arr!28009 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10056)) mapDefault!33577)))))

(declare-fun e!539190 () Bool)

(declare-fun b!956758 () Bool)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58271 0))(
  ( (array!58272 (arr!28010 (Array (_ BitVec 32) (_ BitVec 64))) (size!28490 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58271)

(assert (=> b!956758 (= e!539190 (and (= (size!28489 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28490 _keys!1668) (size!28489 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011) (not (= (size!28490 _keys!1668) (bvadd #b00000000000000000000000000000001 mask!2088)))))))

(declare-fun res!640681 () Bool)

(assert (=> start!82080 (=> (not res!640681) (not e!539190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82080 (= res!640681 (validMask!0 mask!2088))))

(assert (=> start!82080 e!539190))

(assert (=> start!82080 true))

(declare-fun array_inv!21673 (array!58269) Bool)

(assert (=> start!82080 (and (array_inv!21673 _values!1386) e!539193)))

(declare-fun array_inv!21674 (array!58271) Bool)

(assert (=> start!82080 (array_inv!21674 _keys!1668)))

(declare-fun mapIsEmpty!33577 () Bool)

(assert (=> mapIsEmpty!33577 mapRes!33577))

(declare-fun mapNonEmpty!33577 () Bool)

(declare-fun tp!64183 () Bool)

(assert (=> mapNonEmpty!33577 (= mapRes!33577 (and tp!64183 e!539189))))

(declare-fun mapRest!33577 () (Array (_ BitVec 32) ValueCell!10056))

(declare-fun mapKey!33577 () (_ BitVec 32))

(declare-fun mapValue!33577 () ValueCell!10056)

(assert (=> mapNonEmpty!33577 (= (arr!28009 _values!1386) (store mapRest!33577 mapKey!33577 mapValue!33577))))

(assert (= (and start!82080 res!640681) b!956758))

(assert (= (and b!956757 condMapEmpty!33577) mapIsEmpty!33577))

(assert (= (and b!956757 (not condMapEmpty!33577)) mapNonEmpty!33577))

(get-info :version)

(assert (= (and mapNonEmpty!33577 ((_ is ValueCellFull!10056) mapValue!33577)) b!956756))

(assert (= (and b!956757 ((_ is ValueCellFull!10056) mapDefault!33577)) b!956755))

(assert (= start!82080 b!956757))

(declare-fun m!888037 () Bool)

(assert (=> start!82080 m!888037))

(declare-fun m!888039 () Bool)

(assert (=> start!82080 m!888039))

(declare-fun m!888041 () Bool)

(assert (=> start!82080 m!888041))

(declare-fun m!888043 () Bool)

(assert (=> mapNonEmpty!33577 m!888043))

(check-sat (not start!82080) (not mapNonEmpty!33577) tp_is_empty!21075)
(check-sat)
