; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36936 () Bool)

(assert start!36936)

(declare-fun b_free!8055 () Bool)

(declare-fun b_next!8055 () Bool)

(assert (=> start!36936 (= b_free!8055 (not b_next!8055))))

(declare-fun tp!28880 () Bool)

(declare-fun b_and!15315 () Bool)

(assert (=> start!36936 (= tp!28880 b_and!15315)))

(declare-fun b!369917 () Bool)

(declare-fun res!207730 () Bool)

(declare-fun e!226001 () Bool)

(assert (=> b!369917 (=> (not res!207730) (not e!226001))))

(declare-datatypes ((array!21327 0))(
  ( (array!21328 (arr!10129 (Array (_ BitVec 32) (_ BitVec 64))) (size!10481 (_ BitVec 32))) )
))
(declare-fun lt!169853 () array!21327)

(declare-datatypes ((List!5685 0))(
  ( (Nil!5682) (Cons!5681 (h!6537 (_ BitVec 64)) (t!10843 List!5685)) )
))
(declare-fun arrayNoDuplicates!0 (array!21327 (_ BitVec 32) List!5685) Bool)

(assert (=> b!369917 (= res!207730 (arrayNoDuplicates!0 lt!169853 #b00000000000000000000000000000000 Nil!5682))))

(declare-fun b!369918 () Bool)

(declare-fun res!207725 () Bool)

(declare-fun e!225999 () Bool)

(assert (=> b!369918 (=> (not res!207725) (not e!225999))))

(declare-fun _keys!658 () array!21327)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369918 (= res!207725 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!369919 () Bool)

(assert (=> b!369919 (= e!225999 e!226001)))

(declare-fun res!207734 () Bool)

(assert (=> b!369919 (=> (not res!207734) (not e!226001))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21327 (_ BitVec 32)) Bool)

(assert (=> b!369919 (= res!207734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169853 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369919 (= lt!169853 (array!21328 (store (arr!10129 _keys!658) i!548 k0!778) (size!10481 _keys!658)))))

(declare-fun b!369920 () Bool)

(declare-fun e!225998 () Bool)

(declare-fun tp_is_empty!8703 () Bool)

(assert (=> b!369920 (= e!225998 tp_is_empty!8703)))

(declare-fun b!369921 () Bool)

(declare-fun res!207726 () Bool)

(assert (=> b!369921 (=> (not res!207726) (not e!225999))))

(assert (=> b!369921 (= res!207726 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10481 _keys!658))))))

(declare-fun b!369922 () Bool)

(declare-fun res!207728 () Bool)

(assert (=> b!369922 (=> (not res!207728) (not e!225999))))

(assert (=> b!369922 (= res!207728 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5682))))

(declare-fun b!369924 () Bool)

(declare-fun e!226002 () Bool)

(assert (=> b!369924 (= e!226002 tp_is_empty!8703)))

(declare-fun mapIsEmpty!14619 () Bool)

(declare-fun mapRes!14619 () Bool)

(assert (=> mapIsEmpty!14619 mapRes!14619))

(declare-fun b!369925 () Bool)

(declare-fun res!207733 () Bool)

(assert (=> b!369925 (=> (not res!207733) (not e!225999))))

(assert (=> b!369925 (= res!207733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369926 () Bool)

(declare-fun e!226000 () Bool)

(assert (=> b!369926 (= e!226000 (and e!226002 mapRes!14619))))

(declare-fun condMapEmpty!14619 () Bool)

(declare-datatypes ((V!12709 0))(
  ( (V!12710 (val!4396 Int)) )
))
(declare-datatypes ((ValueCell!4008 0))(
  ( (ValueCellFull!4008 (v!6589 V!12709)) (EmptyCell!4008) )
))
(declare-datatypes ((array!21329 0))(
  ( (array!21330 (arr!10130 (Array (_ BitVec 32) ValueCell!4008)) (size!10482 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21329)

(declare-fun mapDefault!14619 () ValueCell!4008)

(assert (=> b!369926 (= condMapEmpty!14619 (= (arr!10130 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4008)) mapDefault!14619)))))

(declare-fun b!369923 () Bool)

(declare-fun res!207729 () Bool)

(assert (=> b!369923 (=> (not res!207729) (not e!225999))))

(assert (=> b!369923 (= res!207729 (or (= (select (arr!10129 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10129 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!207727 () Bool)

(assert (=> start!36936 (=> (not res!207727) (not e!225999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36936 (= res!207727 (validMask!0 mask!970))))

(assert (=> start!36936 e!225999))

(declare-fun array_inv!7480 (array!21329) Bool)

(assert (=> start!36936 (and (array_inv!7480 _values!506) e!226000)))

(assert (=> start!36936 tp!28880))

(assert (=> start!36936 true))

(assert (=> start!36936 tp_is_empty!8703))

(declare-fun array_inv!7481 (array!21327) Bool)

(assert (=> start!36936 (array_inv!7481 _keys!658)))

(declare-fun b!369927 () Bool)

(declare-fun res!207731 () Bool)

(assert (=> b!369927 (=> (not res!207731) (not e!225999))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!369927 (= res!207731 (and (= (size!10482 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10481 _keys!658) (size!10482 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14619 () Bool)

(declare-fun tp!28881 () Bool)

(assert (=> mapNonEmpty!14619 (= mapRes!14619 (and tp!28881 e!225998))))

(declare-fun mapRest!14619 () (Array (_ BitVec 32) ValueCell!4008))

(declare-fun mapValue!14619 () ValueCell!4008)

(declare-fun mapKey!14619 () (_ BitVec 32))

(assert (=> mapNonEmpty!14619 (= (arr!10130 _values!506) (store mapRest!14619 mapKey!14619 mapValue!14619))))

(declare-fun b!369928 () Bool)

(declare-fun res!207732 () Bool)

(assert (=> b!369928 (=> (not res!207732) (not e!225999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369928 (= res!207732 (validKeyInArray!0 k0!778))))

(declare-fun b!369929 () Bool)

(assert (=> b!369929 (= e!226001 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5822 0))(
  ( (tuple2!5823 (_1!2921 (_ BitVec 64)) (_2!2921 V!12709)) )
))
(declare-datatypes ((List!5686 0))(
  ( (Nil!5683) (Cons!5682 (h!6538 tuple2!5822) (t!10844 List!5686)) )
))
(declare-datatypes ((ListLongMap!4749 0))(
  ( (ListLongMap!4750 (toList!2390 List!5686)) )
))
(declare-fun lt!169855 () ListLongMap!4749)

(declare-fun zeroValue!472 () V!12709)

(declare-fun v!373 () V!12709)

(declare-fun minValue!472 () V!12709)

(declare-fun getCurrentListMapNoExtraKeys!658 (array!21327 array!21329 (_ BitVec 32) (_ BitVec 32) V!12709 V!12709 (_ BitVec 32) Int) ListLongMap!4749)

(assert (=> b!369929 (= lt!169855 (getCurrentListMapNoExtraKeys!658 lt!169853 (array!21330 (store (arr!10130 _values!506) i!548 (ValueCellFull!4008 v!373)) (size!10482 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169854 () ListLongMap!4749)

(assert (=> b!369929 (= lt!169854 (getCurrentListMapNoExtraKeys!658 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!36936 res!207727) b!369927))

(assert (= (and b!369927 res!207731) b!369925))

(assert (= (and b!369925 res!207733) b!369922))

(assert (= (and b!369922 res!207728) b!369921))

(assert (= (and b!369921 res!207726) b!369928))

(assert (= (and b!369928 res!207732) b!369923))

(assert (= (and b!369923 res!207729) b!369918))

(assert (= (and b!369918 res!207725) b!369919))

(assert (= (and b!369919 res!207734) b!369917))

(assert (= (and b!369917 res!207730) b!369929))

(assert (= (and b!369926 condMapEmpty!14619) mapIsEmpty!14619))

(assert (= (and b!369926 (not condMapEmpty!14619)) mapNonEmpty!14619))

(get-info :version)

(assert (= (and mapNonEmpty!14619 ((_ is ValueCellFull!4008) mapValue!14619)) b!369920))

(assert (= (and b!369926 ((_ is ValueCellFull!4008) mapDefault!14619)) b!369924))

(assert (= start!36936 b!369926))

(declare-fun m!366179 () Bool)

(assert (=> start!36936 m!366179))

(declare-fun m!366181 () Bool)

(assert (=> start!36936 m!366181))

(declare-fun m!366183 () Bool)

(assert (=> start!36936 m!366183))

(declare-fun m!366185 () Bool)

(assert (=> b!369919 m!366185))

(declare-fun m!366187 () Bool)

(assert (=> b!369919 m!366187))

(declare-fun m!366189 () Bool)

(assert (=> b!369925 m!366189))

(declare-fun m!366191 () Bool)

(assert (=> mapNonEmpty!14619 m!366191))

(declare-fun m!366193 () Bool)

(assert (=> b!369922 m!366193))

(declare-fun m!366195 () Bool)

(assert (=> b!369928 m!366195))

(declare-fun m!366197 () Bool)

(assert (=> b!369917 m!366197))

(declare-fun m!366199 () Bool)

(assert (=> b!369929 m!366199))

(declare-fun m!366201 () Bool)

(assert (=> b!369929 m!366201))

(declare-fun m!366203 () Bool)

(assert (=> b!369929 m!366203))

(declare-fun m!366205 () Bool)

(assert (=> b!369923 m!366205))

(declare-fun m!366207 () Bool)

(assert (=> b!369918 m!366207))

(check-sat (not b!369925) (not mapNonEmpty!14619) (not b_next!8055) (not b!369919) (not b!369917) tp_is_empty!8703 (not b!369929) (not start!36936) (not b!369922) (not b!369928) b_and!15315 (not b!369918))
(check-sat b_and!15315 (not b_next!8055))
