; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37038 () Bool)

(assert start!37038)

(declare-fun b_free!8157 () Bool)

(declare-fun b_next!8157 () Bool)

(assert (=> start!37038 (= b_free!8157 (not b_next!8157))))

(declare-fun tp!29186 () Bool)

(declare-fun b_and!15417 () Bool)

(assert (=> start!37038 (= tp!29186 b_and!15417)))

(declare-fun b!371906 () Bool)

(declare-fun res!209264 () Bool)

(declare-fun e!226918 () Bool)

(assert (=> b!371906 (=> (not res!209264) (not e!226918))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371906 (= res!209264 (validKeyInArray!0 k0!778))))

(declare-fun b!371907 () Bool)

(declare-fun res!209262 () Bool)

(assert (=> b!371907 (=> (not res!209262) (not e!226918))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12845 0))(
  ( (V!12846 (val!4447 Int)) )
))
(declare-datatypes ((ValueCell!4059 0))(
  ( (ValueCellFull!4059 (v!6640 V!12845)) (EmptyCell!4059) )
))
(declare-datatypes ((array!21519 0))(
  ( (array!21520 (arr!10225 (Array (_ BitVec 32) ValueCell!4059)) (size!10577 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21519)

(declare-datatypes ((array!21521 0))(
  ( (array!21522 (arr!10226 (Array (_ BitVec 32) (_ BitVec 64))) (size!10578 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21521)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!371907 (= res!209262 (and (= (size!10577 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10578 _keys!658) (size!10577 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371908 () Bool)

(declare-fun e!226919 () Bool)

(declare-fun tp_is_empty!8805 () Bool)

(assert (=> b!371908 (= e!226919 tp_is_empty!8805)))

(declare-fun b!371909 () Bool)

(declare-fun e!226917 () Bool)

(declare-fun e!226915 () Bool)

(declare-fun mapRes!14772 () Bool)

(assert (=> b!371909 (= e!226917 (and e!226915 mapRes!14772))))

(declare-fun condMapEmpty!14772 () Bool)

(declare-fun mapDefault!14772 () ValueCell!4059)

(assert (=> b!371909 (= condMapEmpty!14772 (= (arr!10225 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4059)) mapDefault!14772)))))

(declare-fun b!371910 () Bool)

(declare-fun res!209261 () Bool)

(assert (=> b!371910 (=> (not res!209261) (not e!226918))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371910 (= res!209261 (or (= (select (arr!10226 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10226 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371911 () Bool)

(declare-fun res!209255 () Bool)

(assert (=> b!371911 (=> (not res!209255) (not e!226918))))

(declare-fun arrayContainsKey!0 (array!21521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371911 (= res!209255 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!371912 () Bool)

(declare-fun e!226920 () Bool)

(assert (=> b!371912 (= e!226918 e!226920)))

(declare-fun res!209257 () Bool)

(assert (=> b!371912 (=> (not res!209257) (not e!226920))))

(declare-fun lt!170534 () array!21521)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21521 (_ BitVec 32)) Bool)

(assert (=> b!371912 (= res!209257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170534 mask!970))))

(assert (=> b!371912 (= lt!170534 (array!21522 (store (arr!10226 _keys!658) i!548 k0!778) (size!10578 _keys!658)))))

(declare-fun res!209259 () Bool)

(assert (=> start!37038 (=> (not res!209259) (not e!226918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37038 (= res!209259 (validMask!0 mask!970))))

(assert (=> start!37038 e!226918))

(declare-fun array_inv!7550 (array!21519) Bool)

(assert (=> start!37038 (and (array_inv!7550 _values!506) e!226917)))

(assert (=> start!37038 tp!29186))

(assert (=> start!37038 true))

(assert (=> start!37038 tp_is_empty!8805))

(declare-fun array_inv!7551 (array!21521) Bool)

(assert (=> start!37038 (array_inv!7551 _keys!658)))

(declare-fun mapNonEmpty!14772 () Bool)

(declare-fun tp!29187 () Bool)

(assert (=> mapNonEmpty!14772 (= mapRes!14772 (and tp!29187 e!226919))))

(declare-fun mapRest!14772 () (Array (_ BitVec 32) ValueCell!4059))

(declare-fun mapValue!14772 () ValueCell!4059)

(declare-fun mapKey!14772 () (_ BitVec 32))

(assert (=> mapNonEmpty!14772 (= (arr!10225 _values!506) (store mapRest!14772 mapKey!14772 mapValue!14772))))

(declare-fun b!371913 () Bool)

(declare-fun res!209263 () Bool)

(assert (=> b!371913 (=> (not res!209263) (not e!226918))))

(declare-datatypes ((List!5748 0))(
  ( (Nil!5745) (Cons!5744 (h!6600 (_ BitVec 64)) (t!10906 List!5748)) )
))
(declare-fun arrayNoDuplicates!0 (array!21521 (_ BitVec 32) List!5748) Bool)

(assert (=> b!371913 (= res!209263 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5745))))

(declare-fun b!371914 () Bool)

(assert (=> b!371914 (= e!226915 tp_is_empty!8805)))

(declare-fun b!371915 () Bool)

(declare-fun res!209260 () Bool)

(assert (=> b!371915 (=> (not res!209260) (not e!226918))))

(assert (=> b!371915 (= res!209260 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10578 _keys!658))))))

(declare-fun b!371916 () Bool)

(assert (=> b!371916 (= e!226920 (not true))))

(declare-datatypes ((tuple2!5876 0))(
  ( (tuple2!5877 (_1!2948 (_ BitVec 64)) (_2!2948 V!12845)) )
))
(declare-datatypes ((List!5749 0))(
  ( (Nil!5746) (Cons!5745 (h!6601 tuple2!5876) (t!10907 List!5749)) )
))
(declare-datatypes ((ListLongMap!4803 0))(
  ( (ListLongMap!4804 (toList!2417 List!5749)) )
))
(declare-fun lt!170532 () ListLongMap!4803)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12845)

(declare-fun lt!170535 () array!21519)

(declare-fun minValue!472 () V!12845)

(declare-fun getCurrentListMap!1867 (array!21521 array!21519 (_ BitVec 32) (_ BitVec 32) V!12845 V!12845 (_ BitVec 32) Int) ListLongMap!4803)

(assert (=> b!371916 (= lt!170532 (getCurrentListMap!1867 lt!170534 lt!170535 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170530 () ListLongMap!4803)

(declare-fun lt!170536 () ListLongMap!4803)

(assert (=> b!371916 (and (= lt!170530 lt!170536) (= lt!170536 lt!170530))))

(declare-fun v!373 () V!12845)

(declare-fun lt!170533 () ListLongMap!4803)

(declare-fun +!758 (ListLongMap!4803 tuple2!5876) ListLongMap!4803)

(assert (=> b!371916 (= lt!170536 (+!758 lt!170533 (tuple2!5877 k0!778 v!373)))))

(declare-datatypes ((Unit!11421 0))(
  ( (Unit!11422) )
))
(declare-fun lt!170531 () Unit!11421)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!18 (array!21521 array!21519 (_ BitVec 32) (_ BitVec 32) V!12845 V!12845 (_ BitVec 32) (_ BitVec 64) V!12845 (_ BitVec 32) Int) Unit!11421)

(assert (=> b!371916 (= lt!170531 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!18 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!685 (array!21521 array!21519 (_ BitVec 32) (_ BitVec 32) V!12845 V!12845 (_ BitVec 32) Int) ListLongMap!4803)

(assert (=> b!371916 (= lt!170530 (getCurrentListMapNoExtraKeys!685 lt!170534 lt!170535 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371916 (= lt!170535 (array!21520 (store (arr!10225 _values!506) i!548 (ValueCellFull!4059 v!373)) (size!10577 _values!506)))))

(assert (=> b!371916 (= lt!170533 (getCurrentListMapNoExtraKeys!685 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371917 () Bool)

(declare-fun res!209256 () Bool)

(assert (=> b!371917 (=> (not res!209256) (not e!226918))))

(assert (=> b!371917 (= res!209256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371918 () Bool)

(declare-fun res!209258 () Bool)

(assert (=> b!371918 (=> (not res!209258) (not e!226920))))

(assert (=> b!371918 (= res!209258 (arrayNoDuplicates!0 lt!170534 #b00000000000000000000000000000000 Nil!5745))))

(declare-fun mapIsEmpty!14772 () Bool)

(assert (=> mapIsEmpty!14772 mapRes!14772))

(assert (= (and start!37038 res!209259) b!371907))

(assert (= (and b!371907 res!209262) b!371917))

(assert (= (and b!371917 res!209256) b!371913))

(assert (= (and b!371913 res!209263) b!371915))

(assert (= (and b!371915 res!209260) b!371906))

(assert (= (and b!371906 res!209264) b!371910))

(assert (= (and b!371910 res!209261) b!371911))

(assert (= (and b!371911 res!209255) b!371912))

(assert (= (and b!371912 res!209257) b!371918))

(assert (= (and b!371918 res!209258) b!371916))

(assert (= (and b!371909 condMapEmpty!14772) mapIsEmpty!14772))

(assert (= (and b!371909 (not condMapEmpty!14772)) mapNonEmpty!14772))

(get-info :version)

(assert (= (and mapNonEmpty!14772 ((_ is ValueCellFull!4059) mapValue!14772)) b!371908))

(assert (= (and b!371909 ((_ is ValueCellFull!4059) mapDefault!14772)) b!371914))

(assert (= start!37038 b!371909))

(declare-fun m!367841 () Bool)

(assert (=> mapNonEmpty!14772 m!367841))

(declare-fun m!367843 () Bool)

(assert (=> start!37038 m!367843))

(declare-fun m!367845 () Bool)

(assert (=> start!37038 m!367845))

(declare-fun m!367847 () Bool)

(assert (=> start!37038 m!367847))

(declare-fun m!367849 () Bool)

(assert (=> b!371910 m!367849))

(declare-fun m!367851 () Bool)

(assert (=> b!371906 m!367851))

(declare-fun m!367853 () Bool)

(assert (=> b!371916 m!367853))

(declare-fun m!367855 () Bool)

(assert (=> b!371916 m!367855))

(declare-fun m!367857 () Bool)

(assert (=> b!371916 m!367857))

(declare-fun m!367859 () Bool)

(assert (=> b!371916 m!367859))

(declare-fun m!367861 () Bool)

(assert (=> b!371916 m!367861))

(declare-fun m!367863 () Bool)

(assert (=> b!371916 m!367863))

(declare-fun m!367865 () Bool)

(assert (=> b!371913 m!367865))

(declare-fun m!367867 () Bool)

(assert (=> b!371917 m!367867))

(declare-fun m!367869 () Bool)

(assert (=> b!371911 m!367869))

(declare-fun m!367871 () Bool)

(assert (=> b!371918 m!367871))

(declare-fun m!367873 () Bool)

(assert (=> b!371912 m!367873))

(declare-fun m!367875 () Bool)

(assert (=> b!371912 m!367875))

(check-sat (not b!371906) (not b!371912) (not b!371911) b_and!15417 tp_is_empty!8805 (not b!371916) (not mapNonEmpty!14772) (not b!371918) (not b_next!8157) (not b!371913) (not start!37038) (not b!371917))
(check-sat b_and!15417 (not b_next!8157))
