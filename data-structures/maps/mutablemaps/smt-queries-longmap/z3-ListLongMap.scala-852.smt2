; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20222 () Bool)

(assert start!20222)

(declare-fun b_free!4869 () Bool)

(declare-fun b_next!4869 () Bool)

(assert (=> start!20222 (= b_free!4869 (not b_next!4869))))

(declare-fun tp!17638 () Bool)

(declare-fun b_and!11633 () Bool)

(assert (=> start!20222 (= tp!17638 b_and!11633)))

(declare-fun b!198540 () Bool)

(declare-fun e!130477 () Bool)

(assert (=> b!198540 (= e!130477 (not true))))

(declare-datatypes ((V!5947 0))(
  ( (V!5948 (val!2407 Int)) )
))
(declare-datatypes ((tuple2!3646 0))(
  ( (tuple2!3647 (_1!1833 (_ BitVec 64)) (_2!1833 V!5947)) )
))
(declare-datatypes ((List!2584 0))(
  ( (Nil!2581) (Cons!2580 (h!3222 tuple2!3646) (t!7523 List!2584)) )
))
(declare-datatypes ((ListLongMap!2573 0))(
  ( (ListLongMap!2574 (toList!1302 List!2584)) )
))
(declare-fun lt!97978 () ListLongMap!2573)

(declare-fun lt!97981 () ListLongMap!2573)

(assert (=> b!198540 (and (= lt!97978 lt!97981) (= lt!97981 lt!97978))))

(declare-fun v!520 () V!5947)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun lt!97979 () ListLongMap!2573)

(declare-fun +!319 (ListLongMap!2573 tuple2!3646) ListLongMap!2573)

(assert (=> b!198540 (= lt!97981 (+!319 lt!97979 (tuple2!3647 k0!843 v!520)))))

(declare-datatypes ((ValueCell!2019 0))(
  ( (ValueCellFull!2019 (v!4373 V!5947)) (EmptyCell!2019) )
))
(declare-datatypes ((array!8696 0))(
  ( (array!8697 (arr!4098 (Array (_ BitVec 32) ValueCell!2019)) (size!4423 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8696)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5947)

(declare-datatypes ((array!8698 0))(
  ( (array!8699 (arr!4099 (Array (_ BitVec 32) (_ BitVec 64))) (size!4424 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8698)

(declare-fun defaultEntry!657 () Int)

(declare-datatypes ((Unit!5947 0))(
  ( (Unit!5948) )
))
(declare-fun lt!97980 () Unit!5947)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5947)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!1 (array!8698 array!8696 (_ BitVec 32) (_ BitVec 32) V!5947 V!5947 (_ BitVec 32) (_ BitVec 64) V!5947 (_ BitVec 32) Int) Unit!5947)

(assert (=> b!198540 (= lt!97980 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!1 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!259 (array!8698 array!8696 (_ BitVec 32) (_ BitVec 32) V!5947 V!5947 (_ BitVec 32) Int) ListLongMap!2573)

(assert (=> b!198540 (= lt!97978 (getCurrentListMapNoExtraKeys!259 _keys!825 (array!8697 (store (arr!4098 _values!649) i!601 (ValueCellFull!2019 v!520)) (size!4423 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!198540 (= lt!97979 (getCurrentListMapNoExtraKeys!259 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!94189 () Bool)

(assert (=> start!20222 (=> (not res!94189) (not e!130477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20222 (= res!94189 (validMask!0 mask!1149))))

(assert (=> start!20222 e!130477))

(declare-fun e!130478 () Bool)

(declare-fun array_inv!2675 (array!8696) Bool)

(assert (=> start!20222 (and (array_inv!2675 _values!649) e!130478)))

(assert (=> start!20222 true))

(declare-fun tp_is_empty!4725 () Bool)

(assert (=> start!20222 tp_is_empty!4725))

(declare-fun array_inv!2676 (array!8698) Bool)

(assert (=> start!20222 (array_inv!2676 _keys!825)))

(assert (=> start!20222 tp!17638))

(declare-fun b!198541 () Bool)

(declare-fun e!130476 () Bool)

(declare-fun mapRes!8156 () Bool)

(assert (=> b!198541 (= e!130478 (and e!130476 mapRes!8156))))

(declare-fun condMapEmpty!8156 () Bool)

(declare-fun mapDefault!8156 () ValueCell!2019)

(assert (=> b!198541 (= condMapEmpty!8156 (= (arr!4098 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2019)) mapDefault!8156)))))

(declare-fun b!198542 () Bool)

(declare-fun res!94183 () Bool)

(assert (=> b!198542 (=> (not res!94183) (not e!130477))))

(assert (=> b!198542 (= res!94183 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4424 _keys!825))))))

(declare-fun b!198543 () Bool)

(declare-fun res!94184 () Bool)

(assert (=> b!198543 (=> (not res!94184) (not e!130477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198543 (= res!94184 (validKeyInArray!0 k0!843))))

(declare-fun b!198544 () Bool)

(declare-fun res!94188 () Bool)

(assert (=> b!198544 (=> (not res!94188) (not e!130477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8698 (_ BitVec 32)) Bool)

(assert (=> b!198544 (= res!94188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8156 () Bool)

(declare-fun tp!17639 () Bool)

(declare-fun e!130479 () Bool)

(assert (=> mapNonEmpty!8156 (= mapRes!8156 (and tp!17639 e!130479))))

(declare-fun mapValue!8156 () ValueCell!2019)

(declare-fun mapRest!8156 () (Array (_ BitVec 32) ValueCell!2019))

(declare-fun mapKey!8156 () (_ BitVec 32))

(assert (=> mapNonEmpty!8156 (= (arr!4098 _values!649) (store mapRest!8156 mapKey!8156 mapValue!8156))))

(declare-fun b!198545 () Bool)

(assert (=> b!198545 (= e!130476 tp_is_empty!4725)))

(declare-fun b!198546 () Bool)

(declare-fun res!94187 () Bool)

(assert (=> b!198546 (=> (not res!94187) (not e!130477))))

(declare-datatypes ((List!2585 0))(
  ( (Nil!2582) (Cons!2581 (h!3223 (_ BitVec 64)) (t!7524 List!2585)) )
))
(declare-fun arrayNoDuplicates!0 (array!8698 (_ BitVec 32) List!2585) Bool)

(assert (=> b!198546 (= res!94187 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2582))))

(declare-fun b!198547 () Bool)

(assert (=> b!198547 (= e!130479 tp_is_empty!4725)))

(declare-fun mapIsEmpty!8156 () Bool)

(assert (=> mapIsEmpty!8156 mapRes!8156))

(declare-fun b!198548 () Bool)

(declare-fun res!94186 () Bool)

(assert (=> b!198548 (=> (not res!94186) (not e!130477))))

(assert (=> b!198548 (= res!94186 (= (select (arr!4099 _keys!825) i!601) k0!843))))

(declare-fun b!198549 () Bool)

(declare-fun res!94185 () Bool)

(assert (=> b!198549 (=> (not res!94185) (not e!130477))))

(assert (=> b!198549 (= res!94185 (and (= (size!4423 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4424 _keys!825) (size!4423 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!20222 res!94189) b!198549))

(assert (= (and b!198549 res!94185) b!198544))

(assert (= (and b!198544 res!94188) b!198546))

(assert (= (and b!198546 res!94187) b!198542))

(assert (= (and b!198542 res!94183) b!198543))

(assert (= (and b!198543 res!94184) b!198548))

(assert (= (and b!198548 res!94186) b!198540))

(assert (= (and b!198541 condMapEmpty!8156) mapIsEmpty!8156))

(assert (= (and b!198541 (not condMapEmpty!8156)) mapNonEmpty!8156))

(get-info :version)

(assert (= (and mapNonEmpty!8156 ((_ is ValueCellFull!2019) mapValue!8156)) b!198547))

(assert (= (and b!198541 ((_ is ValueCellFull!2019) mapDefault!8156)) b!198545))

(assert (= start!20222 b!198541))

(declare-fun m!225137 () Bool)

(assert (=> start!20222 m!225137))

(declare-fun m!225139 () Bool)

(assert (=> start!20222 m!225139))

(declare-fun m!225141 () Bool)

(assert (=> start!20222 m!225141))

(declare-fun m!225143 () Bool)

(assert (=> b!198548 m!225143))

(declare-fun m!225145 () Bool)

(assert (=> b!198543 m!225145))

(declare-fun m!225147 () Bool)

(assert (=> mapNonEmpty!8156 m!225147))

(declare-fun m!225149 () Bool)

(assert (=> b!198540 m!225149))

(declare-fun m!225151 () Bool)

(assert (=> b!198540 m!225151))

(declare-fun m!225153 () Bool)

(assert (=> b!198540 m!225153))

(declare-fun m!225155 () Bool)

(assert (=> b!198540 m!225155))

(declare-fun m!225157 () Bool)

(assert (=> b!198540 m!225157))

(declare-fun m!225159 () Bool)

(assert (=> b!198544 m!225159))

(declare-fun m!225161 () Bool)

(assert (=> b!198546 m!225161))

(check-sat (not start!20222) (not b!198543) (not b!198546) (not b!198540) tp_is_empty!4725 (not b_next!4869) (not b!198544) b_and!11633 (not mapNonEmpty!8156))
(check-sat b_and!11633 (not b_next!4869))
