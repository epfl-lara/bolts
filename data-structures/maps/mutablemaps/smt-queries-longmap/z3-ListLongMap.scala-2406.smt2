; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38086 () Bool)

(assert start!38086)

(declare-fun b_free!9003 () Bool)

(declare-fun b_next!9003 () Bool)

(assert (=> start!38086 (= b_free!9003 (not b_next!9003))))

(declare-fun tp!31785 () Bool)

(declare-fun b_and!16359 () Bool)

(assert (=> start!38086 (= tp!31785 b_and!16359)))

(declare-fun b!391969 () Bool)

(declare-fun e!237385 () Bool)

(declare-fun e!237387 () Bool)

(declare-fun mapRes!16101 () Bool)

(assert (=> b!391969 (= e!237385 (and e!237387 mapRes!16101))))

(declare-fun condMapEmpty!16101 () Bool)

(declare-datatypes ((V!14005 0))(
  ( (V!14006 (val!4882 Int)) )
))
(declare-datatypes ((ValueCell!4494 0))(
  ( (ValueCellFull!4494 (v!7107 V!14005)) (EmptyCell!4494) )
))
(declare-datatypes ((array!23227 0))(
  ( (array!23228 (arr!11071 (Array (_ BitVec 32) ValueCell!4494)) (size!11423 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23227)

(declare-fun mapDefault!16101 () ValueCell!4494)

(assert (=> b!391969 (= condMapEmpty!16101 (= (arr!11071 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4494)) mapDefault!16101)))))

(declare-datatypes ((tuple2!6514 0))(
  ( (tuple2!6515 (_1!3267 (_ BitVec 64)) (_2!3267 V!14005)) )
))
(declare-datatypes ((List!6398 0))(
  ( (Nil!6395) (Cons!6394 (h!7250 tuple2!6514) (t!11572 List!6398)) )
))
(declare-datatypes ((ListLongMap!5441 0))(
  ( (ListLongMap!5442 (toList!2736 List!6398)) )
))
(declare-fun lt!185227 () ListLongMap!5441)

(declare-fun e!237389 () Bool)

(declare-fun lt!185226 () tuple2!6514)

(declare-fun b!391970 () Bool)

(declare-fun lt!185220 () ListLongMap!5441)

(declare-fun +!1034 (ListLongMap!5441 tuple2!6514) ListLongMap!5441)

(assert (=> b!391970 (= e!237389 (= lt!185227 (+!1034 lt!185220 lt!185226)))))

(declare-fun lt!185225 () ListLongMap!5441)

(assert (=> b!391970 (= lt!185227 (+!1034 lt!185225 lt!185226))))

(declare-fun minValue!472 () V!14005)

(assert (=> b!391970 (= lt!185226 (tuple2!6515 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!391971 () Bool)

(declare-fun res!224514 () Bool)

(declare-fun e!237388 () Bool)

(assert (=> b!391971 (=> (not res!224514) (not e!237388))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!391971 (= res!224514 (validKeyInArray!0 k0!778))))

(declare-fun b!391973 () Bool)

(declare-fun res!224513 () Bool)

(assert (=> b!391973 (=> (not res!224513) (not e!237388))))

(declare-datatypes ((array!23229 0))(
  ( (array!23230 (arr!11072 (Array (_ BitVec 32) (_ BitVec 64))) (size!11424 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23229)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!391973 (= res!224513 (or (= (select (arr!11072 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11072 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!391974 () Bool)

(declare-fun res!224516 () Bool)

(assert (=> b!391974 (=> (not res!224516) (not e!237388))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23229 (_ BitVec 32)) Bool)

(assert (=> b!391974 (= res!224516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!391975 () Bool)

(declare-fun res!224509 () Bool)

(declare-fun e!237386 () Bool)

(assert (=> b!391975 (=> (not res!224509) (not e!237386))))

(declare-fun lt!185221 () array!23229)

(declare-datatypes ((List!6399 0))(
  ( (Nil!6396) (Cons!6395 (h!7251 (_ BitVec 64)) (t!11573 List!6399)) )
))
(declare-fun arrayNoDuplicates!0 (array!23229 (_ BitVec 32) List!6399) Bool)

(assert (=> b!391975 (= res!224509 (arrayNoDuplicates!0 lt!185221 #b00000000000000000000000000000000 Nil!6396))))

(declare-fun mapIsEmpty!16101 () Bool)

(assert (=> mapIsEmpty!16101 mapRes!16101))

(declare-fun b!391976 () Bool)

(assert (=> b!391976 (= e!237386 (not e!237389))))

(declare-fun res!224515 () Bool)

(assert (=> b!391976 (=> res!224515 e!237389)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!391976 (= res!224515 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!185223 () ListLongMap!5441)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14005)

(declare-fun getCurrentListMap!2101 (array!23229 array!23227 (_ BitVec 32) (_ BitVec 32) V!14005 V!14005 (_ BitVec 32) Int) ListLongMap!5441)

(assert (=> b!391976 (= lt!185223 (getCurrentListMap!2101 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185222 () array!23227)

(assert (=> b!391976 (= lt!185227 (getCurrentListMap!2101 lt!185221 lt!185222 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!391976 (and (= lt!185225 lt!185220) (= lt!185220 lt!185225))))

(declare-fun lt!185224 () ListLongMap!5441)

(declare-fun v!373 () V!14005)

(assert (=> b!391976 (= lt!185220 (+!1034 lt!185224 (tuple2!6515 k0!778 v!373)))))

(declare-datatypes ((Unit!11961 0))(
  ( (Unit!11962) )
))
(declare-fun lt!185219 () Unit!11961)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!258 (array!23229 array!23227 (_ BitVec 32) (_ BitVec 32) V!14005 V!14005 (_ BitVec 32) (_ BitVec 64) V!14005 (_ BitVec 32) Int) Unit!11961)

(assert (=> b!391976 (= lt!185219 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!258 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!963 (array!23229 array!23227 (_ BitVec 32) (_ BitVec 32) V!14005 V!14005 (_ BitVec 32) Int) ListLongMap!5441)

(assert (=> b!391976 (= lt!185225 (getCurrentListMapNoExtraKeys!963 lt!185221 lt!185222 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!391976 (= lt!185222 (array!23228 (store (arr!11071 _values!506) i!548 (ValueCellFull!4494 v!373)) (size!11423 _values!506)))))

(assert (=> b!391976 (= lt!185224 (getCurrentListMapNoExtraKeys!963 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391977 () Bool)

(declare-fun res!224510 () Bool)

(assert (=> b!391977 (=> (not res!224510) (not e!237388))))

(assert (=> b!391977 (= res!224510 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11424 _keys!658))))))

(declare-fun b!391972 () Bool)

(declare-fun res!224508 () Bool)

(assert (=> b!391972 (=> (not res!224508) (not e!237388))))

(assert (=> b!391972 (= res!224508 (and (= (size!11423 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11424 _keys!658) (size!11423 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!224511 () Bool)

(assert (=> start!38086 (=> (not res!224511) (not e!237388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38086 (= res!224511 (validMask!0 mask!970))))

(assert (=> start!38086 e!237388))

(declare-fun array_inv!8116 (array!23227) Bool)

(assert (=> start!38086 (and (array_inv!8116 _values!506) e!237385)))

(assert (=> start!38086 tp!31785))

(assert (=> start!38086 true))

(declare-fun tp_is_empty!9675 () Bool)

(assert (=> start!38086 tp_is_empty!9675))

(declare-fun array_inv!8117 (array!23229) Bool)

(assert (=> start!38086 (array_inv!8117 _keys!658)))

(declare-fun b!391978 () Bool)

(declare-fun e!237383 () Bool)

(assert (=> b!391978 (= e!237383 tp_is_empty!9675)))

(declare-fun mapNonEmpty!16101 () Bool)

(declare-fun tp!31784 () Bool)

(assert (=> mapNonEmpty!16101 (= mapRes!16101 (and tp!31784 e!237383))))

(declare-fun mapKey!16101 () (_ BitVec 32))

(declare-fun mapValue!16101 () ValueCell!4494)

(declare-fun mapRest!16101 () (Array (_ BitVec 32) ValueCell!4494))

(assert (=> mapNonEmpty!16101 (= (arr!11071 _values!506) (store mapRest!16101 mapKey!16101 mapValue!16101))))

(declare-fun b!391979 () Bool)

(declare-fun res!224512 () Bool)

(assert (=> b!391979 (=> (not res!224512) (not e!237388))))

(declare-fun arrayContainsKey!0 (array!23229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!391979 (= res!224512 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!391980 () Bool)

(assert (=> b!391980 (= e!237388 e!237386)))

(declare-fun res!224507 () Bool)

(assert (=> b!391980 (=> (not res!224507) (not e!237386))))

(assert (=> b!391980 (= res!224507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185221 mask!970))))

(assert (=> b!391980 (= lt!185221 (array!23230 (store (arr!11072 _keys!658) i!548 k0!778) (size!11424 _keys!658)))))

(declare-fun b!391981 () Bool)

(declare-fun res!224517 () Bool)

(assert (=> b!391981 (=> (not res!224517) (not e!237388))))

(assert (=> b!391981 (= res!224517 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6396))))

(declare-fun b!391982 () Bool)

(assert (=> b!391982 (= e!237387 tp_is_empty!9675)))

(assert (= (and start!38086 res!224511) b!391972))

(assert (= (and b!391972 res!224508) b!391974))

(assert (= (and b!391974 res!224516) b!391981))

(assert (= (and b!391981 res!224517) b!391977))

(assert (= (and b!391977 res!224510) b!391971))

(assert (= (and b!391971 res!224514) b!391973))

(assert (= (and b!391973 res!224513) b!391979))

(assert (= (and b!391979 res!224512) b!391980))

(assert (= (and b!391980 res!224507) b!391975))

(assert (= (and b!391975 res!224509) b!391976))

(assert (= (and b!391976 (not res!224515)) b!391970))

(assert (= (and b!391969 condMapEmpty!16101) mapIsEmpty!16101))

(assert (= (and b!391969 (not condMapEmpty!16101)) mapNonEmpty!16101))

(get-info :version)

(assert (= (and mapNonEmpty!16101 ((_ is ValueCellFull!4494) mapValue!16101)) b!391978))

(assert (= (and b!391969 ((_ is ValueCellFull!4494) mapDefault!16101)) b!391982))

(assert (= start!38086 b!391969))

(declare-fun m!388409 () Bool)

(assert (=> b!391975 m!388409))

(declare-fun m!388411 () Bool)

(assert (=> b!391970 m!388411))

(declare-fun m!388413 () Bool)

(assert (=> b!391970 m!388413))

(declare-fun m!388415 () Bool)

(assert (=> b!391971 m!388415))

(declare-fun m!388417 () Bool)

(assert (=> b!391979 m!388417))

(declare-fun m!388419 () Bool)

(assert (=> b!391980 m!388419))

(declare-fun m!388421 () Bool)

(assert (=> b!391980 m!388421))

(declare-fun m!388423 () Bool)

(assert (=> b!391973 m!388423))

(declare-fun m!388425 () Bool)

(assert (=> start!38086 m!388425))

(declare-fun m!388427 () Bool)

(assert (=> start!38086 m!388427))

(declare-fun m!388429 () Bool)

(assert (=> start!38086 m!388429))

(declare-fun m!388431 () Bool)

(assert (=> b!391976 m!388431))

(declare-fun m!388433 () Bool)

(assert (=> b!391976 m!388433))

(declare-fun m!388435 () Bool)

(assert (=> b!391976 m!388435))

(declare-fun m!388437 () Bool)

(assert (=> b!391976 m!388437))

(declare-fun m!388439 () Bool)

(assert (=> b!391976 m!388439))

(declare-fun m!388441 () Bool)

(assert (=> b!391976 m!388441))

(declare-fun m!388443 () Bool)

(assert (=> b!391976 m!388443))

(declare-fun m!388445 () Bool)

(assert (=> mapNonEmpty!16101 m!388445))

(declare-fun m!388447 () Bool)

(assert (=> b!391974 m!388447))

(declare-fun m!388449 () Bool)

(assert (=> b!391981 m!388449))

(check-sat (not b!391970) (not mapNonEmpty!16101) b_and!16359 (not b!391980) (not b!391981) (not b!391971) (not b!391974) tp_is_empty!9675 (not b_next!9003) (not b!391979) (not start!38086) (not b!391976) (not b!391975))
(check-sat b_and!16359 (not b_next!9003))
