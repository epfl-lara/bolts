; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37062 () Bool)

(assert start!37062)

(declare-fun b_free!8181 () Bool)

(declare-fun b_next!8181 () Bool)

(assert (=> start!37062 (= b_free!8181 (not b_next!8181))))

(declare-fun tp!29259 () Bool)

(declare-fun b_and!15441 () Bool)

(assert (=> start!37062 (= tp!29259 b_and!15441)))

(declare-fun mapNonEmpty!14808 () Bool)

(declare-fun mapRes!14808 () Bool)

(declare-fun tp!29258 () Bool)

(declare-fun e!227131 () Bool)

(assert (=> mapNonEmpty!14808 (= mapRes!14808 (and tp!29258 e!227131))))

(declare-datatypes ((V!12877 0))(
  ( (V!12878 (val!4459 Int)) )
))
(declare-datatypes ((ValueCell!4071 0))(
  ( (ValueCellFull!4071 (v!6652 V!12877)) (EmptyCell!4071) )
))
(declare-fun mapRest!14808 () (Array (_ BitVec 32) ValueCell!4071))

(declare-datatypes ((array!21567 0))(
  ( (array!21568 (arr!10249 (Array (_ BitVec 32) ValueCell!4071)) (size!10601 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21567)

(declare-fun mapKey!14808 () (_ BitVec 32))

(declare-fun mapValue!14808 () ValueCell!4071)

(assert (=> mapNonEmpty!14808 (= (arr!10249 _values!506) (store mapRest!14808 mapKey!14808 mapValue!14808))))

(declare-fun b!372374 () Bool)

(declare-fun res!209617 () Bool)

(declare-fun e!227136 () Bool)

(assert (=> b!372374 (=> (not res!209617) (not e!227136))))

(declare-datatypes ((array!21569 0))(
  ( (array!21570 (arr!10250 (Array (_ BitVec 32) (_ BitVec 64))) (size!10602 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21569)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21569 (_ BitVec 32)) Bool)

(assert (=> b!372374 (= res!209617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372375 () Bool)

(declare-fun res!209620 () Bool)

(assert (=> b!372375 (=> (not res!209620) (not e!227136))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372375 (= res!209620 (validKeyInArray!0 k0!778))))

(declare-fun b!372376 () Bool)

(declare-fun res!209623 () Bool)

(assert (=> b!372376 (=> (not res!209623) (not e!227136))))

(declare-fun arrayContainsKey!0 (array!21569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372376 (= res!209623 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!372377 () Bool)

(declare-fun res!209619 () Bool)

(declare-fun e!227135 () Bool)

(assert (=> b!372377 (=> (not res!209619) (not e!227135))))

(declare-fun lt!170785 () array!21569)

(declare-datatypes ((List!5767 0))(
  ( (Nil!5764) (Cons!5763 (h!6619 (_ BitVec 64)) (t!10925 List!5767)) )
))
(declare-fun arrayNoDuplicates!0 (array!21569 (_ BitVec 32) List!5767) Bool)

(assert (=> b!372377 (= res!209619 (arrayNoDuplicates!0 lt!170785 #b00000000000000000000000000000000 Nil!5764))))

(declare-fun res!209618 () Bool)

(assert (=> start!37062 (=> (not res!209618) (not e!227136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37062 (= res!209618 (validMask!0 mask!970))))

(assert (=> start!37062 e!227136))

(declare-fun e!227132 () Bool)

(declare-fun array_inv!7568 (array!21567) Bool)

(assert (=> start!37062 (and (array_inv!7568 _values!506) e!227132)))

(assert (=> start!37062 tp!29259))

(assert (=> start!37062 true))

(declare-fun tp_is_empty!8829 () Bool)

(assert (=> start!37062 tp_is_empty!8829))

(declare-fun array_inv!7569 (array!21569) Bool)

(assert (=> start!37062 (array_inv!7569 _keys!658)))

(declare-fun b!372378 () Bool)

(declare-fun res!209616 () Bool)

(assert (=> b!372378 (=> (not res!209616) (not e!227136))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372378 (= res!209616 (or (= (select (arr!10250 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10250 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372379 () Bool)

(declare-fun res!209624 () Bool)

(assert (=> b!372379 (=> (not res!209624) (not e!227136))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!372379 (= res!209624 (and (= (size!10601 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10602 _keys!658) (size!10601 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14808 () Bool)

(assert (=> mapIsEmpty!14808 mapRes!14808))

(declare-fun b!372380 () Bool)

(assert (=> b!372380 (= e!227135 (not true))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5892 0))(
  ( (tuple2!5893 (_1!2956 (_ BitVec 64)) (_2!2956 V!12877)) )
))
(declare-datatypes ((List!5768 0))(
  ( (Nil!5765) (Cons!5764 (h!6620 tuple2!5892) (t!10926 List!5768)) )
))
(declare-datatypes ((ListLongMap!4819 0))(
  ( (ListLongMap!4820 (toList!2425 List!5768)) )
))
(declare-fun lt!170783 () ListLongMap!4819)

(declare-fun lt!170787 () array!21567)

(declare-fun zeroValue!472 () V!12877)

(declare-fun minValue!472 () V!12877)

(declare-fun getCurrentListMap!1875 (array!21569 array!21567 (_ BitVec 32) (_ BitVec 32) V!12877 V!12877 (_ BitVec 32) Int) ListLongMap!4819)

(assert (=> b!372380 (= lt!170783 (getCurrentListMap!1875 lt!170785 lt!170787 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170788 () ListLongMap!4819)

(declare-fun lt!170784 () ListLongMap!4819)

(assert (=> b!372380 (and (= lt!170788 lt!170784) (= lt!170784 lt!170788))))

(declare-fun lt!170782 () ListLongMap!4819)

(declare-fun v!373 () V!12877)

(declare-fun +!766 (ListLongMap!4819 tuple2!5892) ListLongMap!4819)

(assert (=> b!372380 (= lt!170784 (+!766 lt!170782 (tuple2!5893 k0!778 v!373)))))

(declare-datatypes ((Unit!11437 0))(
  ( (Unit!11438) )
))
(declare-fun lt!170786 () Unit!11437)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!26 (array!21569 array!21567 (_ BitVec 32) (_ BitVec 32) V!12877 V!12877 (_ BitVec 32) (_ BitVec 64) V!12877 (_ BitVec 32) Int) Unit!11437)

(assert (=> b!372380 (= lt!170786 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!26 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!693 (array!21569 array!21567 (_ BitVec 32) (_ BitVec 32) V!12877 V!12877 (_ BitVec 32) Int) ListLongMap!4819)

(assert (=> b!372380 (= lt!170788 (getCurrentListMapNoExtraKeys!693 lt!170785 lt!170787 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372380 (= lt!170787 (array!21568 (store (arr!10249 _values!506) i!548 (ValueCellFull!4071 v!373)) (size!10601 _values!506)))))

(assert (=> b!372380 (= lt!170782 (getCurrentListMapNoExtraKeys!693 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372381 () Bool)

(declare-fun res!209622 () Bool)

(assert (=> b!372381 (=> (not res!209622) (not e!227136))))

(assert (=> b!372381 (= res!209622 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10602 _keys!658))))))

(declare-fun b!372382 () Bool)

(declare-fun res!209621 () Bool)

(assert (=> b!372382 (=> (not res!209621) (not e!227136))))

(assert (=> b!372382 (= res!209621 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5764))))

(declare-fun b!372383 () Bool)

(declare-fun e!227133 () Bool)

(assert (=> b!372383 (= e!227132 (and e!227133 mapRes!14808))))

(declare-fun condMapEmpty!14808 () Bool)

(declare-fun mapDefault!14808 () ValueCell!4071)

(assert (=> b!372383 (= condMapEmpty!14808 (= (arr!10249 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4071)) mapDefault!14808)))))

(declare-fun b!372384 () Bool)

(assert (=> b!372384 (= e!227131 tp_is_empty!8829)))

(declare-fun b!372385 () Bool)

(assert (=> b!372385 (= e!227136 e!227135)))

(declare-fun res!209615 () Bool)

(assert (=> b!372385 (=> (not res!209615) (not e!227135))))

(assert (=> b!372385 (= res!209615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170785 mask!970))))

(assert (=> b!372385 (= lt!170785 (array!21570 (store (arr!10250 _keys!658) i!548 k0!778) (size!10602 _keys!658)))))

(declare-fun b!372386 () Bool)

(assert (=> b!372386 (= e!227133 tp_is_empty!8829)))

(assert (= (and start!37062 res!209618) b!372379))

(assert (= (and b!372379 res!209624) b!372374))

(assert (= (and b!372374 res!209617) b!372382))

(assert (= (and b!372382 res!209621) b!372381))

(assert (= (and b!372381 res!209622) b!372375))

(assert (= (and b!372375 res!209620) b!372378))

(assert (= (and b!372378 res!209616) b!372376))

(assert (= (and b!372376 res!209623) b!372385))

(assert (= (and b!372385 res!209615) b!372377))

(assert (= (and b!372377 res!209619) b!372380))

(assert (= (and b!372383 condMapEmpty!14808) mapIsEmpty!14808))

(assert (= (and b!372383 (not condMapEmpty!14808)) mapNonEmpty!14808))

(get-info :version)

(assert (= (and mapNonEmpty!14808 ((_ is ValueCellFull!4071) mapValue!14808)) b!372384))

(assert (= (and b!372383 ((_ is ValueCellFull!4071) mapDefault!14808)) b!372386))

(assert (= start!37062 b!372383))

(declare-fun m!368273 () Bool)

(assert (=> b!372385 m!368273))

(declare-fun m!368275 () Bool)

(assert (=> b!372385 m!368275))

(declare-fun m!368277 () Bool)

(assert (=> b!372378 m!368277))

(declare-fun m!368279 () Bool)

(assert (=> mapNonEmpty!14808 m!368279))

(declare-fun m!368281 () Bool)

(assert (=> b!372377 m!368281))

(declare-fun m!368283 () Bool)

(assert (=> b!372382 m!368283))

(declare-fun m!368285 () Bool)

(assert (=> b!372380 m!368285))

(declare-fun m!368287 () Bool)

(assert (=> b!372380 m!368287))

(declare-fun m!368289 () Bool)

(assert (=> b!372380 m!368289))

(declare-fun m!368291 () Bool)

(assert (=> b!372380 m!368291))

(declare-fun m!368293 () Bool)

(assert (=> b!372380 m!368293))

(declare-fun m!368295 () Bool)

(assert (=> b!372380 m!368295))

(declare-fun m!368297 () Bool)

(assert (=> b!372374 m!368297))

(declare-fun m!368299 () Bool)

(assert (=> b!372375 m!368299))

(declare-fun m!368301 () Bool)

(assert (=> b!372376 m!368301))

(declare-fun m!368303 () Bool)

(assert (=> start!37062 m!368303))

(declare-fun m!368305 () Bool)

(assert (=> start!37062 m!368305))

(declare-fun m!368307 () Bool)

(assert (=> start!37062 m!368307))

(check-sat (not start!37062) (not b_next!8181) (not b!372374) (not b!372376) b_and!15441 (not b!372385) (not b!372380) (not b!372377) tp_is_empty!8829 (not b!372375) (not mapNonEmpty!14808) (not b!372382))
(check-sat b_and!15441 (not b_next!8181))
