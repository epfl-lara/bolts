; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71266 () Bool)

(assert start!71266)

(declare-fun b_free!13389 () Bool)

(declare-fun b_next!13389 () Bool)

(assert (=> start!71266 (= b_free!13389 (not b_next!13389))))

(declare-fun tp!46929 () Bool)

(declare-fun b_and!22345 () Bool)

(assert (=> start!71266 (= tp!46929 b_and!22345)))

(declare-fun mapNonEmpty!24277 () Bool)

(declare-fun mapRes!24277 () Bool)

(declare-fun tp!46930 () Bool)

(declare-fun e!460948 () Bool)

(assert (=> mapNonEmpty!24277 (= mapRes!24277 (and tp!46930 e!460948))))

(declare-datatypes ((V!25133 0))(
  ( (V!25134 (val!7597 Int)) )
))
(declare-datatypes ((ValueCell!7134 0))(
  ( (ValueCellFull!7134 (v!10028 V!25133)) (EmptyCell!7134) )
))
(declare-fun mapRest!24277 () (Array (_ BitVec 32) ValueCell!7134))

(declare-datatypes ((array!46332 0))(
  ( (array!46333 (arr!22206 (Array (_ BitVec 32) ValueCell!7134)) (size!22627 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46332)

(declare-fun mapValue!24277 () ValueCell!7134)

(declare-fun mapKey!24277 () (_ BitVec 32))

(assert (=> mapNonEmpty!24277 (= (arr!22206 _values!788) (store mapRest!24277 mapKey!24277 mapValue!24277))))

(declare-fun b!827374 () Bool)

(declare-fun e!460947 () Bool)

(declare-fun e!460951 () Bool)

(assert (=> b!827374 (= e!460947 (and e!460951 mapRes!24277))))

(declare-fun condMapEmpty!24277 () Bool)

(declare-fun mapDefault!24277 () ValueCell!7134)

(assert (=> b!827374 (= condMapEmpty!24277 (= (arr!22206 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7134)) mapDefault!24277)))))

(declare-fun b!827375 () Bool)

(declare-fun tp_is_empty!15099 () Bool)

(assert (=> b!827375 (= e!460948 tp_is_empty!15099)))

(declare-fun b!827376 () Bool)

(declare-fun e!460950 () Bool)

(assert (=> b!827376 (= e!460950 false)))

(declare-datatypes ((tuple2!10078 0))(
  ( (tuple2!10079 (_1!5049 (_ BitVec 64)) (_2!5049 V!25133)) )
))
(declare-datatypes ((List!15916 0))(
  ( (Nil!15913) (Cons!15912 (h!17041 tuple2!10078) (t!22273 List!15916)) )
))
(declare-datatypes ((ListLongMap!8915 0))(
  ( (ListLongMap!8916 (toList!4473 List!15916)) )
))
(declare-fun lt!374878 () ListLongMap!8915)

(declare-datatypes ((array!46334 0))(
  ( (array!46335 (arr!22207 (Array (_ BitVec 32) (_ BitVec 64))) (size!22628 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46334)

(declare-fun zeroValueAfter!34 () V!25133)

(declare-fun minValue!754 () V!25133)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2480 (array!46334 array!46332 (_ BitVec 32) (_ BitVec 32) V!25133 V!25133 (_ BitVec 32) Int) ListLongMap!8915)

(assert (=> b!827376 (= lt!374878 (getCurrentListMapNoExtraKeys!2480 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25133)

(declare-fun lt!374877 () ListLongMap!8915)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!827376 (= lt!374877 (getCurrentListMapNoExtraKeys!2480 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827377 () Bool)

(assert (=> b!827377 (= e!460951 tp_is_empty!15099)))

(declare-fun res!564041 () Bool)

(assert (=> start!71266 (=> (not res!564041) (not e!460950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71266 (= res!564041 (validMask!0 mask!1312))))

(assert (=> start!71266 e!460950))

(assert (=> start!71266 tp_is_empty!15099))

(declare-fun array_inv!17679 (array!46334) Bool)

(assert (=> start!71266 (array_inv!17679 _keys!976)))

(assert (=> start!71266 true))

(declare-fun array_inv!17680 (array!46332) Bool)

(assert (=> start!71266 (and (array_inv!17680 _values!788) e!460947)))

(assert (=> start!71266 tp!46929))

(declare-fun b!827378 () Bool)

(declare-fun res!564040 () Bool)

(assert (=> b!827378 (=> (not res!564040) (not e!460950))))

(declare-datatypes ((List!15917 0))(
  ( (Nil!15914) (Cons!15913 (h!17042 (_ BitVec 64)) (t!22274 List!15917)) )
))
(declare-fun arrayNoDuplicates!0 (array!46334 (_ BitVec 32) List!15917) Bool)

(assert (=> b!827378 (= res!564040 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15914))))

(declare-fun mapIsEmpty!24277 () Bool)

(assert (=> mapIsEmpty!24277 mapRes!24277))

(declare-fun b!827379 () Bool)

(declare-fun res!564043 () Bool)

(assert (=> b!827379 (=> (not res!564043) (not e!460950))))

(assert (=> b!827379 (= res!564043 (and (= (size!22627 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22628 _keys!976) (size!22627 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827380 () Bool)

(declare-fun res!564042 () Bool)

(assert (=> b!827380 (=> (not res!564042) (not e!460950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46334 (_ BitVec 32)) Bool)

(assert (=> b!827380 (= res!564042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!71266 res!564041) b!827379))

(assert (= (and b!827379 res!564043) b!827380))

(assert (= (and b!827380 res!564042) b!827378))

(assert (= (and b!827378 res!564040) b!827376))

(assert (= (and b!827374 condMapEmpty!24277) mapIsEmpty!24277))

(assert (= (and b!827374 (not condMapEmpty!24277)) mapNonEmpty!24277))

(get-info :version)

(assert (= (and mapNonEmpty!24277 ((_ is ValueCellFull!7134) mapValue!24277)) b!827375))

(assert (= (and b!827374 ((_ is ValueCellFull!7134) mapDefault!24277)) b!827377))

(assert (= start!71266 b!827374))

(declare-fun m!770525 () Bool)

(assert (=> b!827378 m!770525))

(declare-fun m!770527 () Bool)

(assert (=> start!71266 m!770527))

(declare-fun m!770529 () Bool)

(assert (=> start!71266 m!770529))

(declare-fun m!770531 () Bool)

(assert (=> start!71266 m!770531))

(declare-fun m!770533 () Bool)

(assert (=> mapNonEmpty!24277 m!770533))

(declare-fun m!770535 () Bool)

(assert (=> b!827376 m!770535))

(declare-fun m!770537 () Bool)

(assert (=> b!827376 m!770537))

(declare-fun m!770539 () Bool)

(assert (=> b!827380 m!770539))

(check-sat (not b_next!13389) b_and!22345 (not b!827378) (not b!827380) (not b!827376) (not mapNonEmpty!24277) (not start!71266) tp_is_empty!15099)
(check-sat b_and!22345 (not b_next!13389))
