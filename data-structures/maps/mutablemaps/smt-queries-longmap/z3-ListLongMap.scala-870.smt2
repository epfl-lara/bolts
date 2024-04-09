; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20330 () Bool)

(assert start!20330)

(declare-fun b_free!4977 () Bool)

(declare-fun b_next!4977 () Bool)

(assert (=> start!20330 (= b_free!4977 (not b_next!4977))))

(declare-fun tp!17963 () Bool)

(declare-fun b_and!11741 () Bool)

(assert (=> start!20330 (= tp!17963 b_and!11741)))

(declare-fun b!200175 () Bool)

(declare-fun res!95339 () Bool)

(declare-fun e!131297 () Bool)

(assert (=> b!200175 (=> (not res!95339) (not e!131297))))

(declare-datatypes ((array!8900 0))(
  ( (array!8901 (arr!4200 (Array (_ BitVec 32) (_ BitVec 64))) (size!4525 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8900)

(declare-datatypes ((List!2655 0))(
  ( (Nil!2652) (Cons!2651 (h!3293 (_ BitVec 64)) (t!7594 List!2655)) )
))
(declare-fun arrayNoDuplicates!0 (array!8900 (_ BitVec 32) List!2655) Bool)

(assert (=> b!200175 (= res!95339 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2652))))

(declare-fun b!200176 () Bool)

(declare-fun e!131299 () Bool)

(declare-fun e!131301 () Bool)

(declare-fun mapRes!8318 () Bool)

(assert (=> b!200176 (= e!131299 (and e!131301 mapRes!8318))))

(declare-fun condMapEmpty!8318 () Bool)

(declare-datatypes ((V!6091 0))(
  ( (V!6092 (val!2461 Int)) )
))
(declare-datatypes ((ValueCell!2073 0))(
  ( (ValueCellFull!2073 (v!4427 V!6091)) (EmptyCell!2073) )
))
(declare-datatypes ((array!8902 0))(
  ( (array!8903 (arr!4201 (Array (_ BitVec 32) ValueCell!2073)) (size!4526 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8902)

(declare-fun mapDefault!8318 () ValueCell!2073)

(assert (=> b!200176 (= condMapEmpty!8318 (= (arr!4201 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2073)) mapDefault!8318)))))

(declare-fun mapNonEmpty!8318 () Bool)

(declare-fun tp!17962 () Bool)

(declare-fun e!131296 () Bool)

(assert (=> mapNonEmpty!8318 (= mapRes!8318 (and tp!17962 e!131296))))

(declare-fun mapRest!8318 () (Array (_ BitVec 32) ValueCell!2073))

(declare-fun mapValue!8318 () ValueCell!2073)

(declare-fun mapKey!8318 () (_ BitVec 32))

(assert (=> mapNonEmpty!8318 (= (arr!4201 _values!649) (store mapRest!8318 mapKey!8318 mapValue!8318))))

(declare-fun b!200177 () Bool)

(declare-fun res!95341 () Bool)

(assert (=> b!200177 (=> (not res!95341) (not e!131297))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!200177 (= res!95341 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4525 _keys!825))))))

(declare-fun e!131298 () Bool)

(declare-datatypes ((tuple2!3714 0))(
  ( (tuple2!3715 (_1!1867 (_ BitVec 64)) (_2!1867 V!6091)) )
))
(declare-datatypes ((List!2656 0))(
  ( (Nil!2653) (Cons!2652 (h!3294 tuple2!3714) (t!7595 List!2656)) )
))
(declare-datatypes ((ListLongMap!2641 0))(
  ( (ListLongMap!2642 (toList!1336 List!2656)) )
))
(declare-fun lt!98820 () ListLongMap!2641)

(declare-fun lt!98821 () tuple2!3714)

(declare-fun lt!98817 () tuple2!3714)

(declare-fun lt!98816 () ListLongMap!2641)

(declare-fun b!200178 () Bool)

(declare-fun +!353 (ListLongMap!2641 tuple2!3714) ListLongMap!2641)

(assert (=> b!200178 (= e!131298 (= lt!98820 (+!353 (+!353 lt!98816 lt!98817) lt!98821)))))

(declare-fun b!200179 () Bool)

(declare-fun res!95335 () Bool)

(assert (=> b!200179 (=> (not res!95335) (not e!131298))))

(declare-fun lt!98814 () ListLongMap!2641)

(declare-fun lt!98818 () ListLongMap!2641)

(assert (=> b!200179 (= res!95335 (= lt!98814 (+!353 (+!353 lt!98818 lt!98817) lt!98821)))))

(declare-fun b!200180 () Bool)

(declare-fun res!95336 () Bool)

(assert (=> b!200180 (=> (not res!95336) (not e!131297))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!200180 (= res!95336 (= (select (arr!4200 _keys!825) i!601) k0!843))))

(declare-fun res!95337 () Bool)

(assert (=> start!20330 (=> (not res!95337) (not e!131297))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20330 (= res!95337 (validMask!0 mask!1149))))

(assert (=> start!20330 e!131297))

(declare-fun array_inv!2755 (array!8902) Bool)

(assert (=> start!20330 (and (array_inv!2755 _values!649) e!131299)))

(assert (=> start!20330 true))

(declare-fun tp_is_empty!4833 () Bool)

(assert (=> start!20330 tp_is_empty!4833))

(declare-fun array_inv!2756 (array!8900) Bool)

(assert (=> start!20330 (array_inv!2756 _keys!825)))

(assert (=> start!20330 tp!17963))

(declare-fun b!200181 () Bool)

(declare-fun res!95334 () Bool)

(assert (=> b!200181 (=> (not res!95334) (not e!131297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200181 (= res!95334 (validKeyInArray!0 k0!843))))

(declare-fun b!200182 () Bool)

(declare-fun res!95338 () Bool)

(assert (=> b!200182 (=> (not res!95338) (not e!131297))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200182 (= res!95338 (and (= (size!4526 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4525 _keys!825) (size!4526 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200183 () Bool)

(assert (=> b!200183 (= e!131301 tp_is_empty!4833)))

(declare-fun b!200184 () Bool)

(declare-fun e!131300 () Bool)

(assert (=> b!200184 (= e!131297 (not e!131300))))

(declare-fun res!95333 () Bool)

(assert (=> b!200184 (=> res!95333 e!131300)))

(assert (=> b!200184 (= res!95333 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6091)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6091)

(declare-fun getCurrentListMap!922 (array!8900 array!8902 (_ BitVec 32) (_ BitVec 32) V!6091 V!6091 (_ BitVec 32) Int) ListLongMap!2641)

(assert (=> b!200184 (= lt!98814 (getCurrentListMap!922 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98813 () array!8902)

(assert (=> b!200184 (= lt!98820 (getCurrentListMap!922 _keys!825 lt!98813 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98815 () ListLongMap!2641)

(assert (=> b!200184 (and (= lt!98815 lt!98816) (= lt!98816 lt!98815))))

(declare-fun v!520 () V!6091)

(assert (=> b!200184 (= lt!98816 (+!353 lt!98818 (tuple2!3715 k0!843 v!520)))))

(declare-datatypes ((Unit!6015 0))(
  ( (Unit!6016) )
))
(declare-fun lt!98819 () Unit!6015)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!35 (array!8900 array!8902 (_ BitVec 32) (_ BitVec 32) V!6091 V!6091 (_ BitVec 32) (_ BitVec 64) V!6091 (_ BitVec 32) Int) Unit!6015)

(assert (=> b!200184 (= lt!98819 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!35 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!293 (array!8900 array!8902 (_ BitVec 32) (_ BitVec 32) V!6091 V!6091 (_ BitVec 32) Int) ListLongMap!2641)

(assert (=> b!200184 (= lt!98815 (getCurrentListMapNoExtraKeys!293 _keys!825 lt!98813 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200184 (= lt!98813 (array!8903 (store (arr!4201 _values!649) i!601 (ValueCellFull!2073 v!520)) (size!4526 _values!649)))))

(assert (=> b!200184 (= lt!98818 (getCurrentListMapNoExtraKeys!293 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200185 () Bool)

(declare-fun res!95332 () Bool)

(assert (=> b!200185 (=> (not res!95332) (not e!131297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8900 (_ BitVec 32)) Bool)

(assert (=> b!200185 (= res!95332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8318 () Bool)

(assert (=> mapIsEmpty!8318 mapRes!8318))

(declare-fun b!200186 () Bool)

(assert (=> b!200186 (= e!131296 tp_is_empty!4833)))

(declare-fun b!200187 () Bool)

(assert (=> b!200187 (= e!131300 true)))

(assert (=> b!200187 e!131298))

(declare-fun res!95340 () Bool)

(assert (=> b!200187 (=> (not res!95340) (not e!131298))))

(assert (=> b!200187 (= res!95340 (= lt!98820 (+!353 (+!353 lt!98815 lt!98817) lt!98821)))))

(assert (=> b!200187 (= lt!98821 (tuple2!3715 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200187 (= lt!98817 (tuple2!3715 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (= (and start!20330 res!95337) b!200182))

(assert (= (and b!200182 res!95338) b!200185))

(assert (= (and b!200185 res!95332) b!200175))

(assert (= (and b!200175 res!95339) b!200177))

(assert (= (and b!200177 res!95341) b!200181))

(assert (= (and b!200181 res!95334) b!200180))

(assert (= (and b!200180 res!95336) b!200184))

(assert (= (and b!200184 (not res!95333)) b!200187))

(assert (= (and b!200187 res!95340) b!200179))

(assert (= (and b!200179 res!95335) b!200178))

(assert (= (and b!200176 condMapEmpty!8318) mapIsEmpty!8318))

(assert (= (and b!200176 (not condMapEmpty!8318)) mapNonEmpty!8318))

(get-info :version)

(assert (= (and mapNonEmpty!8318 ((_ is ValueCellFull!2073) mapValue!8318)) b!200186))

(assert (= (and b!200176 ((_ is ValueCellFull!2073) mapDefault!8318)) b!200183))

(assert (= start!20330 b!200176))

(declare-fun m!226611 () Bool)

(assert (=> b!200185 m!226611))

(declare-fun m!226613 () Bool)

(assert (=> b!200184 m!226613))

(declare-fun m!226615 () Bool)

(assert (=> b!200184 m!226615))

(declare-fun m!226617 () Bool)

(assert (=> b!200184 m!226617))

(declare-fun m!226619 () Bool)

(assert (=> b!200184 m!226619))

(declare-fun m!226621 () Bool)

(assert (=> b!200184 m!226621))

(declare-fun m!226623 () Bool)

(assert (=> b!200184 m!226623))

(declare-fun m!226625 () Bool)

(assert (=> b!200184 m!226625))

(declare-fun m!226627 () Bool)

(assert (=> b!200175 m!226627))

(declare-fun m!226629 () Bool)

(assert (=> b!200187 m!226629))

(assert (=> b!200187 m!226629))

(declare-fun m!226631 () Bool)

(assert (=> b!200187 m!226631))

(declare-fun m!226633 () Bool)

(assert (=> b!200180 m!226633))

(declare-fun m!226635 () Bool)

(assert (=> b!200178 m!226635))

(assert (=> b!200178 m!226635))

(declare-fun m!226637 () Bool)

(assert (=> b!200178 m!226637))

(declare-fun m!226639 () Bool)

(assert (=> start!20330 m!226639))

(declare-fun m!226641 () Bool)

(assert (=> start!20330 m!226641))

(declare-fun m!226643 () Bool)

(assert (=> start!20330 m!226643))

(declare-fun m!226645 () Bool)

(assert (=> mapNonEmpty!8318 m!226645))

(declare-fun m!226647 () Bool)

(assert (=> b!200181 m!226647))

(declare-fun m!226649 () Bool)

(assert (=> b!200179 m!226649))

(assert (=> b!200179 m!226649))

(declare-fun m!226651 () Bool)

(assert (=> b!200179 m!226651))

(check-sat (not b!200178) tp_is_empty!4833 (not b!200184) b_and!11741 (not b!200181) (not b!200187) (not b_next!4977) (not b!200175) (not b!200179) (not mapNonEmpty!8318) (not start!20330) (not b!200185))
(check-sat b_and!11741 (not b_next!4977))
