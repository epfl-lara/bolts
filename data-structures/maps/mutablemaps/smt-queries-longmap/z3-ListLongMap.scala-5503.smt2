; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72832 () Bool)

(assert start!72832)

(declare-fun b!844757 () Bool)

(declare-fun e!471600 () Bool)

(declare-fun e!471597 () Bool)

(declare-fun mapRes!25382 () Bool)

(assert (=> b!844757 (= e!471600 (and e!471597 mapRes!25382))))

(declare-fun condMapEmpty!25382 () Bool)

(declare-datatypes ((V!26187 0))(
  ( (V!26188 (val!7975 Int)) )
))
(declare-datatypes ((ValueCell!7488 0))(
  ( (ValueCellFull!7488 (v!10396 V!26187)) (EmptyCell!7488) )
))
(declare-datatypes ((array!47922 0))(
  ( (array!47923 (arr!22988 (Array (_ BitVec 32) ValueCell!7488)) (size!23429 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47922)

(declare-fun mapDefault!25382 () ValueCell!7488)

(assert (=> b!844757 (= condMapEmpty!25382 (= (arr!22988 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7488)) mapDefault!25382)))))

(declare-fun mapNonEmpty!25382 () Bool)

(declare-fun tp!48701 () Bool)

(declare-fun e!471596 () Bool)

(assert (=> mapNonEmpty!25382 (= mapRes!25382 (and tp!48701 e!471596))))

(declare-fun mapKey!25382 () (_ BitVec 32))

(declare-fun mapValue!25382 () ValueCell!7488)

(declare-fun mapRest!25382 () (Array (_ BitVec 32) ValueCell!7488))

(assert (=> mapNonEmpty!25382 (= (arr!22988 _values!688) (store mapRest!25382 mapKey!25382 mapValue!25382))))

(declare-fun b!844758 () Bool)

(declare-fun res!574014 () Bool)

(declare-fun e!471599 () Bool)

(assert (=> b!844758 (=> (not res!574014) (not e!471599))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!47924 0))(
  ( (array!47925 (arr!22989 (Array (_ BitVec 32) (_ BitVec 64))) (size!23430 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47924)

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!844758 (= res!574014 (and (= (size!23429 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23430 _keys!868) (size!23429 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844759 () Bool)

(declare-fun res!574013 () Bool)

(assert (=> b!844759 (=> (not res!574013) (not e!471599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47924 (_ BitVec 32)) Bool)

(assert (=> b!844759 (= res!574013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!574012 () Bool)

(assert (=> start!72832 (=> (not res!574012) (not e!471599))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72832 (= res!574012 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23430 _keys!868))))))

(assert (=> start!72832 e!471599))

(assert (=> start!72832 true))

(declare-fun array_inv!18258 (array!47924) Bool)

(assert (=> start!72832 (array_inv!18258 _keys!868)))

(declare-fun array_inv!18259 (array!47922) Bool)

(assert (=> start!72832 (and (array_inv!18259 _values!688) e!471600)))

(declare-fun mapIsEmpty!25382 () Bool)

(assert (=> mapIsEmpty!25382 mapRes!25382))

(declare-fun b!844760 () Bool)

(assert (=> b!844760 (= e!471599 false)))

(declare-fun lt!381294 () Bool)

(declare-datatypes ((List!16354 0))(
  ( (Nil!16351) (Cons!16350 (h!17481 (_ BitVec 64)) (t!22733 List!16354)) )
))
(declare-fun arrayNoDuplicates!0 (array!47924 (_ BitVec 32) List!16354) Bool)

(assert (=> b!844760 (= lt!381294 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16351))))

(declare-fun b!844761 () Bool)

(declare-fun tp_is_empty!15855 () Bool)

(assert (=> b!844761 (= e!471597 tp_is_empty!15855)))

(declare-fun b!844762 () Bool)

(assert (=> b!844762 (= e!471596 tp_is_empty!15855)))

(declare-fun b!844763 () Bool)

(declare-fun res!574011 () Bool)

(assert (=> b!844763 (=> (not res!574011) (not e!471599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844763 (= res!574011 (validMask!0 mask!1196))))

(assert (= (and start!72832 res!574012) b!844763))

(assert (= (and b!844763 res!574011) b!844758))

(assert (= (and b!844758 res!574014) b!844759))

(assert (= (and b!844759 res!574013) b!844760))

(assert (= (and b!844757 condMapEmpty!25382) mapIsEmpty!25382))

(assert (= (and b!844757 (not condMapEmpty!25382)) mapNonEmpty!25382))

(get-info :version)

(assert (= (and mapNonEmpty!25382 ((_ is ValueCellFull!7488) mapValue!25382)) b!844762))

(assert (= (and b!844757 ((_ is ValueCellFull!7488) mapDefault!25382)) b!844761))

(assert (= start!72832 b!844757))

(declare-fun m!786917 () Bool)

(assert (=> b!844759 m!786917))

(declare-fun m!786919 () Bool)

(assert (=> mapNonEmpty!25382 m!786919))

(declare-fun m!786921 () Bool)

(assert (=> b!844760 m!786921))

(declare-fun m!786923 () Bool)

(assert (=> b!844763 m!786923))

(declare-fun m!786925 () Bool)

(assert (=> start!72832 m!786925))

(declare-fun m!786927 () Bool)

(assert (=> start!72832 m!786927))

(check-sat (not mapNonEmpty!25382) (not b!844759) (not b!844760) (not start!72832) tp_is_empty!15855 (not b!844763))
(check-sat)
