; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37698 () Bool)

(assert start!37698)

(declare-fun b_free!8793 () Bool)

(declare-fun b_next!8793 () Bool)

(assert (=> start!37698 (= b_free!8793 (not b_next!8793))))

(declare-fun tp!31130 () Bool)

(declare-fun b_and!16053 () Bool)

(assert (=> start!37698 (= tp!31130 b_and!16053)))

(declare-fun mapIsEmpty!15762 () Bool)

(declare-fun mapRes!15762 () Bool)

(assert (=> mapIsEmpty!15762 mapRes!15762))

(declare-fun b!385973 () Bool)

(declare-fun res!220355 () Bool)

(declare-fun e!234197 () Bool)

(assert (=> b!385973 (=> (not res!220355) (not e!234197))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385973 (= res!220355 (validKeyInArray!0 k0!778))))

(declare-fun b!385974 () Bool)

(declare-fun e!234199 () Bool)

(assert (=> b!385974 (= e!234199 false)))

(declare-datatypes ((V!13725 0))(
  ( (V!13726 (val!4777 Int)) )
))
(declare-datatypes ((ValueCell!4389 0))(
  ( (ValueCellFull!4389 (v!6970 V!13725)) (EmptyCell!4389) )
))
(declare-datatypes ((array!22805 0))(
  ( (array!22806 (arr!10868 (Array (_ BitVec 32) ValueCell!4389)) (size!11220 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22805)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((array!22807 0))(
  ( (array!22808 (arr!10869 (Array (_ BitVec 32) (_ BitVec 64))) (size!11221 (_ BitVec 32))) )
))
(declare-fun lt!181708 () array!22807)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13725)

(declare-datatypes ((tuple2!6370 0))(
  ( (tuple2!6371 (_1!3195 (_ BitVec 64)) (_2!3195 V!13725)) )
))
(declare-datatypes ((List!6247 0))(
  ( (Nil!6244) (Cons!6243 (h!7099 tuple2!6370) (t!11405 List!6247)) )
))
(declare-datatypes ((ListLongMap!5297 0))(
  ( (ListLongMap!5298 (toList!2664 List!6247)) )
))
(declare-fun lt!181706 () ListLongMap!5297)

(declare-fun zeroValue!472 () V!13725)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13725)

(declare-fun getCurrentListMapNoExtraKeys!898 (array!22807 array!22805 (_ BitVec 32) (_ BitVec 32) V!13725 V!13725 (_ BitVec 32) Int) ListLongMap!5297)

(assert (=> b!385974 (= lt!181706 (getCurrentListMapNoExtraKeys!898 lt!181708 (array!22806 (store (arr!10868 _values!506) i!548 (ValueCellFull!4389 v!373)) (size!11220 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181707 () ListLongMap!5297)

(declare-fun _keys!658 () array!22807)

(assert (=> b!385974 (= lt!181707 (getCurrentListMapNoExtraKeys!898 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!385975 () Bool)

(declare-fun res!220356 () Bool)

(assert (=> b!385975 (=> (not res!220356) (not e!234197))))

(assert (=> b!385975 (= res!220356 (and (= (size!11220 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11221 _keys!658) (size!11220 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385976 () Bool)

(assert (=> b!385976 (= e!234197 e!234199)))

(declare-fun res!220357 () Bool)

(assert (=> b!385976 (=> (not res!220357) (not e!234199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22807 (_ BitVec 32)) Bool)

(assert (=> b!385976 (= res!220357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181708 mask!970))))

(assert (=> b!385976 (= lt!181708 (array!22808 (store (arr!10869 _keys!658) i!548 k0!778) (size!11221 _keys!658)))))

(declare-fun b!385978 () Bool)

(declare-fun e!234200 () Bool)

(declare-fun tp_is_empty!9465 () Bool)

(assert (=> b!385978 (= e!234200 tp_is_empty!9465)))

(declare-fun mapNonEmpty!15762 () Bool)

(declare-fun tp!31131 () Bool)

(declare-fun e!234201 () Bool)

(assert (=> mapNonEmpty!15762 (= mapRes!15762 (and tp!31131 e!234201))))

(declare-fun mapKey!15762 () (_ BitVec 32))

(declare-fun mapValue!15762 () ValueCell!4389)

(declare-fun mapRest!15762 () (Array (_ BitVec 32) ValueCell!4389))

(assert (=> mapNonEmpty!15762 (= (arr!10868 _values!506) (store mapRest!15762 mapKey!15762 mapValue!15762))))

(declare-fun b!385979 () Bool)

(declare-fun res!220353 () Bool)

(assert (=> b!385979 (=> (not res!220353) (not e!234197))))

(assert (=> b!385979 (= res!220353 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11221 _keys!658))))))

(declare-fun b!385980 () Bool)

(declare-fun res!220361 () Bool)

(assert (=> b!385980 (=> (not res!220361) (not e!234197))))

(assert (=> b!385980 (= res!220361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385981 () Bool)

(declare-fun e!234196 () Bool)

(assert (=> b!385981 (= e!234196 (and e!234200 mapRes!15762))))

(declare-fun condMapEmpty!15762 () Bool)

(declare-fun mapDefault!15762 () ValueCell!4389)

(assert (=> b!385981 (= condMapEmpty!15762 (= (arr!10868 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4389)) mapDefault!15762)))))

(declare-fun b!385982 () Bool)

(declare-fun res!220359 () Bool)

(assert (=> b!385982 (=> (not res!220359) (not e!234197))))

(declare-fun arrayContainsKey!0 (array!22807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385982 (= res!220359 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!385983 () Bool)

(assert (=> b!385983 (= e!234201 tp_is_empty!9465)))

(declare-fun b!385984 () Bool)

(declare-fun res!220358 () Bool)

(assert (=> b!385984 (=> (not res!220358) (not e!234199))))

(declare-datatypes ((List!6248 0))(
  ( (Nil!6245) (Cons!6244 (h!7100 (_ BitVec 64)) (t!11406 List!6248)) )
))
(declare-fun arrayNoDuplicates!0 (array!22807 (_ BitVec 32) List!6248) Bool)

(assert (=> b!385984 (= res!220358 (arrayNoDuplicates!0 lt!181708 #b00000000000000000000000000000000 Nil!6245))))

(declare-fun b!385985 () Bool)

(declare-fun res!220354 () Bool)

(assert (=> b!385985 (=> (not res!220354) (not e!234197))))

(assert (=> b!385985 (= res!220354 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6245))))

(declare-fun res!220352 () Bool)

(assert (=> start!37698 (=> (not res!220352) (not e!234197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37698 (= res!220352 (validMask!0 mask!970))))

(assert (=> start!37698 e!234197))

(declare-fun array_inv!7974 (array!22805) Bool)

(assert (=> start!37698 (and (array_inv!7974 _values!506) e!234196)))

(assert (=> start!37698 tp!31130))

(assert (=> start!37698 true))

(assert (=> start!37698 tp_is_empty!9465))

(declare-fun array_inv!7975 (array!22807) Bool)

(assert (=> start!37698 (array_inv!7975 _keys!658)))

(declare-fun b!385977 () Bool)

(declare-fun res!220360 () Bool)

(assert (=> b!385977 (=> (not res!220360) (not e!234197))))

(assert (=> b!385977 (= res!220360 (or (= (select (arr!10869 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10869 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!37698 res!220352) b!385975))

(assert (= (and b!385975 res!220356) b!385980))

(assert (= (and b!385980 res!220361) b!385985))

(assert (= (and b!385985 res!220354) b!385979))

(assert (= (and b!385979 res!220353) b!385973))

(assert (= (and b!385973 res!220355) b!385977))

(assert (= (and b!385977 res!220360) b!385982))

(assert (= (and b!385982 res!220359) b!385976))

(assert (= (and b!385976 res!220357) b!385984))

(assert (= (and b!385984 res!220358) b!385974))

(assert (= (and b!385981 condMapEmpty!15762) mapIsEmpty!15762))

(assert (= (and b!385981 (not condMapEmpty!15762)) mapNonEmpty!15762))

(get-info :version)

(assert (= (and mapNonEmpty!15762 ((_ is ValueCellFull!4389) mapValue!15762)) b!385983))

(assert (= (and b!385981 ((_ is ValueCellFull!4389) mapDefault!15762)) b!385978))

(assert (= start!37698 b!385981))

(declare-fun m!382421 () Bool)

(assert (=> b!385980 m!382421))

(declare-fun m!382423 () Bool)

(assert (=> b!385985 m!382423))

(declare-fun m!382425 () Bool)

(assert (=> b!385976 m!382425))

(declare-fun m!382427 () Bool)

(assert (=> b!385976 m!382427))

(declare-fun m!382429 () Bool)

(assert (=> b!385977 m!382429))

(declare-fun m!382431 () Bool)

(assert (=> b!385974 m!382431))

(declare-fun m!382433 () Bool)

(assert (=> b!385974 m!382433))

(declare-fun m!382435 () Bool)

(assert (=> b!385974 m!382435))

(declare-fun m!382437 () Bool)

(assert (=> b!385984 m!382437))

(declare-fun m!382439 () Bool)

(assert (=> b!385982 m!382439))

(declare-fun m!382441 () Bool)

(assert (=> mapNonEmpty!15762 m!382441))

(declare-fun m!382443 () Bool)

(assert (=> start!37698 m!382443))

(declare-fun m!382445 () Bool)

(assert (=> start!37698 m!382445))

(declare-fun m!382447 () Bool)

(assert (=> start!37698 m!382447))

(declare-fun m!382449 () Bool)

(assert (=> b!385973 m!382449))

(check-sat (not b!385974) tp_is_empty!9465 (not b_next!8793) (not b!385985) (not b!385973) b_and!16053 (not b!385984) (not b!385976) (not b!385980) (not start!37698) (not b!385982) (not mapNonEmpty!15762))
(check-sat b_and!16053 (not b_next!8793))
