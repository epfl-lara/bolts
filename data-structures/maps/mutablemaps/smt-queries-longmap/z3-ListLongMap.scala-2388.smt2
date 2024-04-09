; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37800 () Bool)

(assert start!37800)

(declare-fun b_free!8895 () Bool)

(declare-fun b_next!8895 () Bool)

(assert (=> start!37800 (= b_free!8895 (not b_next!8895))))

(declare-fun tp!31436 () Bool)

(declare-fun b_and!16155 () Bool)

(assert (=> start!37800 (= tp!31436 b_and!16155)))

(declare-fun b!387962 () Bool)

(declare-fun e!235115 () Bool)

(declare-fun tp_is_empty!9567 () Bool)

(assert (=> b!387962 (= e!235115 tp_is_empty!9567)))

(declare-fun b!387963 () Bool)

(declare-fun e!235118 () Bool)

(assert (=> b!387963 (= e!235118 tp_is_empty!9567)))

(declare-fun b!387964 () Bool)

(declare-fun res!221890 () Bool)

(declare-fun e!235116 () Bool)

(assert (=> b!387964 (=> (not res!221890) (not e!235116))))

(declare-datatypes ((array!23003 0))(
  ( (array!23004 (arr!10967 (Array (_ BitVec 32) (_ BitVec 64))) (size!11319 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23003)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23003 (_ BitVec 32)) Bool)

(assert (=> b!387964 (= res!221890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387965 () Bool)

(declare-fun e!235114 () Bool)

(declare-fun mapRes!15915 () Bool)

(assert (=> b!387965 (= e!235114 (and e!235118 mapRes!15915))))

(declare-fun condMapEmpty!15915 () Bool)

(declare-datatypes ((V!13861 0))(
  ( (V!13862 (val!4828 Int)) )
))
(declare-datatypes ((ValueCell!4440 0))(
  ( (ValueCellFull!4440 (v!7021 V!13861)) (EmptyCell!4440) )
))
(declare-datatypes ((array!23005 0))(
  ( (array!23006 (arr!10968 (Array (_ BitVec 32) ValueCell!4440)) (size!11320 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23005)

(declare-fun mapDefault!15915 () ValueCell!4440)

(assert (=> b!387965 (= condMapEmpty!15915 (= (arr!10968 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4440)) mapDefault!15915)))))

(declare-fun mapNonEmpty!15915 () Bool)

(declare-fun tp!31437 () Bool)

(assert (=> mapNonEmpty!15915 (= mapRes!15915 (and tp!31437 e!235115))))

(declare-fun mapRest!15915 () (Array (_ BitVec 32) ValueCell!4440))

(declare-fun mapKey!15915 () (_ BitVec 32))

(declare-fun mapValue!15915 () ValueCell!4440)

(assert (=> mapNonEmpty!15915 (= (arr!10968 _values!506) (store mapRest!15915 mapKey!15915 mapValue!15915))))

(declare-fun b!387966 () Bool)

(declare-fun res!221883 () Bool)

(assert (=> b!387966 (=> (not res!221883) (not e!235116))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!387966 (= res!221883 (and (= (size!11320 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11319 _keys!658) (size!11320 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387967 () Bool)

(declare-fun res!221884 () Bool)

(declare-fun e!235119 () Bool)

(assert (=> b!387967 (=> (not res!221884) (not e!235119))))

(declare-fun lt!182196 () array!23003)

(declare-datatypes ((List!6315 0))(
  ( (Nil!6312) (Cons!6311 (h!7167 (_ BitVec 64)) (t!11473 List!6315)) )
))
(declare-fun arrayNoDuplicates!0 (array!23003 (_ BitVec 32) List!6315) Bool)

(assert (=> b!387967 (= res!221884 (arrayNoDuplicates!0 lt!182196 #b00000000000000000000000000000000 Nil!6312))))

(declare-fun b!387968 () Bool)

(declare-fun res!221889 () Bool)

(assert (=> b!387968 (=> (not res!221889) (not e!235116))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387968 (= res!221889 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!387969 () Bool)

(declare-fun res!221891 () Bool)

(assert (=> b!387969 (=> (not res!221891) (not e!235116))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387969 (= res!221891 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11319 _keys!658))))))

(declare-fun b!387970 () Bool)

(declare-fun res!221882 () Bool)

(assert (=> b!387970 (=> (not res!221882) (not e!235116))))

(assert (=> b!387970 (= res!221882 (or (= (select (arr!10967 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10967 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387971 () Bool)

(declare-fun res!221888 () Bool)

(assert (=> b!387971 (=> (not res!221888) (not e!235116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387971 (= res!221888 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!15915 () Bool)

(assert (=> mapIsEmpty!15915 mapRes!15915))

(declare-fun b!387973 () Bool)

(declare-fun res!221887 () Bool)

(assert (=> b!387973 (=> (not res!221887) (not e!235116))))

(assert (=> b!387973 (= res!221887 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6312))))

(declare-fun b!387974 () Bool)

(assert (=> b!387974 (= e!235119 (not true))))

(declare-datatypes ((tuple2!6430 0))(
  ( (tuple2!6431 (_1!3225 (_ BitVec 64)) (_2!3225 V!13861)) )
))
(declare-datatypes ((List!6316 0))(
  ( (Nil!6313) (Cons!6312 (h!7168 tuple2!6430) (t!11474 List!6316)) )
))
(declare-datatypes ((ListLongMap!5357 0))(
  ( (ListLongMap!5358 (toList!2694 List!6316)) )
))
(declare-fun lt!182193 () ListLongMap!5357)

(declare-fun lt!182197 () ListLongMap!5357)

(assert (=> b!387974 (and (= lt!182193 lt!182197) (= lt!182197 lt!182193))))

(declare-fun v!373 () V!13861)

(declare-fun lt!182194 () ListLongMap!5357)

(declare-fun +!992 (ListLongMap!5357 tuple2!6430) ListLongMap!5357)

(assert (=> b!387974 (= lt!182197 (+!992 lt!182194 (tuple2!6431 k0!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13861)

(declare-datatypes ((Unit!11873 0))(
  ( (Unit!11874) )
))
(declare-fun lt!182195 () Unit!11873)

(declare-fun minValue!472 () V!13861)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!223 (array!23003 array!23005 (_ BitVec 32) (_ BitVec 32) V!13861 V!13861 (_ BitVec 32) (_ BitVec 64) V!13861 (_ BitVec 32) Int) Unit!11873)

(assert (=> b!387974 (= lt!182195 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!223 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!928 (array!23003 array!23005 (_ BitVec 32) (_ BitVec 32) V!13861 V!13861 (_ BitVec 32) Int) ListLongMap!5357)

(assert (=> b!387974 (= lt!182193 (getCurrentListMapNoExtraKeys!928 lt!182196 (array!23006 (store (arr!10968 _values!506) i!548 (ValueCellFull!4440 v!373)) (size!11320 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!387974 (= lt!182194 (getCurrentListMapNoExtraKeys!928 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387972 () Bool)

(assert (=> b!387972 (= e!235116 e!235119)))

(declare-fun res!221885 () Bool)

(assert (=> b!387972 (=> (not res!221885) (not e!235119))))

(assert (=> b!387972 (= res!221885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182196 mask!970))))

(assert (=> b!387972 (= lt!182196 (array!23004 (store (arr!10967 _keys!658) i!548 k0!778) (size!11319 _keys!658)))))

(declare-fun res!221886 () Bool)

(assert (=> start!37800 (=> (not res!221886) (not e!235116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37800 (= res!221886 (validMask!0 mask!970))))

(assert (=> start!37800 e!235116))

(declare-fun array_inv!8038 (array!23005) Bool)

(assert (=> start!37800 (and (array_inv!8038 _values!506) e!235114)))

(assert (=> start!37800 tp!31436))

(assert (=> start!37800 true))

(assert (=> start!37800 tp_is_empty!9567))

(declare-fun array_inv!8039 (array!23003) Bool)

(assert (=> start!37800 (array_inv!8039 _keys!658)))

(assert (= (and start!37800 res!221886) b!387966))

(assert (= (and b!387966 res!221883) b!387964))

(assert (= (and b!387964 res!221890) b!387973))

(assert (= (and b!387973 res!221887) b!387969))

(assert (= (and b!387969 res!221891) b!387971))

(assert (= (and b!387971 res!221888) b!387970))

(assert (= (and b!387970 res!221882) b!387968))

(assert (= (and b!387968 res!221889) b!387972))

(assert (= (and b!387972 res!221885) b!387967))

(assert (= (and b!387967 res!221884) b!387974))

(assert (= (and b!387965 condMapEmpty!15915) mapIsEmpty!15915))

(assert (= (and b!387965 (not condMapEmpty!15915)) mapNonEmpty!15915))

(get-info :version)

(assert (= (and mapNonEmpty!15915 ((_ is ValueCellFull!4440) mapValue!15915)) b!387962))

(assert (= (and b!387965 ((_ is ValueCellFull!4440) mapDefault!15915)) b!387963))

(assert (= start!37800 b!387965))

(declare-fun m!383967 () Bool)

(assert (=> b!387974 m!383967))

(declare-fun m!383969 () Bool)

(assert (=> b!387974 m!383969))

(declare-fun m!383971 () Bool)

(assert (=> b!387974 m!383971))

(declare-fun m!383973 () Bool)

(assert (=> b!387974 m!383973))

(declare-fun m!383975 () Bool)

(assert (=> b!387974 m!383975))

(declare-fun m!383977 () Bool)

(assert (=> mapNonEmpty!15915 m!383977))

(declare-fun m!383979 () Bool)

(assert (=> b!387964 m!383979))

(declare-fun m!383981 () Bool)

(assert (=> start!37800 m!383981))

(declare-fun m!383983 () Bool)

(assert (=> start!37800 m!383983))

(declare-fun m!383985 () Bool)

(assert (=> start!37800 m!383985))

(declare-fun m!383987 () Bool)

(assert (=> b!387971 m!383987))

(declare-fun m!383989 () Bool)

(assert (=> b!387968 m!383989))

(declare-fun m!383991 () Bool)

(assert (=> b!387973 m!383991))

(declare-fun m!383993 () Bool)

(assert (=> b!387972 m!383993))

(declare-fun m!383995 () Bool)

(assert (=> b!387972 m!383995))

(declare-fun m!383997 () Bool)

(assert (=> b!387970 m!383997))

(declare-fun m!383999 () Bool)

(assert (=> b!387967 m!383999))

(check-sat (not start!37800) (not b!387973) (not b!387967) b_and!16155 tp_is_empty!9567 (not b!387968) (not b!387964) (not b_next!8895) (not b!387974) (not b!387972) (not mapNonEmpty!15915) (not b!387971))
(check-sat b_and!16155 (not b_next!8895))
