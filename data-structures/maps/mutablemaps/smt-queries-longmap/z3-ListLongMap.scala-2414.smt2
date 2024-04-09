; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38200 () Bool)

(assert start!38200)

(declare-fun b_free!9051 () Bool)

(declare-fun b_next!9051 () Bool)

(assert (=> start!38200 (= b_free!9051 (not b_next!9051))))

(declare-fun tp!31937 () Bool)

(declare-fun b_and!16443 () Bool)

(assert (=> start!38200 (= tp!31937 b_and!16443)))

(declare-fun b!393631 () Bool)

(declare-fun res!225618 () Bool)

(declare-fun e!238316 () Bool)

(assert (=> b!393631 (=> (not res!225618) (not e!238316))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!14069 0))(
  ( (V!14070 (val!4906 Int)) )
))
(declare-datatypes ((ValueCell!4518 0))(
  ( (ValueCellFull!4518 (v!7143 V!14069)) (EmptyCell!4518) )
))
(declare-datatypes ((array!23329 0))(
  ( (array!23330 (arr!11119 (Array (_ BitVec 32) ValueCell!4518)) (size!11471 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23329)

(declare-datatypes ((array!23331 0))(
  ( (array!23332 (arr!11120 (Array (_ BitVec 32) (_ BitVec 64))) (size!11472 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23331)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!393631 (= res!225618 (and (= (size!11471 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11472 _keys!658) (size!11471 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!225626 () Bool)

(assert (=> start!38200 (=> (not res!225626) (not e!238316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38200 (= res!225626 (validMask!0 mask!970))))

(assert (=> start!38200 e!238316))

(declare-fun e!238318 () Bool)

(declare-fun array_inv!8148 (array!23329) Bool)

(assert (=> start!38200 (and (array_inv!8148 _values!506) e!238318)))

(assert (=> start!38200 tp!31937))

(assert (=> start!38200 true))

(declare-fun tp_is_empty!9723 () Bool)

(assert (=> start!38200 tp_is_empty!9723))

(declare-fun array_inv!8149 (array!23331) Bool)

(assert (=> start!38200 (array_inv!8149 _keys!658)))

(declare-fun b!393632 () Bool)

(declare-fun e!238317 () Bool)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!393632 (= e!238317 (bvslt i!548 (size!11471 _values!506)))))

(declare-datatypes ((tuple2!6556 0))(
  ( (tuple2!6557 (_1!3288 (_ BitVec 64)) (_2!3288 V!14069)) )
))
(declare-datatypes ((List!6438 0))(
  ( (Nil!6435) (Cons!6434 (h!7290 tuple2!6556) (t!11618 List!6438)) )
))
(declare-datatypes ((ListLongMap!5483 0))(
  ( (ListLongMap!5484 (toList!2757 List!6438)) )
))
(declare-fun lt!186436 () ListLongMap!5483)

(declare-fun lt!186434 () ListLongMap!5483)

(assert (=> b!393632 (= lt!186436 lt!186434)))

(declare-fun mapIsEmpty!16182 () Bool)

(declare-fun mapRes!16182 () Bool)

(assert (=> mapIsEmpty!16182 mapRes!16182))

(declare-fun b!393633 () Bool)

(declare-fun res!225623 () Bool)

(declare-fun e!238319 () Bool)

(assert (=> b!393633 (=> (not res!225623) (not e!238319))))

(declare-fun lt!186432 () array!23331)

(declare-datatypes ((List!6439 0))(
  ( (Nil!6436) (Cons!6435 (h!7291 (_ BitVec 64)) (t!11619 List!6439)) )
))
(declare-fun arrayNoDuplicates!0 (array!23331 (_ BitVec 32) List!6439) Bool)

(assert (=> b!393633 (= res!225623 (arrayNoDuplicates!0 lt!186432 #b00000000000000000000000000000000 Nil!6436))))

(declare-fun b!393634 () Bool)

(declare-fun e!238321 () Bool)

(assert (=> b!393634 (= e!238318 (and e!238321 mapRes!16182))))

(declare-fun condMapEmpty!16182 () Bool)

(declare-fun mapDefault!16182 () ValueCell!4518)

(assert (=> b!393634 (= condMapEmpty!16182 (= (arr!11119 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4518)) mapDefault!16182)))))

(declare-fun b!393635 () Bool)

(declare-fun res!225617 () Bool)

(assert (=> b!393635 (=> (not res!225617) (not e!238316))))

(assert (=> b!393635 (= res!225617 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11472 _keys!658))))))

(declare-fun b!393636 () Bool)

(assert (=> b!393636 (= e!238319 (not e!238317))))

(declare-fun res!225619 () Bool)

(assert (=> b!393636 (=> res!225619 e!238317)))

(declare-fun lt!186428 () Bool)

(assert (=> b!393636 (= res!225619 (or (and (not lt!186428) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186428) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186428)))))

(assert (=> b!393636 (= lt!186428 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!186429 () ListLongMap!5483)

(declare-fun zeroValue!472 () V!14069)

(declare-fun minValue!472 () V!14069)

(declare-fun getCurrentListMap!2117 (array!23331 array!23329 (_ BitVec 32) (_ BitVec 32) V!14069 V!14069 (_ BitVec 32) Int) ListLongMap!5483)

(assert (=> b!393636 (= lt!186429 (getCurrentListMap!2117 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186431 () array!23329)

(assert (=> b!393636 (= lt!186436 (getCurrentListMap!2117 lt!186432 lt!186431 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186435 () ListLongMap!5483)

(assert (=> b!393636 (and (= lt!186434 lt!186435) (= lt!186435 lt!186434))))

(declare-fun v!373 () V!14069)

(declare-fun lt!186433 () ListLongMap!5483)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun +!1055 (ListLongMap!5483 tuple2!6556) ListLongMap!5483)

(assert (=> b!393636 (= lt!186435 (+!1055 lt!186433 (tuple2!6557 k0!778 v!373)))))

(declare-datatypes ((Unit!12007 0))(
  ( (Unit!12008) )
))
(declare-fun lt!186430 () Unit!12007)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!274 (array!23331 array!23329 (_ BitVec 32) (_ BitVec 32) V!14069 V!14069 (_ BitVec 32) (_ BitVec 64) V!14069 (_ BitVec 32) Int) Unit!12007)

(assert (=> b!393636 (= lt!186430 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!274 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!979 (array!23331 array!23329 (_ BitVec 32) (_ BitVec 32) V!14069 V!14069 (_ BitVec 32) Int) ListLongMap!5483)

(assert (=> b!393636 (= lt!186434 (getCurrentListMapNoExtraKeys!979 lt!186432 lt!186431 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!393636 (= lt!186431 (array!23330 (store (arr!11119 _values!506) i!548 (ValueCellFull!4518 v!373)) (size!11471 _values!506)))))

(assert (=> b!393636 (= lt!186433 (getCurrentListMapNoExtraKeys!979 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393637 () Bool)

(declare-fun res!225621 () Bool)

(assert (=> b!393637 (=> (not res!225621) (not e!238316))))

(assert (=> b!393637 (= res!225621 (or (= (select (arr!11120 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11120 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393638 () Bool)

(declare-fun res!225625 () Bool)

(assert (=> b!393638 (=> (not res!225625) (not e!238316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23331 (_ BitVec 32)) Bool)

(assert (=> b!393638 (= res!225625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!16182 () Bool)

(declare-fun tp!31938 () Bool)

(declare-fun e!238320 () Bool)

(assert (=> mapNonEmpty!16182 (= mapRes!16182 (and tp!31938 e!238320))))

(declare-fun mapRest!16182 () (Array (_ BitVec 32) ValueCell!4518))

(declare-fun mapValue!16182 () ValueCell!4518)

(declare-fun mapKey!16182 () (_ BitVec 32))

(assert (=> mapNonEmpty!16182 (= (arr!11119 _values!506) (store mapRest!16182 mapKey!16182 mapValue!16182))))

(declare-fun b!393639 () Bool)

(assert (=> b!393639 (= e!238316 e!238319)))

(declare-fun res!225627 () Bool)

(assert (=> b!393639 (=> (not res!225627) (not e!238319))))

(assert (=> b!393639 (= res!225627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186432 mask!970))))

(assert (=> b!393639 (= lt!186432 (array!23332 (store (arr!11120 _keys!658) i!548 k0!778) (size!11472 _keys!658)))))

(declare-fun b!393640 () Bool)

(declare-fun res!225624 () Bool)

(assert (=> b!393640 (=> (not res!225624) (not e!238316))))

(assert (=> b!393640 (= res!225624 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6436))))

(declare-fun b!393641 () Bool)

(assert (=> b!393641 (= e!238320 tp_is_empty!9723)))

(declare-fun b!393642 () Bool)

(declare-fun res!225620 () Bool)

(assert (=> b!393642 (=> (not res!225620) (not e!238316))))

(declare-fun arrayContainsKey!0 (array!23331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!393642 (= res!225620 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!393643 () Bool)

(declare-fun res!225622 () Bool)

(assert (=> b!393643 (=> (not res!225622) (not e!238316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!393643 (= res!225622 (validKeyInArray!0 k0!778))))

(declare-fun b!393644 () Bool)

(assert (=> b!393644 (= e!238321 tp_is_empty!9723)))

(assert (= (and start!38200 res!225626) b!393631))

(assert (= (and b!393631 res!225618) b!393638))

(assert (= (and b!393638 res!225625) b!393640))

(assert (= (and b!393640 res!225624) b!393635))

(assert (= (and b!393635 res!225617) b!393643))

(assert (= (and b!393643 res!225622) b!393637))

(assert (= (and b!393637 res!225621) b!393642))

(assert (= (and b!393642 res!225620) b!393639))

(assert (= (and b!393639 res!225627) b!393633))

(assert (= (and b!393633 res!225623) b!393636))

(assert (= (and b!393636 (not res!225619)) b!393632))

(assert (= (and b!393634 condMapEmpty!16182) mapIsEmpty!16182))

(assert (= (and b!393634 (not condMapEmpty!16182)) mapNonEmpty!16182))

(get-info :version)

(assert (= (and mapNonEmpty!16182 ((_ is ValueCellFull!4518) mapValue!16182)) b!393641))

(assert (= (and b!393634 ((_ is ValueCellFull!4518) mapDefault!16182)) b!393644))

(assert (= start!38200 b!393634))

(declare-fun m!390121 () Bool)

(assert (=> b!393637 m!390121))

(declare-fun m!390123 () Bool)

(assert (=> b!393636 m!390123))

(declare-fun m!390125 () Bool)

(assert (=> b!393636 m!390125))

(declare-fun m!390127 () Bool)

(assert (=> b!393636 m!390127))

(declare-fun m!390129 () Bool)

(assert (=> b!393636 m!390129))

(declare-fun m!390131 () Bool)

(assert (=> b!393636 m!390131))

(declare-fun m!390133 () Bool)

(assert (=> b!393636 m!390133))

(declare-fun m!390135 () Bool)

(assert (=> b!393636 m!390135))

(declare-fun m!390137 () Bool)

(assert (=> mapNonEmpty!16182 m!390137))

(declare-fun m!390139 () Bool)

(assert (=> b!393643 m!390139))

(declare-fun m!390141 () Bool)

(assert (=> b!393638 m!390141))

(declare-fun m!390143 () Bool)

(assert (=> start!38200 m!390143))

(declare-fun m!390145 () Bool)

(assert (=> start!38200 m!390145))

(declare-fun m!390147 () Bool)

(assert (=> start!38200 m!390147))

(declare-fun m!390149 () Bool)

(assert (=> b!393633 m!390149))

(declare-fun m!390151 () Bool)

(assert (=> b!393642 m!390151))

(declare-fun m!390153 () Bool)

(assert (=> b!393639 m!390153))

(declare-fun m!390155 () Bool)

(assert (=> b!393639 m!390155))

(declare-fun m!390157 () Bool)

(assert (=> b!393640 m!390157))

(check-sat (not b!393642) (not b!393638) (not b!393639) (not start!38200) (not b!393640) (not b!393636) (not b!393633) (not b!393643) b_and!16443 (not mapNonEmpty!16182) (not b_next!9051) tp_is_empty!9723)
(check-sat b_and!16443 (not b_next!9051))
