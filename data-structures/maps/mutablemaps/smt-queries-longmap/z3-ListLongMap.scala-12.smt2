; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!452 () Bool)

(assert start!452)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun e!1022 () Bool)

(declare-datatypes ((V!253 0))(
  ( (V!254 (val!34 Int)) )
))
(declare-datatypes ((ValueCell!12 0))(
  ( (ValueCellFull!12 (v!1120 V!253)) (EmptyCell!12) )
))
(declare-datatypes ((array!43 0))(
  ( (array!44 (arr!20 (Array (_ BitVec 32) ValueCell!12)) (size!82 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!43)

(declare-datatypes ((array!45 0))(
  ( (array!46 (arr!21 (Array (_ BitVec 32) (_ BitVec 64))) (size!83 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!45)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun b!2681 () Bool)

(assert (=> b!2681 (= e!1022 (and (= (size!82 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!83 _keys!1806) (size!82 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011) (not (= (size!83 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250)))))))

(declare-fun b!2682 () Bool)

(declare-fun e!1021 () Bool)

(declare-fun tp_is_empty!57 () Bool)

(assert (=> b!2682 (= e!1021 tp_is_empty!57)))

(declare-fun mapIsEmpty!26 () Bool)

(declare-fun mapRes!26 () Bool)

(assert (=> mapIsEmpty!26 mapRes!26))

(declare-fun b!2683 () Bool)

(declare-fun e!1023 () Bool)

(declare-fun e!1020 () Bool)

(assert (=> b!2683 (= e!1023 (and e!1020 mapRes!26))))

(declare-fun condMapEmpty!26 () Bool)

(declare-fun mapDefault!26 () ValueCell!12)

(assert (=> b!2683 (= condMapEmpty!26 (= (arr!20 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!12)) mapDefault!26)))))

(declare-fun res!4805 () Bool)

(assert (=> start!452 (=> (not res!4805) (not e!1022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!452 (= res!4805 (validMask!0 mask!2250))))

(assert (=> start!452 e!1022))

(assert (=> start!452 true))

(declare-fun array_inv!9 (array!43) Bool)

(assert (=> start!452 (and (array_inv!9 _values!1492) e!1023)))

(declare-fun array_inv!10 (array!45) Bool)

(assert (=> start!452 (array_inv!10 _keys!1806)))

(declare-fun b!2684 () Bool)

(assert (=> b!2684 (= e!1020 tp_is_empty!57)))

(declare-fun mapNonEmpty!26 () Bool)

(declare-fun tp!266 () Bool)

(assert (=> mapNonEmpty!26 (= mapRes!26 (and tp!266 e!1021))))

(declare-fun mapRest!26 () (Array (_ BitVec 32) ValueCell!12))

(declare-fun mapValue!26 () ValueCell!12)

(declare-fun mapKey!26 () (_ BitVec 32))

(assert (=> mapNonEmpty!26 (= (arr!20 _values!1492) (store mapRest!26 mapKey!26 mapValue!26))))

(assert (= (and start!452 res!4805) b!2681))

(assert (= (and b!2683 condMapEmpty!26) mapIsEmpty!26))

(assert (= (and b!2683 (not condMapEmpty!26)) mapNonEmpty!26))

(get-info :version)

(assert (= (and mapNonEmpty!26 ((_ is ValueCellFull!12) mapValue!26)) b!2682))

(assert (= (and b!2683 ((_ is ValueCellFull!12) mapDefault!26)) b!2684))

(assert (= start!452 b!2683))

(declare-fun m!1173 () Bool)

(assert (=> start!452 m!1173))

(declare-fun m!1175 () Bool)

(assert (=> start!452 m!1175))

(declare-fun m!1177 () Bool)

(assert (=> start!452 m!1177))

(declare-fun m!1179 () Bool)

(assert (=> mapNonEmpty!26 m!1179))

(check-sat (not start!452) (not mapNonEmpty!26) tp_is_empty!57)
(check-sat)
