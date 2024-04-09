; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72634 () Bool)

(assert start!72634)

(declare-fun mapNonEmpty!25085 () Bool)

(declare-fun mapRes!25085 () Bool)

(declare-fun tp!48404 () Bool)

(declare-fun e!470111 () Bool)

(assert (=> mapNonEmpty!25085 (= mapRes!25085 (and tp!48404 e!470111))))

(declare-datatypes ((V!25923 0))(
  ( (V!25924 (val!7876 Int)) )
))
(declare-datatypes ((ValueCell!7389 0))(
  ( (ValueCellFull!7389 (v!10297 V!25923)) (EmptyCell!7389) )
))
(declare-fun mapRest!25085 () (Array (_ BitVec 32) ValueCell!7389))

(declare-fun mapKey!25085 () (_ BitVec 32))

(declare-datatypes ((array!47556 0))(
  ( (array!47557 (arr!22805 (Array (_ BitVec 32) ValueCell!7389)) (size!23246 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47556)

(declare-fun mapValue!25085 () ValueCell!7389)

(assert (=> mapNonEmpty!25085 (= (arr!22805 _values!688) (store mapRest!25085 mapKey!25085 mapValue!25085))))

(declare-fun res!572825 () Bool)

(declare-fun e!470115 () Bool)

(assert (=> start!72634 (=> (not res!572825) (not e!470115))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47558 0))(
  ( (array!47559 (arr!22806 (Array (_ BitVec 32) (_ BitVec 64))) (size!23247 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47558)

(assert (=> start!72634 (= res!572825 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23247 _keys!868))))))

(assert (=> start!72634 e!470115))

(assert (=> start!72634 true))

(declare-fun array_inv!18128 (array!47558) Bool)

(assert (=> start!72634 (array_inv!18128 _keys!868)))

(declare-fun e!470112 () Bool)

(declare-fun array_inv!18129 (array!47556) Bool)

(assert (=> start!72634 (and (array_inv!18129 _values!688) e!470112)))

(declare-fun b!842678 () Bool)

(declare-fun e!470114 () Bool)

(declare-fun tp_is_empty!15657 () Bool)

(assert (=> b!842678 (= e!470114 tp_is_empty!15657)))

(declare-fun b!842679 () Bool)

(assert (=> b!842679 (= e!470115 false)))

(declare-fun lt!380997 () Bool)

(declare-datatypes ((List!16284 0))(
  ( (Nil!16281) (Cons!16280 (h!17411 (_ BitVec 64)) (t!22663 List!16284)) )
))
(declare-fun arrayNoDuplicates!0 (array!47558 (_ BitVec 32) List!16284) Bool)

(assert (=> b!842679 (= lt!380997 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16281))))

(declare-fun b!842680 () Bool)

(declare-fun res!572826 () Bool)

(assert (=> b!842680 (=> (not res!572826) (not e!470115))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47558 (_ BitVec 32)) Bool)

(assert (=> b!842680 (= res!572826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842681 () Bool)

(assert (=> b!842681 (= e!470112 (and e!470114 mapRes!25085))))

(declare-fun condMapEmpty!25085 () Bool)

(declare-fun mapDefault!25085 () ValueCell!7389)

(assert (=> b!842681 (= condMapEmpty!25085 (= (arr!22805 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7389)) mapDefault!25085)))))

(declare-fun b!842682 () Bool)

(declare-fun res!572824 () Bool)

(assert (=> b!842682 (=> (not res!572824) (not e!470115))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842682 (= res!572824 (and (= (size!23246 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23247 _keys!868) (size!23246 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25085 () Bool)

(assert (=> mapIsEmpty!25085 mapRes!25085))

(declare-fun b!842683 () Bool)

(declare-fun res!572823 () Bool)

(assert (=> b!842683 (=> (not res!572823) (not e!470115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842683 (= res!572823 (validMask!0 mask!1196))))

(declare-fun b!842684 () Bool)

(assert (=> b!842684 (= e!470111 tp_is_empty!15657)))

(assert (= (and start!72634 res!572825) b!842683))

(assert (= (and b!842683 res!572823) b!842682))

(assert (= (and b!842682 res!572824) b!842680))

(assert (= (and b!842680 res!572826) b!842679))

(assert (= (and b!842681 condMapEmpty!25085) mapIsEmpty!25085))

(assert (= (and b!842681 (not condMapEmpty!25085)) mapNonEmpty!25085))

(get-info :version)

(assert (= (and mapNonEmpty!25085 ((_ is ValueCellFull!7389) mapValue!25085)) b!842684))

(assert (= (and b!842681 ((_ is ValueCellFull!7389) mapDefault!25085)) b!842678))

(assert (= start!72634 b!842681))

(declare-fun m!785729 () Bool)

(assert (=> b!842680 m!785729))

(declare-fun m!785731 () Bool)

(assert (=> b!842683 m!785731))

(declare-fun m!785733 () Bool)

(assert (=> b!842679 m!785733))

(declare-fun m!785735 () Bool)

(assert (=> mapNonEmpty!25085 m!785735))

(declare-fun m!785737 () Bool)

(assert (=> start!72634 m!785737))

(declare-fun m!785739 () Bool)

(assert (=> start!72634 m!785739))

(check-sat (not start!72634) tp_is_empty!15657 (not b!842683) (not b!842680) (not mapNonEmpty!25085) (not b!842679))
(check-sat)
