; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131912 () Bool)

(assert start!131912)

(declare-fun b!1543748 () Bool)

(declare-fun e!859279 () Bool)

(assert (=> b!1543748 (= e!859279 false)))

(declare-fun lt!665978 () Bool)

(declare-datatypes ((array!102913 0))(
  ( (array!102914 (arr!49654 (Array (_ BitVec 32) (_ BitVec 64))) (size!50205 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102913)

(declare-datatypes ((List!36081 0))(
  ( (Nil!36078) (Cons!36077 (h!37523 (_ BitVec 64)) (t!50782 List!36081)) )
))
(declare-fun arrayNoDuplicates!0 (array!102913 (_ BitVec 32) List!36081) Bool)

(assert (=> b!1543748 (= lt!665978 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36078))))

(declare-fun mapIsEmpty!58507 () Bool)

(declare-fun mapRes!58507 () Bool)

(assert (=> mapIsEmpty!58507 mapRes!58507))

(declare-fun b!1543749 () Bool)

(declare-fun e!859278 () Bool)

(declare-fun e!859282 () Bool)

(assert (=> b!1543749 (= e!859278 (and e!859282 mapRes!58507))))

(declare-fun condMapEmpty!58507 () Bool)

(declare-datatypes ((V!58935 0))(
  ( (V!58936 (val!19012 Int)) )
))
(declare-datatypes ((ValueCell!18024 0))(
  ( (ValueCellFull!18024 (v!21810 V!58935)) (EmptyCell!18024) )
))
(declare-datatypes ((array!102915 0))(
  ( (array!102916 (arr!49655 (Array (_ BitVec 32) ValueCell!18024)) (size!50206 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102915)

(declare-fun mapDefault!58507 () ValueCell!18024)

(assert (=> b!1543749 (= condMapEmpty!58507 (= (arr!49655 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18024)) mapDefault!58507)))))

(declare-fun b!1543750 () Bool)

(declare-fun res!1059223 () Bool)

(assert (=> b!1543750 (=> (not res!1059223) (not e!859279))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1543750 (= res!1059223 (and (= (size!50206 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50205 _keys!618) (size!50206 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543751 () Bool)

(declare-fun e!859280 () Bool)

(declare-fun tp_is_empty!37869 () Bool)

(assert (=> b!1543751 (= e!859280 tp_is_empty!37869)))

(declare-fun mapNonEmpty!58507 () Bool)

(declare-fun tp!111035 () Bool)

(assert (=> mapNonEmpty!58507 (= mapRes!58507 (and tp!111035 e!859280))))

(declare-fun mapRest!58507 () (Array (_ BitVec 32) ValueCell!18024))

(declare-fun mapKey!58507 () (_ BitVec 32))

(declare-fun mapValue!58507 () ValueCell!18024)

(assert (=> mapNonEmpty!58507 (= (arr!49655 _values!470) (store mapRest!58507 mapKey!58507 mapValue!58507))))

(declare-fun b!1543752 () Bool)

(declare-fun res!1059224 () Bool)

(assert (=> b!1543752 (=> (not res!1059224) (not e!859279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102913 (_ BitVec 32)) Bool)

(assert (=> b!1543752 (= res!1059224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543753 () Bool)

(assert (=> b!1543753 (= e!859282 tp_is_empty!37869)))

(declare-fun res!1059222 () Bool)

(assert (=> start!131912 (=> (not res!1059222) (not e!859279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131912 (= res!1059222 (validMask!0 mask!926))))

(assert (=> start!131912 e!859279))

(assert (=> start!131912 true))

(declare-fun array_inv!38551 (array!102915) Bool)

(assert (=> start!131912 (and (array_inv!38551 _values!470) e!859278)))

(declare-fun array_inv!38552 (array!102913) Bool)

(assert (=> start!131912 (array_inv!38552 _keys!618)))

(assert (= (and start!131912 res!1059222) b!1543750))

(assert (= (and b!1543750 res!1059223) b!1543752))

(assert (= (and b!1543752 res!1059224) b!1543748))

(assert (= (and b!1543749 condMapEmpty!58507) mapIsEmpty!58507))

(assert (= (and b!1543749 (not condMapEmpty!58507)) mapNonEmpty!58507))

(get-info :version)

(assert (= (and mapNonEmpty!58507 ((_ is ValueCellFull!18024) mapValue!58507)) b!1543751))

(assert (= (and b!1543749 ((_ is ValueCellFull!18024) mapDefault!58507)) b!1543753))

(assert (= start!131912 b!1543749))

(declare-fun m!1424959 () Bool)

(assert (=> b!1543748 m!1424959))

(declare-fun m!1424961 () Bool)

(assert (=> mapNonEmpty!58507 m!1424961))

(declare-fun m!1424963 () Bool)

(assert (=> b!1543752 m!1424963))

(declare-fun m!1424965 () Bool)

(assert (=> start!131912 m!1424965))

(declare-fun m!1424967 () Bool)

(assert (=> start!131912 m!1424967))

(declare-fun m!1424969 () Bool)

(assert (=> start!131912 m!1424969))

(check-sat tp_is_empty!37869 (not b!1543748) (not mapNonEmpty!58507) (not b!1543752) (not start!131912))
(check-sat)
