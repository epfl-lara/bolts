; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36996 () Bool)

(assert start!36996)

(declare-fun b_free!8115 () Bool)

(declare-fun b_next!8115 () Bool)

(assert (=> start!36996 (= b_free!8115 (not b_next!8115))))

(declare-fun tp!29061 () Bool)

(declare-fun b_and!15375 () Bool)

(assert (=> start!36996 (= tp!29061 b_and!15375)))

(declare-fun b!371087 () Bool)

(declare-fun res!208625 () Bool)

(declare-fun e!226539 () Bool)

(assert (=> b!371087 (=> (not res!208625) (not e!226539))))

(declare-datatypes ((array!21439 0))(
  ( (array!21440 (arr!10185 (Array (_ BitVec 32) (_ BitVec 64))) (size!10537 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21439)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21439 (_ BitVec 32)) Bool)

(assert (=> b!371087 (= res!208625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371088 () Bool)

(declare-fun res!208630 () Bool)

(assert (=> b!371088 (=> (not res!208630) (not e!226539))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371088 (= res!208630 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10537 _keys!658))))))

(declare-fun b!371089 () Bool)

(declare-fun e!226540 () Bool)

(declare-fun tp_is_empty!8763 () Bool)

(assert (=> b!371089 (= e!226540 tp_is_empty!8763)))

(declare-fun b!371090 () Bool)

(declare-fun res!208634 () Bool)

(declare-fun e!226537 () Bool)

(assert (=> b!371090 (=> (not res!208634) (not e!226537))))

(declare-fun lt!170187 () array!21439)

(declare-datatypes ((List!5719 0))(
  ( (Nil!5716) (Cons!5715 (h!6571 (_ BitVec 64)) (t!10877 List!5719)) )
))
(declare-fun arrayNoDuplicates!0 (array!21439 (_ BitVec 32) List!5719) Bool)

(assert (=> b!371090 (= res!208634 (arrayNoDuplicates!0 lt!170187 #b00000000000000000000000000000000 Nil!5716))))

(declare-fun b!371091 () Bool)

(declare-fun res!208626 () Bool)

(assert (=> b!371091 (=> (not res!208626) (not e!226539))))

(assert (=> b!371091 (= res!208626 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5716))))

(declare-fun b!371092 () Bool)

(assert (=> b!371092 (= e!226539 e!226537)))

(declare-fun res!208629 () Bool)

(assert (=> b!371092 (=> (not res!208629) (not e!226537))))

(assert (=> b!371092 (= res!208629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170187 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!371092 (= lt!170187 (array!21440 (store (arr!10185 _keys!658) i!548 k0!778) (size!10537 _keys!658)))))

(declare-fun mapIsEmpty!14709 () Bool)

(declare-fun mapRes!14709 () Bool)

(assert (=> mapIsEmpty!14709 mapRes!14709))

(declare-fun b!371093 () Bool)

(declare-fun res!208632 () Bool)

(assert (=> b!371093 (=> (not res!208632) (not e!226539))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371093 (= res!208632 (validKeyInArray!0 k0!778))))

(declare-fun b!371094 () Bool)

(declare-fun e!226541 () Bool)

(assert (=> b!371094 (= e!226541 (and e!226540 mapRes!14709))))

(declare-fun condMapEmpty!14709 () Bool)

(declare-datatypes ((V!12789 0))(
  ( (V!12790 (val!4426 Int)) )
))
(declare-datatypes ((ValueCell!4038 0))(
  ( (ValueCellFull!4038 (v!6619 V!12789)) (EmptyCell!4038) )
))
(declare-datatypes ((array!21441 0))(
  ( (array!21442 (arr!10186 (Array (_ BitVec 32) ValueCell!4038)) (size!10538 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21441)

(declare-fun mapDefault!14709 () ValueCell!4038)

(assert (=> b!371094 (= condMapEmpty!14709 (= (arr!10186 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4038)) mapDefault!14709)))))

(declare-fun b!371095 () Bool)

(declare-fun res!208628 () Bool)

(assert (=> b!371095 (=> (not res!208628) (not e!226539))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!371095 (= res!208628 (and (= (size!10538 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10537 _keys!658) (size!10538 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14709 () Bool)

(declare-fun tp!29060 () Bool)

(declare-fun e!226542 () Bool)

(assert (=> mapNonEmpty!14709 (= mapRes!14709 (and tp!29060 e!226542))))

(declare-fun mapKey!14709 () (_ BitVec 32))

(declare-fun mapRest!14709 () (Array (_ BitVec 32) ValueCell!4038))

(declare-fun mapValue!14709 () ValueCell!4038)

(assert (=> mapNonEmpty!14709 (= (arr!10186 _values!506) (store mapRest!14709 mapKey!14709 mapValue!14709))))

(declare-fun b!371097 () Bool)

(assert (=> b!371097 (= e!226542 tp_is_empty!8763)))

(declare-fun b!371098 () Bool)

(assert (=> b!371098 (= e!226537 (not true))))

(declare-datatypes ((tuple2!5850 0))(
  ( (tuple2!5851 (_1!2935 (_ BitVec 64)) (_2!2935 V!12789)) )
))
(declare-datatypes ((List!5720 0))(
  ( (Nil!5717) (Cons!5716 (h!6572 tuple2!5850) (t!10878 List!5720)) )
))
(declare-datatypes ((ListLongMap!4777 0))(
  ( (ListLongMap!4778 (toList!2404 List!5720)) )
))
(declare-fun lt!170190 () ListLongMap!4777)

(declare-fun lt!170189 () ListLongMap!4777)

(assert (=> b!371098 (and (= lt!170190 lt!170189) (= lt!170189 lt!170190))))

(declare-fun v!373 () V!12789)

(declare-fun lt!170188 () ListLongMap!4777)

(declare-fun +!745 (ListLongMap!4777 tuple2!5850) ListLongMap!4777)

(assert (=> b!371098 (= lt!170189 (+!745 lt!170188 (tuple2!5851 k0!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((Unit!11395 0))(
  ( (Unit!11396) )
))
(declare-fun lt!170191 () Unit!11395)

(declare-fun zeroValue!472 () V!12789)

(declare-fun minValue!472 () V!12789)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!5 (array!21439 array!21441 (_ BitVec 32) (_ BitVec 32) V!12789 V!12789 (_ BitVec 32) (_ BitVec 64) V!12789 (_ BitVec 32) Int) Unit!11395)

(assert (=> b!371098 (= lt!170191 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!5 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!672 (array!21439 array!21441 (_ BitVec 32) (_ BitVec 32) V!12789 V!12789 (_ BitVec 32) Int) ListLongMap!4777)

(assert (=> b!371098 (= lt!170190 (getCurrentListMapNoExtraKeys!672 lt!170187 (array!21442 (store (arr!10186 _values!506) i!548 (ValueCellFull!4038 v!373)) (size!10538 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371098 (= lt!170188 (getCurrentListMapNoExtraKeys!672 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371099 () Bool)

(declare-fun res!208627 () Bool)

(assert (=> b!371099 (=> (not res!208627) (not e!226539))))

(assert (=> b!371099 (= res!208627 (or (= (select (arr!10185 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10185 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371096 () Bool)

(declare-fun res!208631 () Bool)

(assert (=> b!371096 (=> (not res!208631) (not e!226539))))

(declare-fun arrayContainsKey!0 (array!21439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371096 (= res!208631 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!208633 () Bool)

(assert (=> start!36996 (=> (not res!208633) (not e!226539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36996 (= res!208633 (validMask!0 mask!970))))

(assert (=> start!36996 e!226539))

(declare-fun array_inv!7520 (array!21441) Bool)

(assert (=> start!36996 (and (array_inv!7520 _values!506) e!226541)))

(assert (=> start!36996 tp!29061))

(assert (=> start!36996 true))

(assert (=> start!36996 tp_is_empty!8763))

(declare-fun array_inv!7521 (array!21439) Bool)

(assert (=> start!36996 (array_inv!7521 _keys!658)))

(assert (= (and start!36996 res!208633) b!371095))

(assert (= (and b!371095 res!208628) b!371087))

(assert (= (and b!371087 res!208625) b!371091))

(assert (= (and b!371091 res!208626) b!371088))

(assert (= (and b!371088 res!208630) b!371093))

(assert (= (and b!371093 res!208632) b!371099))

(assert (= (and b!371099 res!208627) b!371096))

(assert (= (and b!371096 res!208631) b!371092))

(assert (= (and b!371092 res!208629) b!371090))

(assert (= (and b!371090 res!208634) b!371098))

(assert (= (and b!371094 condMapEmpty!14709) mapIsEmpty!14709))

(assert (= (and b!371094 (not condMapEmpty!14709)) mapNonEmpty!14709))

(get-info :version)

(assert (= (and mapNonEmpty!14709 ((_ is ValueCellFull!4038) mapValue!14709)) b!371097))

(assert (= (and b!371094 ((_ is ValueCellFull!4038) mapDefault!14709)) b!371089))

(assert (= start!36996 b!371094))

(declare-fun m!367119 () Bool)

(assert (=> b!371099 m!367119))

(declare-fun m!367121 () Bool)

(assert (=> b!371092 m!367121))

(declare-fun m!367123 () Bool)

(assert (=> b!371092 m!367123))

(declare-fun m!367125 () Bool)

(assert (=> b!371098 m!367125))

(declare-fun m!367127 () Bool)

(assert (=> b!371098 m!367127))

(declare-fun m!367129 () Bool)

(assert (=> b!371098 m!367129))

(declare-fun m!367131 () Bool)

(assert (=> b!371098 m!367131))

(declare-fun m!367133 () Bool)

(assert (=> b!371098 m!367133))

(declare-fun m!367135 () Bool)

(assert (=> mapNonEmpty!14709 m!367135))

(declare-fun m!367137 () Bool)

(assert (=> b!371096 m!367137))

(declare-fun m!367139 () Bool)

(assert (=> start!36996 m!367139))

(declare-fun m!367141 () Bool)

(assert (=> start!36996 m!367141))

(declare-fun m!367143 () Bool)

(assert (=> start!36996 m!367143))

(declare-fun m!367145 () Bool)

(assert (=> b!371090 m!367145))

(declare-fun m!367147 () Bool)

(assert (=> b!371093 m!367147))

(declare-fun m!367149 () Bool)

(assert (=> b!371087 m!367149))

(declare-fun m!367151 () Bool)

(assert (=> b!371091 m!367151))

(check-sat (not b!371087) b_and!15375 (not start!36996) (not b!371093) (not b!371090) (not mapNonEmpty!14709) (not b!371096) (not b!371091) (not b!371092) (not b!371098) tp_is_empty!8763 (not b_next!8115))
(check-sat b_and!15375 (not b_next!8115))
