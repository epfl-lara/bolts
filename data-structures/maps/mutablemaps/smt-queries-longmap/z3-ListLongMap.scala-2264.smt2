; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37056 () Bool)

(assert start!37056)

(declare-fun b_free!8175 () Bool)

(declare-fun b_next!8175 () Bool)

(assert (=> start!37056 (= b_free!8175 (not b_next!8175))))

(declare-fun tp!29241 () Bool)

(declare-fun b_and!15435 () Bool)

(assert (=> start!37056 (= tp!29241 b_and!15435)))

(declare-fun mapIsEmpty!14799 () Bool)

(declare-fun mapRes!14799 () Bool)

(assert (=> mapIsEmpty!14799 mapRes!14799))

(declare-fun b!372257 () Bool)

(declare-fun e!227082 () Bool)

(declare-fun e!227079 () Bool)

(assert (=> b!372257 (= e!227082 (and e!227079 mapRes!14799))))

(declare-fun condMapEmpty!14799 () Bool)

(declare-datatypes ((V!12869 0))(
  ( (V!12870 (val!4456 Int)) )
))
(declare-datatypes ((ValueCell!4068 0))(
  ( (ValueCellFull!4068 (v!6649 V!12869)) (EmptyCell!4068) )
))
(declare-datatypes ((array!21555 0))(
  ( (array!21556 (arr!10243 (Array (_ BitVec 32) ValueCell!4068)) (size!10595 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21555)

(declare-fun mapDefault!14799 () ValueCell!4068)

(assert (=> b!372257 (= condMapEmpty!14799 (= (arr!10243 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4068)) mapDefault!14799)))))

(declare-fun b!372258 () Bool)

(declare-fun res!209532 () Bool)

(declare-fun e!227078 () Bool)

(assert (=> b!372258 (=> (not res!209532) (not e!227078))))

(declare-datatypes ((array!21557 0))(
  ( (array!21558 (arr!10244 (Array (_ BitVec 32) (_ BitVec 64))) (size!10596 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21557)

(declare-datatypes ((List!5762 0))(
  ( (Nil!5759) (Cons!5758 (h!6614 (_ BitVec 64)) (t!10920 List!5762)) )
))
(declare-fun arrayNoDuplicates!0 (array!21557 (_ BitVec 32) List!5762) Bool)

(assert (=> b!372258 (= res!209532 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5759))))

(declare-fun b!372259 () Bool)

(declare-fun res!209534 () Bool)

(assert (=> b!372259 (=> (not res!209534) (not e!227078))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372259 (= res!209534 (or (= (select (arr!10244 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10244 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372260 () Bool)

(declare-fun res!209528 () Bool)

(assert (=> b!372260 (=> (not res!209528) (not e!227078))))

(assert (=> b!372260 (= res!209528 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10596 _keys!658))))))

(declare-fun b!372261 () Bool)

(declare-fun res!209527 () Bool)

(assert (=> b!372261 (=> (not res!209527) (not e!227078))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21557 (_ BitVec 32)) Bool)

(assert (=> b!372261 (= res!209527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372262 () Bool)

(declare-fun e!227080 () Bool)

(assert (=> b!372262 (= e!227080 (not true))))

(declare-datatypes ((tuple2!5888 0))(
  ( (tuple2!5889 (_1!2954 (_ BitVec 64)) (_2!2954 V!12869)) )
))
(declare-datatypes ((List!5763 0))(
  ( (Nil!5760) (Cons!5759 (h!6615 tuple2!5888) (t!10921 List!5763)) )
))
(declare-datatypes ((ListLongMap!4815 0))(
  ( (ListLongMap!4816 (toList!2423 List!5763)) )
))
(declare-fun lt!170724 () ListLongMap!4815)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!170723 () array!21555)

(declare-fun zeroValue!472 () V!12869)

(declare-fun lt!170722 () array!21557)

(declare-fun minValue!472 () V!12869)

(declare-fun getCurrentListMap!1873 (array!21557 array!21555 (_ BitVec 32) (_ BitVec 32) V!12869 V!12869 (_ BitVec 32) Int) ListLongMap!4815)

(assert (=> b!372262 (= lt!170724 (getCurrentListMap!1873 lt!170722 lt!170723 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170720 () ListLongMap!4815)

(declare-fun lt!170719 () ListLongMap!4815)

(assert (=> b!372262 (and (= lt!170720 lt!170719) (= lt!170719 lt!170720))))

(declare-fun v!373 () V!12869)

(declare-fun lt!170725 () ListLongMap!4815)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun +!764 (ListLongMap!4815 tuple2!5888) ListLongMap!4815)

(assert (=> b!372262 (= lt!170719 (+!764 lt!170725 (tuple2!5889 k0!778 v!373)))))

(declare-datatypes ((Unit!11433 0))(
  ( (Unit!11434) )
))
(declare-fun lt!170721 () Unit!11433)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!24 (array!21557 array!21555 (_ BitVec 32) (_ BitVec 32) V!12869 V!12869 (_ BitVec 32) (_ BitVec 64) V!12869 (_ BitVec 32) Int) Unit!11433)

(assert (=> b!372262 (= lt!170721 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!24 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!691 (array!21557 array!21555 (_ BitVec 32) (_ BitVec 32) V!12869 V!12869 (_ BitVec 32) Int) ListLongMap!4815)

(assert (=> b!372262 (= lt!170720 (getCurrentListMapNoExtraKeys!691 lt!170722 lt!170723 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372262 (= lt!170723 (array!21556 (store (arr!10243 _values!506) i!548 (ValueCellFull!4068 v!373)) (size!10595 _values!506)))))

(assert (=> b!372262 (= lt!170725 (getCurrentListMapNoExtraKeys!691 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372263 () Bool)

(declare-fun e!227077 () Bool)

(declare-fun tp_is_empty!8823 () Bool)

(assert (=> b!372263 (= e!227077 tp_is_empty!8823)))

(declare-fun res!209530 () Bool)

(assert (=> start!37056 (=> (not res!209530) (not e!227078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37056 (= res!209530 (validMask!0 mask!970))))

(assert (=> start!37056 e!227078))

(declare-fun array_inv!7564 (array!21555) Bool)

(assert (=> start!37056 (and (array_inv!7564 _values!506) e!227082)))

(assert (=> start!37056 tp!29241))

(assert (=> start!37056 true))

(assert (=> start!37056 tp_is_empty!8823))

(declare-fun array_inv!7565 (array!21557) Bool)

(assert (=> start!37056 (array_inv!7565 _keys!658)))

(declare-fun mapNonEmpty!14799 () Bool)

(declare-fun tp!29240 () Bool)

(assert (=> mapNonEmpty!14799 (= mapRes!14799 (and tp!29240 e!227077))))

(declare-fun mapValue!14799 () ValueCell!4068)

(declare-fun mapRest!14799 () (Array (_ BitVec 32) ValueCell!4068))

(declare-fun mapKey!14799 () (_ BitVec 32))

(assert (=> mapNonEmpty!14799 (= (arr!10243 _values!506) (store mapRest!14799 mapKey!14799 mapValue!14799))))

(declare-fun b!372264 () Bool)

(declare-fun res!209526 () Bool)

(assert (=> b!372264 (=> (not res!209526) (not e!227080))))

(assert (=> b!372264 (= res!209526 (arrayNoDuplicates!0 lt!170722 #b00000000000000000000000000000000 Nil!5759))))

(declare-fun b!372265 () Bool)

(declare-fun res!209533 () Bool)

(assert (=> b!372265 (=> (not res!209533) (not e!227078))))

(assert (=> b!372265 (= res!209533 (and (= (size!10595 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10596 _keys!658) (size!10595 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372266 () Bool)

(declare-fun res!209525 () Bool)

(assert (=> b!372266 (=> (not res!209525) (not e!227078))))

(declare-fun arrayContainsKey!0 (array!21557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372266 (= res!209525 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!372267 () Bool)

(assert (=> b!372267 (= e!227078 e!227080)))

(declare-fun res!209531 () Bool)

(assert (=> b!372267 (=> (not res!209531) (not e!227080))))

(assert (=> b!372267 (= res!209531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170722 mask!970))))

(assert (=> b!372267 (= lt!170722 (array!21558 (store (arr!10244 _keys!658) i!548 k0!778) (size!10596 _keys!658)))))

(declare-fun b!372268 () Bool)

(declare-fun res!209529 () Bool)

(assert (=> b!372268 (=> (not res!209529) (not e!227078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372268 (= res!209529 (validKeyInArray!0 k0!778))))

(declare-fun b!372269 () Bool)

(assert (=> b!372269 (= e!227079 tp_is_empty!8823)))

(assert (= (and start!37056 res!209530) b!372265))

(assert (= (and b!372265 res!209533) b!372261))

(assert (= (and b!372261 res!209527) b!372258))

(assert (= (and b!372258 res!209532) b!372260))

(assert (= (and b!372260 res!209528) b!372268))

(assert (= (and b!372268 res!209529) b!372259))

(assert (= (and b!372259 res!209534) b!372266))

(assert (= (and b!372266 res!209525) b!372267))

(assert (= (and b!372267 res!209531) b!372264))

(assert (= (and b!372264 res!209526) b!372262))

(assert (= (and b!372257 condMapEmpty!14799) mapIsEmpty!14799))

(assert (= (and b!372257 (not condMapEmpty!14799)) mapNonEmpty!14799))

(get-info :version)

(assert (= (and mapNonEmpty!14799 ((_ is ValueCellFull!4068) mapValue!14799)) b!372263))

(assert (= (and b!372257 ((_ is ValueCellFull!4068) mapDefault!14799)) b!372269))

(assert (= start!37056 b!372257))

(declare-fun m!368165 () Bool)

(assert (=> b!372267 m!368165))

(declare-fun m!368167 () Bool)

(assert (=> b!372267 m!368167))

(declare-fun m!368169 () Bool)

(assert (=> start!37056 m!368169))

(declare-fun m!368171 () Bool)

(assert (=> start!37056 m!368171))

(declare-fun m!368173 () Bool)

(assert (=> start!37056 m!368173))

(declare-fun m!368175 () Bool)

(assert (=> b!372258 m!368175))

(declare-fun m!368177 () Bool)

(assert (=> b!372268 m!368177))

(declare-fun m!368179 () Bool)

(assert (=> b!372259 m!368179))

(declare-fun m!368181 () Bool)

(assert (=> b!372266 m!368181))

(declare-fun m!368183 () Bool)

(assert (=> b!372261 m!368183))

(declare-fun m!368185 () Bool)

(assert (=> mapNonEmpty!14799 m!368185))

(declare-fun m!368187 () Bool)

(assert (=> b!372262 m!368187))

(declare-fun m!368189 () Bool)

(assert (=> b!372262 m!368189))

(declare-fun m!368191 () Bool)

(assert (=> b!372262 m!368191))

(declare-fun m!368193 () Bool)

(assert (=> b!372262 m!368193))

(declare-fun m!368195 () Bool)

(assert (=> b!372262 m!368195))

(declare-fun m!368197 () Bool)

(assert (=> b!372262 m!368197))

(declare-fun m!368199 () Bool)

(assert (=> b!372264 m!368199))

(check-sat (not b!372268) (not b_next!8175) (not mapNonEmpty!14799) tp_is_empty!8823 (not b!372267) b_and!15435 (not start!37056) (not b!372266) (not b!372264) (not b!372261) (not b!372262) (not b!372258))
(check-sat b_and!15435 (not b_next!8175))
