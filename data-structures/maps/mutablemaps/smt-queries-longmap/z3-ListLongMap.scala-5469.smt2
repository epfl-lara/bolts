; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72628 () Bool)

(assert start!72628)

(declare-fun b!842615 () Bool)

(declare-fun e!470066 () Bool)

(declare-fun tp_is_empty!15651 () Bool)

(assert (=> b!842615 (= e!470066 tp_is_empty!15651)))

(declare-fun b!842616 () Bool)

(declare-fun e!470067 () Bool)

(assert (=> b!842616 (= e!470067 false)))

(declare-fun lt!380988 () Bool)

(declare-datatypes ((array!47544 0))(
  ( (array!47545 (arr!22799 (Array (_ BitVec 32) (_ BitVec 64))) (size!23240 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47544)

(declare-datatypes ((List!16283 0))(
  ( (Nil!16280) (Cons!16279 (h!17410 (_ BitVec 64)) (t!22662 List!16283)) )
))
(declare-fun arrayNoDuplicates!0 (array!47544 (_ BitVec 32) List!16283) Bool)

(assert (=> b!842616 (= lt!380988 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16280))))

(declare-fun b!842617 () Bool)

(declare-fun res!572788 () Bool)

(assert (=> b!842617 (=> (not res!572788) (not e!470067))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47544 (_ BitVec 32)) Bool)

(assert (=> b!842617 (= res!572788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!572789 () Bool)

(assert (=> start!72628 (=> (not res!572789) (not e!470067))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72628 (= res!572789 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23240 _keys!868))))))

(assert (=> start!72628 e!470067))

(assert (=> start!72628 true))

(declare-fun array_inv!18124 (array!47544) Bool)

(assert (=> start!72628 (array_inv!18124 _keys!868)))

(declare-datatypes ((V!25915 0))(
  ( (V!25916 (val!7873 Int)) )
))
(declare-datatypes ((ValueCell!7386 0))(
  ( (ValueCellFull!7386 (v!10294 V!25915)) (EmptyCell!7386) )
))
(declare-datatypes ((array!47546 0))(
  ( (array!47547 (arr!22800 (Array (_ BitVec 32) ValueCell!7386)) (size!23241 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47546)

(declare-fun e!470069 () Bool)

(declare-fun array_inv!18125 (array!47546) Bool)

(assert (=> start!72628 (and (array_inv!18125 _values!688) e!470069)))

(declare-fun b!842618 () Bool)

(declare-fun res!572787 () Bool)

(assert (=> b!842618 (=> (not res!572787) (not e!470067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842618 (= res!572787 (validMask!0 mask!1196))))

(declare-fun b!842619 () Bool)

(declare-fun res!572790 () Bool)

(assert (=> b!842619 (=> (not res!572790) (not e!470067))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842619 (= res!572790 (and (= (size!23241 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23240 _keys!868) (size!23241 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842620 () Bool)

(declare-fun e!470068 () Bool)

(assert (=> b!842620 (= e!470068 tp_is_empty!15651)))

(declare-fun b!842621 () Bool)

(declare-fun mapRes!25076 () Bool)

(assert (=> b!842621 (= e!470069 (and e!470066 mapRes!25076))))

(declare-fun condMapEmpty!25076 () Bool)

(declare-fun mapDefault!25076 () ValueCell!7386)

(assert (=> b!842621 (= condMapEmpty!25076 (= (arr!22800 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7386)) mapDefault!25076)))))

(declare-fun mapIsEmpty!25076 () Bool)

(assert (=> mapIsEmpty!25076 mapRes!25076))

(declare-fun mapNonEmpty!25076 () Bool)

(declare-fun tp!48395 () Bool)

(assert (=> mapNonEmpty!25076 (= mapRes!25076 (and tp!48395 e!470068))))

(declare-fun mapRest!25076 () (Array (_ BitVec 32) ValueCell!7386))

(declare-fun mapValue!25076 () ValueCell!7386)

(declare-fun mapKey!25076 () (_ BitVec 32))

(assert (=> mapNonEmpty!25076 (= (arr!22800 _values!688) (store mapRest!25076 mapKey!25076 mapValue!25076))))

(assert (= (and start!72628 res!572789) b!842618))

(assert (= (and b!842618 res!572787) b!842619))

(assert (= (and b!842619 res!572790) b!842617))

(assert (= (and b!842617 res!572788) b!842616))

(assert (= (and b!842621 condMapEmpty!25076) mapIsEmpty!25076))

(assert (= (and b!842621 (not condMapEmpty!25076)) mapNonEmpty!25076))

(get-info :version)

(assert (= (and mapNonEmpty!25076 ((_ is ValueCellFull!7386) mapValue!25076)) b!842620))

(assert (= (and b!842621 ((_ is ValueCellFull!7386) mapDefault!25076)) b!842615))

(assert (= start!72628 b!842621))

(declare-fun m!785693 () Bool)

(assert (=> mapNonEmpty!25076 m!785693))

(declare-fun m!785695 () Bool)

(assert (=> b!842616 m!785695))

(declare-fun m!785697 () Bool)

(assert (=> b!842617 m!785697))

(declare-fun m!785699 () Bool)

(assert (=> b!842618 m!785699))

(declare-fun m!785701 () Bool)

(assert (=> start!72628 m!785701))

(declare-fun m!785703 () Bool)

(assert (=> start!72628 m!785703))

(check-sat tp_is_empty!15651 (not b!842618) (not b!842617) (not b!842616) (not start!72628) (not mapNonEmpty!25076))
(check-sat)
