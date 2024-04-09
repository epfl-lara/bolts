; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37602 () Bool)

(assert start!37602)

(declare-fun b_free!8721 () Bool)

(declare-fun b_next!8721 () Bool)

(assert (=> start!37602 (= b_free!8721 (not b_next!8721))))

(declare-fun tp!30878 () Bool)

(declare-fun b_and!15981 () Bool)

(assert (=> start!37602 (= tp!30878 b_and!15981)))

(declare-fun res!219043 () Bool)

(declare-fun e!233298 () Bool)

(assert (=> start!37602 (=> (not res!219043) (not e!233298))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37602 (= res!219043 (validMask!0 mask!970))))

(assert (=> start!37602 e!233298))

(declare-datatypes ((V!13597 0))(
  ( (V!13598 (val!4729 Int)) )
))
(declare-datatypes ((ValueCell!4341 0))(
  ( (ValueCellFull!4341 (v!6922 V!13597)) (EmptyCell!4341) )
))
(declare-datatypes ((array!22625 0))(
  ( (array!22626 (arr!10778 (Array (_ BitVec 32) ValueCell!4341)) (size!11130 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22625)

(declare-fun e!233292 () Bool)

(declare-fun array_inv!7914 (array!22625) Bool)

(assert (=> start!37602 (and (array_inv!7914 _values!506) e!233292)))

(assert (=> start!37602 tp!30878))

(assert (=> start!37602 true))

(declare-fun tp_is_empty!9369 () Bool)

(assert (=> start!37602 tp_is_empty!9369))

(declare-datatypes ((array!22627 0))(
  ( (array!22628 (arr!10779 (Array (_ BitVec 32) (_ BitVec 64))) (size!11131 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22627)

(declare-fun array_inv!7915 (array!22627) Bool)

(assert (=> start!37602 (array_inv!7915 _keys!658)))

(declare-fun b!384232 () Bool)

(declare-fun res!219047 () Bool)

(assert (=> b!384232 (=> (not res!219047) (not e!233298))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384232 (= res!219047 (or (= (select (arr!10779 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10779 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384233 () Bool)

(declare-fun e!233296 () Bool)

(assert (=> b!384233 (= e!233298 e!233296)))

(declare-fun res!219051 () Bool)

(assert (=> b!384233 (=> (not res!219051) (not e!233296))))

(declare-fun lt!180843 () array!22627)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22627 (_ BitVec 32)) Bool)

(assert (=> b!384233 (= res!219051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180843 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!384233 (= lt!180843 (array!22628 (store (arr!10779 _keys!658) i!548 k0!778) (size!11131 _keys!658)))))

(declare-fun b!384234 () Bool)

(declare-fun res!219045 () Bool)

(assert (=> b!384234 (=> (not res!219045) (not e!233298))))

(assert (=> b!384234 (= res!219045 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11131 _keys!658))))))

(declare-fun b!384235 () Bool)

(declare-fun res!219044 () Bool)

(assert (=> b!384235 (=> (not res!219044) (not e!233298))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384235 (= res!219044 (validKeyInArray!0 k0!778))))

(declare-fun b!384236 () Bool)

(declare-fun res!219049 () Bool)

(assert (=> b!384236 (=> (not res!219049) (not e!233296))))

(declare-datatypes ((List!6186 0))(
  ( (Nil!6183) (Cons!6182 (h!7038 (_ BitVec 64)) (t!11344 List!6186)) )
))
(declare-fun arrayNoDuplicates!0 (array!22627 (_ BitVec 32) List!6186) Bool)

(assert (=> b!384236 (= res!219049 (arrayNoDuplicates!0 lt!180843 #b00000000000000000000000000000000 Nil!6183))))

(declare-fun b!384237 () Bool)

(declare-fun e!233293 () Bool)

(assert (=> b!384237 (= e!233296 (not e!233293))))

(declare-fun res!219052 () Bool)

(assert (=> b!384237 (=> res!219052 e!233293)))

(declare-fun lt!180846 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384237 (= res!219052 (or (and (not lt!180846) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180846) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180846)))))

(assert (=> b!384237 (= lt!180846 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13597)

(declare-datatypes ((tuple2!6320 0))(
  ( (tuple2!6321 (_1!3170 (_ BitVec 64)) (_2!3170 V!13597)) )
))
(declare-datatypes ((List!6187 0))(
  ( (Nil!6184) (Cons!6183 (h!7039 tuple2!6320) (t!11345 List!6187)) )
))
(declare-datatypes ((ListLongMap!5247 0))(
  ( (ListLongMap!5248 (toList!2639 List!6187)) )
))
(declare-fun lt!180839 () ListLongMap!5247)

(declare-fun minValue!472 () V!13597)

(declare-fun getCurrentListMap!2055 (array!22627 array!22625 (_ BitVec 32) (_ BitVec 32) V!13597 V!13597 (_ BitVec 32) Int) ListLongMap!5247)

(assert (=> b!384237 (= lt!180839 (getCurrentListMap!2055 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180844 () ListLongMap!5247)

(declare-fun lt!180841 () array!22625)

(assert (=> b!384237 (= lt!180844 (getCurrentListMap!2055 lt!180843 lt!180841 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180838 () ListLongMap!5247)

(declare-fun lt!180837 () ListLongMap!5247)

(assert (=> b!384237 (and (= lt!180838 lt!180837) (= lt!180837 lt!180838))))

(declare-fun lt!180845 () ListLongMap!5247)

(declare-fun lt!180842 () tuple2!6320)

(declare-fun +!975 (ListLongMap!5247 tuple2!6320) ListLongMap!5247)

(assert (=> b!384237 (= lt!180837 (+!975 lt!180845 lt!180842))))

(declare-fun v!373 () V!13597)

(assert (=> b!384237 (= lt!180842 (tuple2!6321 k0!778 v!373))))

(declare-datatypes ((Unit!11839 0))(
  ( (Unit!11840) )
))
(declare-fun lt!180840 () Unit!11839)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!206 (array!22627 array!22625 (_ BitVec 32) (_ BitVec 32) V!13597 V!13597 (_ BitVec 32) (_ BitVec 64) V!13597 (_ BitVec 32) Int) Unit!11839)

(assert (=> b!384237 (= lt!180840 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!206 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!873 (array!22627 array!22625 (_ BitVec 32) (_ BitVec 32) V!13597 V!13597 (_ BitVec 32) Int) ListLongMap!5247)

(assert (=> b!384237 (= lt!180838 (getCurrentListMapNoExtraKeys!873 lt!180843 lt!180841 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384237 (= lt!180841 (array!22626 (store (arr!10778 _values!506) i!548 (ValueCellFull!4341 v!373)) (size!11130 _values!506)))))

(assert (=> b!384237 (= lt!180845 (getCurrentListMapNoExtraKeys!873 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384238 () Bool)

(declare-fun res!219048 () Bool)

(assert (=> b!384238 (=> (not res!219048) (not e!233298))))

(declare-fun arrayContainsKey!0 (array!22627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384238 (= res!219048 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!384239 () Bool)

(assert (=> b!384239 (= e!233293 true)))

(declare-fun lt!180847 () ListLongMap!5247)

(assert (=> b!384239 (= lt!180847 (+!975 lt!180839 lt!180842))))

(assert (=> b!384239 (= lt!180844 lt!180838)))

(declare-fun b!384240 () Bool)

(declare-fun e!233294 () Bool)

(assert (=> b!384240 (= e!233294 tp_is_empty!9369)))

(declare-fun mapIsEmpty!15618 () Bool)

(declare-fun mapRes!15618 () Bool)

(assert (=> mapIsEmpty!15618 mapRes!15618))

(declare-fun b!384241 () Bool)

(assert (=> b!384241 (= e!233292 (and e!233294 mapRes!15618))))

(declare-fun condMapEmpty!15618 () Bool)

(declare-fun mapDefault!15618 () ValueCell!4341)

(assert (=> b!384241 (= condMapEmpty!15618 (= (arr!10778 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4341)) mapDefault!15618)))))

(declare-fun b!384242 () Bool)

(declare-fun e!233297 () Bool)

(assert (=> b!384242 (= e!233297 tp_is_empty!9369)))

(declare-fun b!384243 () Bool)

(declare-fun res!219046 () Bool)

(assert (=> b!384243 (=> (not res!219046) (not e!233298))))

(assert (=> b!384243 (= res!219046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384244 () Bool)

(declare-fun res!219053 () Bool)

(assert (=> b!384244 (=> (not res!219053) (not e!233298))))

(assert (=> b!384244 (= res!219053 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6183))))

(declare-fun b!384245 () Bool)

(declare-fun res!219050 () Bool)

(assert (=> b!384245 (=> (not res!219050) (not e!233298))))

(assert (=> b!384245 (= res!219050 (and (= (size!11130 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11131 _keys!658) (size!11130 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15618 () Bool)

(declare-fun tp!30879 () Bool)

(assert (=> mapNonEmpty!15618 (= mapRes!15618 (and tp!30879 e!233297))))

(declare-fun mapValue!15618 () ValueCell!4341)

(declare-fun mapKey!15618 () (_ BitVec 32))

(declare-fun mapRest!15618 () (Array (_ BitVec 32) ValueCell!4341))

(assert (=> mapNonEmpty!15618 (= (arr!10778 _values!506) (store mapRest!15618 mapKey!15618 mapValue!15618))))

(assert (= (and start!37602 res!219043) b!384245))

(assert (= (and b!384245 res!219050) b!384243))

(assert (= (and b!384243 res!219046) b!384244))

(assert (= (and b!384244 res!219053) b!384234))

(assert (= (and b!384234 res!219045) b!384235))

(assert (= (and b!384235 res!219044) b!384232))

(assert (= (and b!384232 res!219047) b!384238))

(assert (= (and b!384238 res!219048) b!384233))

(assert (= (and b!384233 res!219051) b!384236))

(assert (= (and b!384236 res!219049) b!384237))

(assert (= (and b!384237 (not res!219052)) b!384239))

(assert (= (and b!384241 condMapEmpty!15618) mapIsEmpty!15618))

(assert (= (and b!384241 (not condMapEmpty!15618)) mapNonEmpty!15618))

(get-info :version)

(assert (= (and mapNonEmpty!15618 ((_ is ValueCellFull!4341) mapValue!15618)) b!384242))

(assert (= (and b!384241 ((_ is ValueCellFull!4341) mapDefault!15618)) b!384240))

(assert (= start!37602 b!384241))

(declare-fun m!380961 () Bool)

(assert (=> b!384233 m!380961))

(declare-fun m!380963 () Bool)

(assert (=> b!384233 m!380963))

(declare-fun m!380965 () Bool)

(assert (=> start!37602 m!380965))

(declare-fun m!380967 () Bool)

(assert (=> start!37602 m!380967))

(declare-fun m!380969 () Bool)

(assert (=> start!37602 m!380969))

(declare-fun m!380971 () Bool)

(assert (=> b!384238 m!380971))

(declare-fun m!380973 () Bool)

(assert (=> b!384232 m!380973))

(declare-fun m!380975 () Bool)

(assert (=> mapNonEmpty!15618 m!380975))

(declare-fun m!380977 () Bool)

(assert (=> b!384236 m!380977))

(declare-fun m!380979 () Bool)

(assert (=> b!384235 m!380979))

(declare-fun m!380981 () Bool)

(assert (=> b!384237 m!380981))

(declare-fun m!380983 () Bool)

(assert (=> b!384237 m!380983))

(declare-fun m!380985 () Bool)

(assert (=> b!384237 m!380985))

(declare-fun m!380987 () Bool)

(assert (=> b!384237 m!380987))

(declare-fun m!380989 () Bool)

(assert (=> b!384237 m!380989))

(declare-fun m!380991 () Bool)

(assert (=> b!384237 m!380991))

(declare-fun m!380993 () Bool)

(assert (=> b!384237 m!380993))

(declare-fun m!380995 () Bool)

(assert (=> b!384243 m!380995))

(declare-fun m!380997 () Bool)

(assert (=> b!384244 m!380997))

(declare-fun m!380999 () Bool)

(assert (=> b!384239 m!380999))

(check-sat (not b!384239) (not b!384243) (not b!384233) (not b!384237) (not b!384238) tp_is_empty!9369 (not b_next!8721) (not b!384236) b_and!15981 (not start!37602) (not b!384235) (not mapNonEmpty!15618) (not b!384244))
(check-sat b_and!15981 (not b_next!8721))
