; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37050 () Bool)

(assert start!37050)

(declare-fun b_free!8169 () Bool)

(declare-fun b_next!8169 () Bool)

(assert (=> start!37050 (= b_free!8169 (not b_next!8169))))

(declare-fun tp!29222 () Bool)

(declare-fun b_and!15429 () Bool)

(assert (=> start!37050 (= tp!29222 b_and!15429)))

(declare-fun b!372140 () Bool)

(declare-fun e!227026 () Bool)

(declare-fun tp_is_empty!8817 () Bool)

(assert (=> b!372140 (= e!227026 tp_is_empty!8817)))

(declare-fun b!372141 () Bool)

(declare-fun e!227028 () Bool)

(assert (=> b!372141 (= e!227028 tp_is_empty!8817)))

(declare-fun res!209437 () Bool)

(declare-fun e!227023 () Bool)

(assert (=> start!37050 (=> (not res!209437) (not e!227023))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37050 (= res!209437 (validMask!0 mask!970))))

(assert (=> start!37050 e!227023))

(declare-datatypes ((V!12861 0))(
  ( (V!12862 (val!4453 Int)) )
))
(declare-datatypes ((ValueCell!4065 0))(
  ( (ValueCellFull!4065 (v!6646 V!12861)) (EmptyCell!4065) )
))
(declare-datatypes ((array!21543 0))(
  ( (array!21544 (arr!10237 (Array (_ BitVec 32) ValueCell!4065)) (size!10589 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21543)

(declare-fun e!227027 () Bool)

(declare-fun array_inv!7560 (array!21543) Bool)

(assert (=> start!37050 (and (array_inv!7560 _values!506) e!227027)))

(assert (=> start!37050 tp!29222))

(assert (=> start!37050 true))

(assert (=> start!37050 tp_is_empty!8817))

(declare-datatypes ((array!21545 0))(
  ( (array!21546 (arr!10238 (Array (_ BitVec 32) (_ BitVec 64))) (size!10590 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21545)

(declare-fun array_inv!7561 (array!21545) Bool)

(assert (=> start!37050 (array_inv!7561 _keys!658)))

(declare-fun b!372142 () Bool)

(declare-fun res!209442 () Bool)

(assert (=> b!372142 (=> (not res!209442) (not e!227023))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372142 (= res!209442 (validKeyInArray!0 k0!778))))

(declare-fun b!372143 () Bool)

(declare-fun res!209440 () Bool)

(assert (=> b!372143 (=> (not res!209440) (not e!227023))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372143 (= res!209440 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10590 _keys!658))))))

(declare-fun b!372144 () Bool)

(declare-fun res!209443 () Bool)

(assert (=> b!372144 (=> (not res!209443) (not e!227023))))

(assert (=> b!372144 (= res!209443 (or (= (select (arr!10238 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10238 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372145 () Bool)

(declare-fun res!209436 () Bool)

(assert (=> b!372145 (=> (not res!209436) (not e!227023))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!372145 (= res!209436 (and (= (size!10589 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10590 _keys!658) (size!10589 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372146 () Bool)

(declare-fun res!209439 () Bool)

(declare-fun e!227024 () Bool)

(assert (=> b!372146 (=> (not res!209439) (not e!227024))))

(declare-fun lt!170662 () array!21545)

(declare-datatypes ((List!5757 0))(
  ( (Nil!5754) (Cons!5753 (h!6609 (_ BitVec 64)) (t!10915 List!5757)) )
))
(declare-fun arrayNoDuplicates!0 (array!21545 (_ BitVec 32) List!5757) Bool)

(assert (=> b!372146 (= res!209439 (arrayNoDuplicates!0 lt!170662 #b00000000000000000000000000000000 Nil!5754))))

(declare-fun b!372147 () Bool)

(declare-fun res!209444 () Bool)

(assert (=> b!372147 (=> (not res!209444) (not e!227023))))

(declare-fun arrayContainsKey!0 (array!21545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372147 (= res!209444 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14790 () Bool)

(declare-fun mapRes!14790 () Bool)

(assert (=> mapIsEmpty!14790 mapRes!14790))

(declare-fun mapNonEmpty!14790 () Bool)

(declare-fun tp!29223 () Bool)

(assert (=> mapNonEmpty!14790 (= mapRes!14790 (and tp!29223 e!227026))))

(declare-fun mapRest!14790 () (Array (_ BitVec 32) ValueCell!4065))

(declare-fun mapValue!14790 () ValueCell!4065)

(declare-fun mapKey!14790 () (_ BitVec 32))

(assert (=> mapNonEmpty!14790 (= (arr!10237 _values!506) (store mapRest!14790 mapKey!14790 mapValue!14790))))

(declare-fun b!372148 () Bool)

(assert (=> b!372148 (= e!227027 (and e!227028 mapRes!14790))))

(declare-fun condMapEmpty!14790 () Bool)

(declare-fun mapDefault!14790 () ValueCell!4065)

(assert (=> b!372148 (= condMapEmpty!14790 (= (arr!10237 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4065)) mapDefault!14790)))))

(declare-fun b!372149 () Bool)

(declare-fun res!209435 () Bool)

(assert (=> b!372149 (=> (not res!209435) (not e!227023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21545 (_ BitVec 32)) Bool)

(assert (=> b!372149 (= res!209435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372150 () Bool)

(assert (=> b!372150 (= e!227023 e!227024)))

(declare-fun res!209438 () Bool)

(assert (=> b!372150 (=> (not res!209438) (not e!227024))))

(assert (=> b!372150 (= res!209438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170662 mask!970))))

(assert (=> b!372150 (= lt!170662 (array!21546 (store (arr!10238 _keys!658) i!548 k0!778) (size!10590 _keys!658)))))

(declare-fun b!372151 () Bool)

(declare-fun res!209441 () Bool)

(assert (=> b!372151 (=> (not res!209441) (not e!227023))))

(assert (=> b!372151 (= res!209441 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5754))))

(declare-fun b!372152 () Bool)

(assert (=> b!372152 (= e!227024 (not true))))

(declare-datatypes ((tuple2!5884 0))(
  ( (tuple2!5885 (_1!2952 (_ BitVec 64)) (_2!2952 V!12861)) )
))
(declare-datatypes ((List!5758 0))(
  ( (Nil!5755) (Cons!5754 (h!6610 tuple2!5884) (t!10916 List!5758)) )
))
(declare-datatypes ((ListLongMap!4811 0))(
  ( (ListLongMap!4812 (toList!2421 List!5758)) )
))
(declare-fun lt!170661 () ListLongMap!4811)

(declare-fun lt!170660 () array!21543)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12861)

(declare-fun minValue!472 () V!12861)

(declare-fun getCurrentListMap!1871 (array!21545 array!21543 (_ BitVec 32) (_ BitVec 32) V!12861 V!12861 (_ BitVec 32) Int) ListLongMap!4811)

(assert (=> b!372152 (= lt!170661 (getCurrentListMap!1871 lt!170662 lt!170660 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170657 () ListLongMap!4811)

(declare-fun lt!170659 () ListLongMap!4811)

(assert (=> b!372152 (and (= lt!170657 lt!170659) (= lt!170659 lt!170657))))

(declare-fun v!373 () V!12861)

(declare-fun lt!170656 () ListLongMap!4811)

(declare-fun +!762 (ListLongMap!4811 tuple2!5884) ListLongMap!4811)

(assert (=> b!372152 (= lt!170659 (+!762 lt!170656 (tuple2!5885 k0!778 v!373)))))

(declare-datatypes ((Unit!11429 0))(
  ( (Unit!11430) )
))
(declare-fun lt!170658 () Unit!11429)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!22 (array!21545 array!21543 (_ BitVec 32) (_ BitVec 32) V!12861 V!12861 (_ BitVec 32) (_ BitVec 64) V!12861 (_ BitVec 32) Int) Unit!11429)

(assert (=> b!372152 (= lt!170658 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!22 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!689 (array!21545 array!21543 (_ BitVec 32) (_ BitVec 32) V!12861 V!12861 (_ BitVec 32) Int) ListLongMap!4811)

(assert (=> b!372152 (= lt!170657 (getCurrentListMapNoExtraKeys!689 lt!170662 lt!170660 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372152 (= lt!170660 (array!21544 (store (arr!10237 _values!506) i!548 (ValueCellFull!4065 v!373)) (size!10589 _values!506)))))

(assert (=> b!372152 (= lt!170656 (getCurrentListMapNoExtraKeys!689 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37050 res!209437) b!372145))

(assert (= (and b!372145 res!209436) b!372149))

(assert (= (and b!372149 res!209435) b!372151))

(assert (= (and b!372151 res!209441) b!372143))

(assert (= (and b!372143 res!209440) b!372142))

(assert (= (and b!372142 res!209442) b!372144))

(assert (= (and b!372144 res!209443) b!372147))

(assert (= (and b!372147 res!209444) b!372150))

(assert (= (and b!372150 res!209438) b!372146))

(assert (= (and b!372146 res!209439) b!372152))

(assert (= (and b!372148 condMapEmpty!14790) mapIsEmpty!14790))

(assert (= (and b!372148 (not condMapEmpty!14790)) mapNonEmpty!14790))

(get-info :version)

(assert (= (and mapNonEmpty!14790 ((_ is ValueCellFull!4065) mapValue!14790)) b!372140))

(assert (= (and b!372148 ((_ is ValueCellFull!4065) mapDefault!14790)) b!372141))

(assert (= start!37050 b!372148))

(declare-fun m!368057 () Bool)

(assert (=> b!372147 m!368057))

(declare-fun m!368059 () Bool)

(assert (=> mapNonEmpty!14790 m!368059))

(declare-fun m!368061 () Bool)

(assert (=> b!372151 m!368061))

(declare-fun m!368063 () Bool)

(assert (=> b!372152 m!368063))

(declare-fun m!368065 () Bool)

(assert (=> b!372152 m!368065))

(declare-fun m!368067 () Bool)

(assert (=> b!372152 m!368067))

(declare-fun m!368069 () Bool)

(assert (=> b!372152 m!368069))

(declare-fun m!368071 () Bool)

(assert (=> b!372152 m!368071))

(declare-fun m!368073 () Bool)

(assert (=> b!372152 m!368073))

(declare-fun m!368075 () Bool)

(assert (=> b!372149 m!368075))

(declare-fun m!368077 () Bool)

(assert (=> start!37050 m!368077))

(declare-fun m!368079 () Bool)

(assert (=> start!37050 m!368079))

(declare-fun m!368081 () Bool)

(assert (=> start!37050 m!368081))

(declare-fun m!368083 () Bool)

(assert (=> b!372146 m!368083))

(declare-fun m!368085 () Bool)

(assert (=> b!372144 m!368085))

(declare-fun m!368087 () Bool)

(assert (=> b!372142 m!368087))

(declare-fun m!368089 () Bool)

(assert (=> b!372150 m!368089))

(declare-fun m!368091 () Bool)

(assert (=> b!372150 m!368091))

(check-sat (not mapNonEmpty!14790) (not b!372151) (not b!372147) (not start!37050) (not b!372150) (not b!372152) b_and!15429 (not b_next!8169) tp_is_empty!8817 (not b!372149) (not b!372146) (not b!372142))
(check-sat b_and!15429 (not b_next!8169))
