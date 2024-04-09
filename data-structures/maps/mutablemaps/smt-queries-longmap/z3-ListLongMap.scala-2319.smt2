; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37386 () Bool)

(assert start!37386)

(declare-fun b_free!8505 () Bool)

(declare-fun b_next!8505 () Bool)

(assert (=> start!37386 (= b_free!8505 (not b_next!8505))))

(declare-fun tp!30231 () Bool)

(declare-fun b_and!15765 () Bool)

(assert (=> start!37386 (= tp!30231 b_and!15765)))

(declare-fun res!215413 () Bool)

(declare-fun e!230950 () Bool)

(assert (=> start!37386 (=> (not res!215413) (not e!230950))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37386 (= res!215413 (validMask!0 mask!970))))

(assert (=> start!37386 e!230950))

(declare-datatypes ((V!13309 0))(
  ( (V!13310 (val!4621 Int)) )
))
(declare-datatypes ((ValueCell!4233 0))(
  ( (ValueCellFull!4233 (v!6814 V!13309)) (EmptyCell!4233) )
))
(declare-datatypes ((array!22203 0))(
  ( (array!22204 (arr!10567 (Array (_ BitVec 32) ValueCell!4233)) (size!10919 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22203)

(declare-fun e!230954 () Bool)

(declare-fun array_inv!7772 (array!22203) Bool)

(assert (=> start!37386 (and (array_inv!7772 _values!506) e!230954)))

(assert (=> start!37386 tp!30231))

(assert (=> start!37386 true))

(declare-fun tp_is_empty!9153 () Bool)

(assert (=> start!37386 tp_is_empty!9153))

(declare-datatypes ((array!22205 0))(
  ( (array!22206 (arr!10568 (Array (_ BitVec 32) (_ BitVec 64))) (size!10920 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22205)

(declare-fun array_inv!7773 (array!22205) Bool)

(assert (=> start!37386 (array_inv!7773 _keys!658)))

(declare-fun b!379620 () Bool)

(declare-fun res!215405 () Bool)

(assert (=> b!379620 (=> (not res!215405) (not e!230950))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379620 (= res!215405 (or (= (select (arr!10568 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10568 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379621 () Bool)

(declare-fun res!215404 () Bool)

(assert (=> b!379621 (=> (not res!215404) (not e!230950))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379621 (= res!215404 (validKeyInArray!0 k0!778))))

(declare-fun b!379622 () Bool)

(declare-fun e!230952 () Bool)

(assert (=> b!379622 (= e!230952 tp_is_empty!9153)))

(declare-fun mapIsEmpty!15294 () Bool)

(declare-fun mapRes!15294 () Bool)

(assert (=> mapIsEmpty!15294 mapRes!15294))

(declare-fun b!379623 () Bool)

(declare-fun e!230949 () Bool)

(declare-fun e!230951 () Bool)

(assert (=> b!379623 (= e!230949 e!230951)))

(declare-fun res!215414 () Bool)

(assert (=> b!379623 (=> res!215414 e!230951)))

(assert (=> b!379623 (= res!215414 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6152 0))(
  ( (tuple2!6153 (_1!3086 (_ BitVec 64)) (_2!3086 V!13309)) )
))
(declare-datatypes ((List!6024 0))(
  ( (Nil!6021) (Cons!6020 (h!6876 tuple2!6152) (t!11182 List!6024)) )
))
(declare-datatypes ((ListLongMap!5079 0))(
  ( (ListLongMap!5080 (toList!2555 List!6024)) )
))
(declare-fun lt!177473 () ListLongMap!5079)

(declare-fun lt!177476 () ListLongMap!5079)

(assert (=> b!379623 (= lt!177473 lt!177476)))

(declare-fun lt!177483 () ListLongMap!5079)

(declare-fun lt!177475 () tuple2!6152)

(declare-fun +!896 (ListLongMap!5079 tuple2!6152) ListLongMap!5079)

(assert (=> b!379623 (= lt!177476 (+!896 lt!177483 lt!177475))))

(declare-fun lt!177480 () ListLongMap!5079)

(declare-fun lt!177472 () ListLongMap!5079)

(assert (=> b!379623 (= lt!177480 lt!177472)))

(declare-fun lt!177482 () ListLongMap!5079)

(assert (=> b!379623 (= lt!177472 (+!896 lt!177482 lt!177475))))

(declare-fun lt!177484 () ListLongMap!5079)

(assert (=> b!379623 (= lt!177480 (+!896 lt!177484 lt!177475))))

(declare-fun minValue!472 () V!13309)

(assert (=> b!379623 (= lt!177475 (tuple2!6153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379624 () Bool)

(declare-fun e!230955 () Bool)

(assert (=> b!379624 (= e!230955 tp_is_empty!9153)))

(declare-fun b!379625 () Bool)

(declare-fun res!215408 () Bool)

(assert (=> b!379625 (=> (not res!215408) (not e!230950))))

(declare-datatypes ((List!6025 0))(
  ( (Nil!6022) (Cons!6021 (h!6877 (_ BitVec 64)) (t!11183 List!6025)) )
))
(declare-fun arrayNoDuplicates!0 (array!22205 (_ BitVec 32) List!6025) Bool)

(assert (=> b!379625 (= res!215408 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6022))))

(declare-fun b!379626 () Bool)

(declare-fun res!215403 () Bool)

(assert (=> b!379626 (=> (not res!215403) (not e!230950))))

(declare-fun arrayContainsKey!0 (array!22205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379626 (= res!215403 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!379627 () Bool)

(declare-fun e!230953 () Bool)

(assert (=> b!379627 (= e!230953 (not e!230949))))

(declare-fun res!215412 () Bool)

(assert (=> b!379627 (=> res!215412 e!230949)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379627 (= res!215412 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13309)

(declare-fun getCurrentListMap!1980 (array!22205 array!22203 (_ BitVec 32) (_ BitVec 32) V!13309 V!13309 (_ BitVec 32) Int) ListLongMap!5079)

(assert (=> b!379627 (= lt!177473 (getCurrentListMap!1980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177481 () array!22205)

(declare-fun lt!177479 () array!22203)

(assert (=> b!379627 (= lt!177480 (getCurrentListMap!1980 lt!177481 lt!177479 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379627 (and (= lt!177484 lt!177482) (= lt!177482 lt!177484))))

(declare-fun lt!177478 () tuple2!6152)

(assert (=> b!379627 (= lt!177482 (+!896 lt!177483 lt!177478))))

(declare-fun v!373 () V!13309)

(assert (=> b!379627 (= lt!177478 (tuple2!6153 k0!778 v!373))))

(declare-datatypes ((Unit!11687 0))(
  ( (Unit!11688) )
))
(declare-fun lt!177477 () Unit!11687)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!131 (array!22205 array!22203 (_ BitVec 32) (_ BitVec 32) V!13309 V!13309 (_ BitVec 32) (_ BitVec 64) V!13309 (_ BitVec 32) Int) Unit!11687)

(assert (=> b!379627 (= lt!177477 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!131 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!798 (array!22205 array!22203 (_ BitVec 32) (_ BitVec 32) V!13309 V!13309 (_ BitVec 32) Int) ListLongMap!5079)

(assert (=> b!379627 (= lt!177484 (getCurrentListMapNoExtraKeys!798 lt!177481 lt!177479 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379627 (= lt!177479 (array!22204 (store (arr!10567 _values!506) i!548 (ValueCellFull!4233 v!373)) (size!10919 _values!506)))))

(assert (=> b!379627 (= lt!177483 (getCurrentListMapNoExtraKeys!798 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379628 () Bool)

(assert (=> b!379628 (= e!230951 true)))

(assert (=> b!379628 (= lt!177472 (+!896 lt!177476 lt!177478))))

(declare-fun lt!177474 () Unit!11687)

(declare-fun addCommutativeForDiffKeys!308 (ListLongMap!5079 (_ BitVec 64) V!13309 (_ BitVec 64) V!13309) Unit!11687)

(assert (=> b!379628 (= lt!177474 (addCommutativeForDiffKeys!308 lt!177483 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379629 () Bool)

(assert (=> b!379629 (= e!230950 e!230953)))

(declare-fun res!215410 () Bool)

(assert (=> b!379629 (=> (not res!215410) (not e!230953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22205 (_ BitVec 32)) Bool)

(assert (=> b!379629 (= res!215410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177481 mask!970))))

(assert (=> b!379629 (= lt!177481 (array!22206 (store (arr!10568 _keys!658) i!548 k0!778) (size!10920 _keys!658)))))

(declare-fun mapNonEmpty!15294 () Bool)

(declare-fun tp!30230 () Bool)

(assert (=> mapNonEmpty!15294 (= mapRes!15294 (and tp!30230 e!230952))))

(declare-fun mapValue!15294 () ValueCell!4233)

(declare-fun mapKey!15294 () (_ BitVec 32))

(declare-fun mapRest!15294 () (Array (_ BitVec 32) ValueCell!4233))

(assert (=> mapNonEmpty!15294 (= (arr!10567 _values!506) (store mapRest!15294 mapKey!15294 mapValue!15294))))

(declare-fun b!379630 () Bool)

(declare-fun res!215409 () Bool)

(assert (=> b!379630 (=> (not res!215409) (not e!230950))))

(assert (=> b!379630 (= res!215409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379631 () Bool)

(declare-fun res!215411 () Bool)

(assert (=> b!379631 (=> (not res!215411) (not e!230953))))

(assert (=> b!379631 (= res!215411 (arrayNoDuplicates!0 lt!177481 #b00000000000000000000000000000000 Nil!6022))))

(declare-fun b!379632 () Bool)

(declare-fun res!215407 () Bool)

(assert (=> b!379632 (=> (not res!215407) (not e!230950))))

(assert (=> b!379632 (= res!215407 (and (= (size!10919 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10920 _keys!658) (size!10919 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379633 () Bool)

(assert (=> b!379633 (= e!230954 (and e!230955 mapRes!15294))))

(declare-fun condMapEmpty!15294 () Bool)

(declare-fun mapDefault!15294 () ValueCell!4233)

(assert (=> b!379633 (= condMapEmpty!15294 (= (arr!10567 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4233)) mapDefault!15294)))))

(declare-fun b!379634 () Bool)

(declare-fun res!215406 () Bool)

(assert (=> b!379634 (=> (not res!215406) (not e!230950))))

(assert (=> b!379634 (= res!215406 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10920 _keys!658))))))

(assert (= (and start!37386 res!215413) b!379632))

(assert (= (and b!379632 res!215407) b!379630))

(assert (= (and b!379630 res!215409) b!379625))

(assert (= (and b!379625 res!215408) b!379634))

(assert (= (and b!379634 res!215406) b!379621))

(assert (= (and b!379621 res!215404) b!379620))

(assert (= (and b!379620 res!215405) b!379626))

(assert (= (and b!379626 res!215403) b!379629))

(assert (= (and b!379629 res!215410) b!379631))

(assert (= (and b!379631 res!215411) b!379627))

(assert (= (and b!379627 (not res!215412)) b!379623))

(assert (= (and b!379623 (not res!215414)) b!379628))

(assert (= (and b!379633 condMapEmpty!15294) mapIsEmpty!15294))

(assert (= (and b!379633 (not condMapEmpty!15294)) mapNonEmpty!15294))

(get-info :version)

(assert (= (and mapNonEmpty!15294 ((_ is ValueCellFull!4233) mapValue!15294)) b!379622))

(assert (= (and b!379633 ((_ is ValueCellFull!4233) mapDefault!15294)) b!379624))

(assert (= start!37386 b!379633))

(declare-fun m!376565 () Bool)

(assert (=> b!379625 m!376565))

(declare-fun m!376567 () Bool)

(assert (=> start!37386 m!376567))

(declare-fun m!376569 () Bool)

(assert (=> start!37386 m!376569))

(declare-fun m!376571 () Bool)

(assert (=> start!37386 m!376571))

(declare-fun m!376573 () Bool)

(assert (=> b!379620 m!376573))

(declare-fun m!376575 () Bool)

(assert (=> b!379631 m!376575))

(declare-fun m!376577 () Bool)

(assert (=> b!379630 m!376577))

(declare-fun m!376579 () Bool)

(assert (=> b!379621 m!376579))

(declare-fun m!376581 () Bool)

(assert (=> mapNonEmpty!15294 m!376581))

(declare-fun m!376583 () Bool)

(assert (=> b!379627 m!376583))

(declare-fun m!376585 () Bool)

(assert (=> b!379627 m!376585))

(declare-fun m!376587 () Bool)

(assert (=> b!379627 m!376587))

(declare-fun m!376589 () Bool)

(assert (=> b!379627 m!376589))

(declare-fun m!376591 () Bool)

(assert (=> b!379627 m!376591))

(declare-fun m!376593 () Bool)

(assert (=> b!379627 m!376593))

(declare-fun m!376595 () Bool)

(assert (=> b!379627 m!376595))

(declare-fun m!376597 () Bool)

(assert (=> b!379628 m!376597))

(declare-fun m!376599 () Bool)

(assert (=> b!379628 m!376599))

(declare-fun m!376601 () Bool)

(assert (=> b!379626 m!376601))

(declare-fun m!376603 () Bool)

(assert (=> b!379629 m!376603))

(declare-fun m!376605 () Bool)

(assert (=> b!379629 m!376605))

(declare-fun m!376607 () Bool)

(assert (=> b!379623 m!376607))

(declare-fun m!376609 () Bool)

(assert (=> b!379623 m!376609))

(declare-fun m!376611 () Bool)

(assert (=> b!379623 m!376611))

(check-sat (not b!379629) (not b!379623) tp_is_empty!9153 (not b!379621) (not start!37386) (not mapNonEmpty!15294) (not b!379625) (not b!379630) (not b_next!8505) b_and!15765 (not b!379627) (not b!379626) (not b!379628) (not b!379631))
(check-sat b_and!15765 (not b_next!8505))
