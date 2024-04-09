; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38006 () Bool)

(assert start!38006)

(declare-fun b_free!8967 () Bool)

(declare-fun b_next!8967 () Bool)

(assert (=> start!38006 (= b_free!8967 (not b_next!8967))))

(declare-fun tp!31671 () Bool)

(declare-fun b_and!16299 () Bool)

(assert (=> start!38006 (= tp!31671 b_and!16299)))

(declare-datatypes ((V!13957 0))(
  ( (V!13958 (val!4864 Int)) )
))
(declare-datatypes ((tuple2!6490 0))(
  ( (tuple2!6491 (_1!3255 (_ BitVec 64)) (_2!3255 V!13957)) )
))
(declare-datatypes ((List!6372 0))(
  ( (Nil!6369) (Cons!6368 (h!7224 tuple2!6490) (t!11542 List!6372)) )
))
(declare-datatypes ((ListLongMap!5417 0))(
  ( (ListLongMap!5418 (toList!2724 List!6372)) )
))
(declare-fun lt!184339 () ListLongMap!5417)

(declare-fun e!236708 () Bool)

(declare-fun lt!184333 () tuple2!6490)

(declare-fun b!390758 () Bool)

(declare-fun lt!184340 () ListLongMap!5417)

(declare-fun +!1022 (ListLongMap!5417 tuple2!6490) ListLongMap!5417)

(assert (=> b!390758 (= e!236708 (= lt!184339 (+!1022 lt!184340 lt!184333)))))

(declare-fun b!390759 () Bool)

(declare-fun res!223689 () Bool)

(declare-fun e!236705 () Bool)

(assert (=> b!390759 (=> (not res!223689) (not e!236705))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!23155 0))(
  ( (array!23156 (arr!11037 (Array (_ BitVec 32) (_ BitVec 64))) (size!11389 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23155)

(assert (=> b!390759 (= res!223689 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11389 _keys!658))))))

(declare-fun b!390760 () Bool)

(declare-fun e!236703 () Bool)

(declare-fun e!236707 () Bool)

(declare-fun mapRes!16041 () Bool)

(assert (=> b!390760 (= e!236703 (and e!236707 mapRes!16041))))

(declare-fun condMapEmpty!16041 () Bool)

(declare-datatypes ((ValueCell!4476 0))(
  ( (ValueCellFull!4476 (v!7081 V!13957)) (EmptyCell!4476) )
))
(declare-datatypes ((array!23157 0))(
  ( (array!23158 (arr!11038 (Array (_ BitVec 32) ValueCell!4476)) (size!11390 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23157)

(declare-fun mapDefault!16041 () ValueCell!4476)

(assert (=> b!390760 (= condMapEmpty!16041 (= (arr!11038 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4476)) mapDefault!16041)))))

(declare-fun b!390761 () Bool)

(declare-fun res!223686 () Bool)

(assert (=> b!390761 (=> (not res!223686) (not e!236705))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!390761 (= res!223686 (and (= (size!11390 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11389 _keys!658) (size!11390 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!390762 () Bool)

(declare-fun tp_is_empty!9639 () Bool)

(assert (=> b!390762 (= e!236707 tp_is_empty!9639)))

(declare-fun b!390763 () Bool)

(declare-fun res!223685 () Bool)

(assert (=> b!390763 (=> (not res!223685) (not e!236705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23155 (_ BitVec 32)) Bool)

(assert (=> b!390763 (= res!223685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!390764 () Bool)

(declare-fun res!223691 () Bool)

(assert (=> b!390764 (=> (not res!223691) (not e!236705))))

(declare-datatypes ((List!6373 0))(
  ( (Nil!6370) (Cons!6369 (h!7225 (_ BitVec 64)) (t!11543 List!6373)) )
))
(declare-fun arrayNoDuplicates!0 (array!23155 (_ BitVec 32) List!6373) Bool)

(assert (=> b!390764 (= res!223691 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6370))))

(declare-fun b!390765 () Bool)

(declare-fun e!236706 () Bool)

(assert (=> b!390765 (= e!236706 tp_is_empty!9639)))

(declare-fun b!390766 () Bool)

(declare-fun e!236704 () Bool)

(declare-fun e!236709 () Bool)

(assert (=> b!390766 (= e!236704 (not e!236709))))

(declare-fun res!223690 () Bool)

(assert (=> b!390766 (=> res!223690 e!236709)))

(assert (=> b!390766 (= res!223690 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13957)

(declare-fun minValue!472 () V!13957)

(declare-fun getCurrentListMap!2091 (array!23155 array!23157 (_ BitVec 32) (_ BitVec 32) V!13957 V!13957 (_ BitVec 32) Int) ListLongMap!5417)

(assert (=> b!390766 (= lt!184339 (getCurrentListMap!2091 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184332 () ListLongMap!5417)

(declare-fun lt!184336 () array!23157)

(declare-fun lt!184338 () array!23155)

(assert (=> b!390766 (= lt!184332 (getCurrentListMap!2091 lt!184338 lt!184336 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184335 () ListLongMap!5417)

(declare-fun lt!184334 () ListLongMap!5417)

(assert (=> b!390766 (and (= lt!184335 lt!184334) (= lt!184334 lt!184335))))

(declare-fun v!373 () V!13957)

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!390766 (= lt!184334 (+!1022 lt!184340 (tuple2!6491 k0!778 v!373)))))

(declare-datatypes ((Unit!11937 0))(
  ( (Unit!11938) )
))
(declare-fun lt!184337 () Unit!11937)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!248 (array!23155 array!23157 (_ BitVec 32) (_ BitVec 32) V!13957 V!13957 (_ BitVec 32) (_ BitVec 64) V!13957 (_ BitVec 32) Int) Unit!11937)

(assert (=> b!390766 (= lt!184337 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!248 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!953 (array!23155 array!23157 (_ BitVec 32) (_ BitVec 32) V!13957 V!13957 (_ BitVec 32) Int) ListLongMap!5417)

(assert (=> b!390766 (= lt!184335 (getCurrentListMapNoExtraKeys!953 lt!184338 lt!184336 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!390766 (= lt!184336 (array!23158 (store (arr!11038 _values!506) i!548 (ValueCellFull!4476 v!373)) (size!11390 _values!506)))))

(assert (=> b!390766 (= lt!184340 (getCurrentListMapNoExtraKeys!953 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390767 () Bool)

(declare-fun res!223688 () Bool)

(assert (=> b!390767 (=> (not res!223688) (not e!236704))))

(assert (=> b!390767 (= res!223688 (arrayNoDuplicates!0 lt!184338 #b00000000000000000000000000000000 Nil!6370))))

(declare-fun mapNonEmpty!16041 () Bool)

(declare-fun tp!31670 () Bool)

(assert (=> mapNonEmpty!16041 (= mapRes!16041 (and tp!31670 e!236706))))

(declare-fun mapKey!16041 () (_ BitVec 32))

(declare-fun mapValue!16041 () ValueCell!4476)

(declare-fun mapRest!16041 () (Array (_ BitVec 32) ValueCell!4476))

(assert (=> mapNonEmpty!16041 (= (arr!11038 _values!506) (store mapRest!16041 mapKey!16041 mapValue!16041))))

(declare-fun b!390768 () Bool)

(assert (=> b!390768 (= e!236705 e!236704)))

(declare-fun res!223682 () Bool)

(assert (=> b!390768 (=> (not res!223682) (not e!236704))))

(assert (=> b!390768 (= res!223682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184338 mask!970))))

(assert (=> b!390768 (= lt!184338 (array!23156 (store (arr!11037 _keys!658) i!548 k0!778) (size!11389 _keys!658)))))

(declare-fun b!390769 () Bool)

(assert (=> b!390769 (= e!236709 (= lt!184332 (+!1022 lt!184334 lt!184333)))))

(assert (=> b!390769 e!236708))

(declare-fun res!223692 () Bool)

(assert (=> b!390769 (=> (not res!223692) (not e!236708))))

(assert (=> b!390769 (= res!223692 (= lt!184332 (+!1022 lt!184335 lt!184333)))))

(assert (=> b!390769 (= lt!184333 (tuple2!6491 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!390770 () Bool)

(declare-fun res!223687 () Bool)

(assert (=> b!390770 (=> (not res!223687) (not e!236705))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!390770 (= res!223687 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!16041 () Bool)

(assert (=> mapIsEmpty!16041 mapRes!16041))

(declare-fun b!390771 () Bool)

(declare-fun res!223693 () Bool)

(assert (=> b!390771 (=> (not res!223693) (not e!236705))))

(assert (=> b!390771 (= res!223693 (or (= (select (arr!11037 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11037 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!223683 () Bool)

(assert (=> start!38006 (=> (not res!223683) (not e!236705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38006 (= res!223683 (validMask!0 mask!970))))

(assert (=> start!38006 e!236705))

(declare-fun array_inv!8092 (array!23157) Bool)

(assert (=> start!38006 (and (array_inv!8092 _values!506) e!236703)))

(assert (=> start!38006 tp!31671))

(assert (=> start!38006 true))

(assert (=> start!38006 tp_is_empty!9639))

(declare-fun array_inv!8093 (array!23155) Bool)

(assert (=> start!38006 (array_inv!8093 _keys!658)))

(declare-fun b!390772 () Bool)

(declare-fun res!223684 () Bool)

(assert (=> b!390772 (=> (not res!223684) (not e!236705))))

(declare-fun arrayContainsKey!0 (array!23155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!390772 (= res!223684 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!38006 res!223683) b!390761))

(assert (= (and b!390761 res!223686) b!390763))

(assert (= (and b!390763 res!223685) b!390764))

(assert (= (and b!390764 res!223691) b!390759))

(assert (= (and b!390759 res!223689) b!390770))

(assert (= (and b!390770 res!223687) b!390771))

(assert (= (and b!390771 res!223693) b!390772))

(assert (= (and b!390772 res!223684) b!390768))

(assert (= (and b!390768 res!223682) b!390767))

(assert (= (and b!390767 res!223688) b!390766))

(assert (= (and b!390766 (not res!223690)) b!390769))

(assert (= (and b!390769 res!223692) b!390758))

(assert (= (and b!390760 condMapEmpty!16041) mapIsEmpty!16041))

(assert (= (and b!390760 (not condMapEmpty!16041)) mapNonEmpty!16041))

(get-info :version)

(assert (= (and mapNonEmpty!16041 ((_ is ValueCellFull!4476) mapValue!16041)) b!390765))

(assert (= (and b!390760 ((_ is ValueCellFull!4476) mapDefault!16041)) b!390762))

(assert (= start!38006 b!390760))

(declare-fun m!387149 () Bool)

(assert (=> b!390758 m!387149))

(declare-fun m!387151 () Bool)

(assert (=> b!390769 m!387151))

(declare-fun m!387153 () Bool)

(assert (=> b!390769 m!387153))

(declare-fun m!387155 () Bool)

(assert (=> b!390763 m!387155))

(declare-fun m!387157 () Bool)

(assert (=> b!390767 m!387157))

(declare-fun m!387159 () Bool)

(assert (=> b!390766 m!387159))

(declare-fun m!387161 () Bool)

(assert (=> b!390766 m!387161))

(declare-fun m!387163 () Bool)

(assert (=> b!390766 m!387163))

(declare-fun m!387165 () Bool)

(assert (=> b!390766 m!387165))

(declare-fun m!387167 () Bool)

(assert (=> b!390766 m!387167))

(declare-fun m!387169 () Bool)

(assert (=> b!390766 m!387169))

(declare-fun m!387171 () Bool)

(assert (=> b!390766 m!387171))

(declare-fun m!387173 () Bool)

(assert (=> b!390768 m!387173))

(declare-fun m!387175 () Bool)

(assert (=> b!390768 m!387175))

(declare-fun m!387177 () Bool)

(assert (=> b!390770 m!387177))

(declare-fun m!387179 () Bool)

(assert (=> b!390764 m!387179))

(declare-fun m!387181 () Bool)

(assert (=> b!390771 m!387181))

(declare-fun m!387183 () Bool)

(assert (=> start!38006 m!387183))

(declare-fun m!387185 () Bool)

(assert (=> start!38006 m!387185))

(declare-fun m!387187 () Bool)

(assert (=> start!38006 m!387187))

(declare-fun m!387189 () Bool)

(assert (=> mapNonEmpty!16041 m!387189))

(declare-fun m!387191 () Bool)

(assert (=> b!390772 m!387191))

(check-sat (not b!390772) (not start!38006) (not b_next!8967) (not b!390768) (not b!390770) (not b!390769) (not b!390763) tp_is_empty!9639 (not b!390766) (not b!390764) (not b!390767) (not mapNonEmpty!16041) (not b!390758) b_and!16299)
(check-sat b_and!16299 (not b_next!8967))
