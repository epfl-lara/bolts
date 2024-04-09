; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37362 () Bool)

(assert start!37362)

(declare-fun b_free!8481 () Bool)

(declare-fun b_next!8481 () Bool)

(assert (=> start!37362 (= b_free!8481 (not b_next!8481))))

(declare-fun tp!30158 () Bool)

(declare-fun b_and!15741 () Bool)

(assert (=> start!37362 (= tp!30158 b_and!15741)))

(declare-fun b!379080 () Bool)

(declare-fun res!214979 () Bool)

(declare-fun e!230663 () Bool)

(assert (=> b!379080 (=> (not res!214979) (not e!230663))))

(declare-datatypes ((array!22155 0))(
  ( (array!22156 (arr!10543 (Array (_ BitVec 32) (_ BitVec 64))) (size!10895 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22155)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379080 (= res!214979 (or (= (select (arr!10543 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10543 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379081 () Bool)

(declare-fun e!230660 () Bool)

(declare-fun e!230665 () Bool)

(declare-fun mapRes!15258 () Bool)

(assert (=> b!379081 (= e!230660 (and e!230665 mapRes!15258))))

(declare-fun condMapEmpty!15258 () Bool)

(declare-datatypes ((V!13277 0))(
  ( (V!13278 (val!4609 Int)) )
))
(declare-datatypes ((ValueCell!4221 0))(
  ( (ValueCellFull!4221 (v!6802 V!13277)) (EmptyCell!4221) )
))
(declare-datatypes ((array!22157 0))(
  ( (array!22158 (arr!10544 (Array (_ BitVec 32) ValueCell!4221)) (size!10896 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22157)

(declare-fun mapDefault!15258 () ValueCell!4221)

(assert (=> b!379081 (= condMapEmpty!15258 (= (arr!10544 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4221)) mapDefault!15258)))))

(declare-fun b!379082 () Bool)

(declare-fun tp_is_empty!9129 () Bool)

(assert (=> b!379082 (= e!230665 tp_is_empty!9129)))

(declare-fun b!379083 () Bool)

(declare-fun res!214973 () Bool)

(assert (=> b!379083 (=> (not res!214973) (not e!230663))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22155 (_ BitVec 32)) Bool)

(assert (=> b!379083 (= res!214973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!15258 () Bool)

(declare-fun tp!30159 () Bool)

(declare-fun e!230667 () Bool)

(assert (=> mapNonEmpty!15258 (= mapRes!15258 (and tp!30159 e!230667))))

(declare-fun mapValue!15258 () ValueCell!4221)

(declare-fun mapKey!15258 () (_ BitVec 32))

(declare-fun mapRest!15258 () (Array (_ BitVec 32) ValueCell!4221))

(assert (=> mapNonEmpty!15258 (= (arr!10544 _values!506) (store mapRest!15258 mapKey!15258 mapValue!15258))))

(declare-fun b!379084 () Bool)

(declare-fun e!230662 () Bool)

(declare-fun e!230664 () Bool)

(assert (=> b!379084 (= e!230662 e!230664)))

(declare-fun res!214982 () Bool)

(assert (=> b!379084 (=> res!214982 e!230664)))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!379084 (= res!214982 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6130 0))(
  ( (tuple2!6131 (_1!3075 (_ BitVec 64)) (_2!3075 V!13277)) )
))
(declare-datatypes ((List!6003 0))(
  ( (Nil!6000) (Cons!5999 (h!6855 tuple2!6130) (t!11161 List!6003)) )
))
(declare-datatypes ((ListLongMap!5057 0))(
  ( (ListLongMap!5058 (toList!2544 List!6003)) )
))
(declare-fun lt!177009 () ListLongMap!5057)

(declare-fun lt!177007 () ListLongMap!5057)

(assert (=> b!379084 (= lt!177009 lt!177007)))

(declare-fun lt!177012 () ListLongMap!5057)

(declare-fun lt!177015 () tuple2!6130)

(declare-fun +!885 (ListLongMap!5057 tuple2!6130) ListLongMap!5057)

(assert (=> b!379084 (= lt!177007 (+!885 lt!177012 lt!177015))))

(declare-fun lt!177008 () ListLongMap!5057)

(declare-fun lt!177005 () ListLongMap!5057)

(assert (=> b!379084 (= lt!177008 lt!177005)))

(declare-fun lt!177006 () ListLongMap!5057)

(assert (=> b!379084 (= lt!177005 (+!885 lt!177006 lt!177015))))

(declare-fun lt!177011 () ListLongMap!5057)

(assert (=> b!379084 (= lt!177008 (+!885 lt!177011 lt!177015))))

(declare-fun minValue!472 () V!13277)

(assert (=> b!379084 (= lt!177015 (tuple2!6131 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379085 () Bool)

(assert (=> b!379085 (= e!230664 true)))

(declare-fun lt!177014 () tuple2!6130)

(assert (=> b!379085 (= lt!177005 (+!885 lt!177007 lt!177014))))

(declare-fun v!373 () V!13277)

(declare-datatypes ((Unit!11665 0))(
  ( (Unit!11666) )
))
(declare-fun lt!177004 () Unit!11665)

(declare-fun addCommutativeForDiffKeys!299 (ListLongMap!5057 (_ BitVec 64) V!13277 (_ BitVec 64) V!13277) Unit!11665)

(assert (=> b!379085 (= lt!177004 (addCommutativeForDiffKeys!299 lt!177012 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379086 () Bool)

(declare-fun res!214978 () Bool)

(assert (=> b!379086 (=> (not res!214978) (not e!230663))))

(declare-fun arrayContainsKey!0 (array!22155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379086 (= res!214978 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!379087 () Bool)

(declare-fun e!230666 () Bool)

(assert (=> b!379087 (= e!230663 e!230666)))

(declare-fun res!214976 () Bool)

(assert (=> b!379087 (=> (not res!214976) (not e!230666))))

(declare-fun lt!177010 () array!22155)

(assert (=> b!379087 (= res!214976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177010 mask!970))))

(assert (=> b!379087 (= lt!177010 (array!22156 (store (arr!10543 _keys!658) i!548 k0!778) (size!10895 _keys!658)))))

(declare-fun b!379088 () Bool)

(declare-fun res!214971 () Bool)

(assert (=> b!379088 (=> (not res!214971) (not e!230663))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379088 (= res!214971 (and (= (size!10896 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10895 _keys!658) (size!10896 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379089 () Bool)

(declare-fun res!214975 () Bool)

(assert (=> b!379089 (=> (not res!214975) (not e!230663))))

(declare-datatypes ((List!6004 0))(
  ( (Nil!6001) (Cons!6000 (h!6856 (_ BitVec 64)) (t!11162 List!6004)) )
))
(declare-fun arrayNoDuplicates!0 (array!22155 (_ BitVec 32) List!6004) Bool)

(assert (=> b!379089 (= res!214975 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6001))))

(declare-fun res!214980 () Bool)

(assert (=> start!37362 (=> (not res!214980) (not e!230663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37362 (= res!214980 (validMask!0 mask!970))))

(assert (=> start!37362 e!230663))

(declare-fun array_inv!7758 (array!22157) Bool)

(assert (=> start!37362 (and (array_inv!7758 _values!506) e!230660)))

(assert (=> start!37362 tp!30158))

(assert (=> start!37362 true))

(assert (=> start!37362 tp_is_empty!9129))

(declare-fun array_inv!7759 (array!22155) Bool)

(assert (=> start!37362 (array_inv!7759 _keys!658)))

(declare-fun mapIsEmpty!15258 () Bool)

(assert (=> mapIsEmpty!15258 mapRes!15258))

(declare-fun b!379090 () Bool)

(assert (=> b!379090 (= e!230667 tp_is_empty!9129)))

(declare-fun b!379091 () Bool)

(declare-fun res!214977 () Bool)

(assert (=> b!379091 (=> (not res!214977) (not e!230666))))

(assert (=> b!379091 (= res!214977 (arrayNoDuplicates!0 lt!177010 #b00000000000000000000000000000000 Nil!6001))))

(declare-fun b!379092 () Bool)

(declare-fun res!214981 () Bool)

(assert (=> b!379092 (=> (not res!214981) (not e!230663))))

(assert (=> b!379092 (= res!214981 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10895 _keys!658))))))

(declare-fun b!379093 () Bool)

(declare-fun res!214974 () Bool)

(assert (=> b!379093 (=> (not res!214974) (not e!230663))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379093 (= res!214974 (validKeyInArray!0 k0!778))))

(declare-fun b!379094 () Bool)

(assert (=> b!379094 (= e!230666 (not e!230662))))

(declare-fun res!214972 () Bool)

(assert (=> b!379094 (=> res!214972 e!230662)))

(assert (=> b!379094 (= res!214972 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13277)

(declare-fun getCurrentListMap!1972 (array!22155 array!22157 (_ BitVec 32) (_ BitVec 32) V!13277 V!13277 (_ BitVec 32) Int) ListLongMap!5057)

(assert (=> b!379094 (= lt!177009 (getCurrentListMap!1972 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177013 () array!22157)

(assert (=> b!379094 (= lt!177008 (getCurrentListMap!1972 lt!177010 lt!177013 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379094 (and (= lt!177011 lt!177006) (= lt!177006 lt!177011))))

(assert (=> b!379094 (= lt!177006 (+!885 lt!177012 lt!177014))))

(assert (=> b!379094 (= lt!177014 (tuple2!6131 k0!778 v!373))))

(declare-fun lt!177016 () Unit!11665)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!123 (array!22155 array!22157 (_ BitVec 32) (_ BitVec 32) V!13277 V!13277 (_ BitVec 32) (_ BitVec 64) V!13277 (_ BitVec 32) Int) Unit!11665)

(assert (=> b!379094 (= lt!177016 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!123 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!790 (array!22155 array!22157 (_ BitVec 32) (_ BitVec 32) V!13277 V!13277 (_ BitVec 32) Int) ListLongMap!5057)

(assert (=> b!379094 (= lt!177011 (getCurrentListMapNoExtraKeys!790 lt!177010 lt!177013 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379094 (= lt!177013 (array!22158 (store (arr!10544 _values!506) i!548 (ValueCellFull!4221 v!373)) (size!10896 _values!506)))))

(assert (=> b!379094 (= lt!177012 (getCurrentListMapNoExtraKeys!790 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37362 res!214980) b!379088))

(assert (= (and b!379088 res!214971) b!379083))

(assert (= (and b!379083 res!214973) b!379089))

(assert (= (and b!379089 res!214975) b!379092))

(assert (= (and b!379092 res!214981) b!379093))

(assert (= (and b!379093 res!214974) b!379080))

(assert (= (and b!379080 res!214979) b!379086))

(assert (= (and b!379086 res!214978) b!379087))

(assert (= (and b!379087 res!214976) b!379091))

(assert (= (and b!379091 res!214977) b!379094))

(assert (= (and b!379094 (not res!214972)) b!379084))

(assert (= (and b!379084 (not res!214982)) b!379085))

(assert (= (and b!379081 condMapEmpty!15258) mapIsEmpty!15258))

(assert (= (and b!379081 (not condMapEmpty!15258)) mapNonEmpty!15258))

(get-info :version)

(assert (= (and mapNonEmpty!15258 ((_ is ValueCellFull!4221) mapValue!15258)) b!379090))

(assert (= (and b!379081 ((_ is ValueCellFull!4221) mapDefault!15258)) b!379082))

(assert (= start!37362 b!379081))

(declare-fun m!375989 () Bool)

(assert (=> b!379083 m!375989))

(declare-fun m!375991 () Bool)

(assert (=> b!379080 m!375991))

(declare-fun m!375993 () Bool)

(assert (=> b!379094 m!375993))

(declare-fun m!375995 () Bool)

(assert (=> b!379094 m!375995))

(declare-fun m!375997 () Bool)

(assert (=> b!379094 m!375997))

(declare-fun m!375999 () Bool)

(assert (=> b!379094 m!375999))

(declare-fun m!376001 () Bool)

(assert (=> b!379094 m!376001))

(declare-fun m!376003 () Bool)

(assert (=> b!379094 m!376003))

(declare-fun m!376005 () Bool)

(assert (=> b!379094 m!376005))

(declare-fun m!376007 () Bool)

(assert (=> b!379091 m!376007))

(declare-fun m!376009 () Bool)

(assert (=> mapNonEmpty!15258 m!376009))

(declare-fun m!376011 () Bool)

(assert (=> b!379087 m!376011))

(declare-fun m!376013 () Bool)

(assert (=> b!379087 m!376013))

(declare-fun m!376015 () Bool)

(assert (=> b!379084 m!376015))

(declare-fun m!376017 () Bool)

(assert (=> b!379084 m!376017))

(declare-fun m!376019 () Bool)

(assert (=> b!379084 m!376019))

(declare-fun m!376021 () Bool)

(assert (=> b!379085 m!376021))

(declare-fun m!376023 () Bool)

(assert (=> b!379085 m!376023))

(declare-fun m!376025 () Bool)

(assert (=> b!379089 m!376025))

(declare-fun m!376027 () Bool)

(assert (=> start!37362 m!376027))

(declare-fun m!376029 () Bool)

(assert (=> start!37362 m!376029))

(declare-fun m!376031 () Bool)

(assert (=> start!37362 m!376031))

(declare-fun m!376033 () Bool)

(assert (=> b!379093 m!376033))

(declare-fun m!376035 () Bool)

(assert (=> b!379086 m!376035))

(check-sat b_and!15741 (not b!379091) (not b_next!8481) (not b!379094) (not start!37362) (not b!379087) (not mapNonEmpty!15258) (not b!379085) (not b!379093) (not b!379086) (not b!379083) (not b!379084) tp_is_empty!9129 (not b!379089))
(check-sat b_and!15741 (not b_next!8481))
