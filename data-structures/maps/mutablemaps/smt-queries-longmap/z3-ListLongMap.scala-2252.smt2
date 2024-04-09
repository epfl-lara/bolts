; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36984 () Bool)

(assert start!36984)

(declare-fun b_free!8103 () Bool)

(declare-fun b_next!8103 () Bool)

(assert (=> start!36984 (= b_free!8103 (not b_next!8103))))

(declare-fun tp!29024 () Bool)

(declare-fun b_and!15363 () Bool)

(assert (=> start!36984 (= tp!29024 b_and!15363)))

(declare-fun b!370853 () Bool)

(declare-fun res!208454 () Bool)

(declare-fun e!226430 () Bool)

(assert (=> b!370853 (=> (not res!208454) (not e!226430))))

(declare-datatypes ((array!21417 0))(
  ( (array!21418 (arr!10174 (Array (_ BitVec 32) (_ BitVec 64))) (size!10526 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21417)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370853 (= res!208454 (or (= (select (arr!10174 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10174 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!208449 () Bool)

(assert (=> start!36984 (=> (not res!208449) (not e!226430))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36984 (= res!208449 (validMask!0 mask!970))))

(assert (=> start!36984 e!226430))

(declare-datatypes ((V!12773 0))(
  ( (V!12774 (val!4420 Int)) )
))
(declare-datatypes ((ValueCell!4032 0))(
  ( (ValueCellFull!4032 (v!6613 V!12773)) (EmptyCell!4032) )
))
(declare-datatypes ((array!21419 0))(
  ( (array!21420 (arr!10175 (Array (_ BitVec 32) ValueCell!4032)) (size!10527 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21419)

(declare-fun e!226433 () Bool)

(declare-fun array_inv!7514 (array!21419) Bool)

(assert (=> start!36984 (and (array_inv!7514 _values!506) e!226433)))

(assert (=> start!36984 tp!29024))

(assert (=> start!36984 true))

(declare-fun tp_is_empty!8751 () Bool)

(assert (=> start!36984 tp_is_empty!8751))

(declare-fun array_inv!7515 (array!21417) Bool)

(assert (=> start!36984 (array_inv!7515 _keys!658)))

(declare-fun b!370854 () Bool)

(declare-fun res!208450 () Bool)

(declare-fun e!226434 () Bool)

(assert (=> b!370854 (=> (not res!208450) (not e!226434))))

(declare-fun lt!170099 () array!21417)

(declare-datatypes ((List!5714 0))(
  ( (Nil!5711) (Cons!5710 (h!6566 (_ BitVec 64)) (t!10872 List!5714)) )
))
(declare-fun arrayNoDuplicates!0 (array!21417 (_ BitVec 32) List!5714) Bool)

(assert (=> b!370854 (= res!208450 (arrayNoDuplicates!0 lt!170099 #b00000000000000000000000000000000 Nil!5711))))

(declare-fun b!370855 () Bool)

(declare-fun e!226432 () Bool)

(declare-fun mapRes!14691 () Bool)

(assert (=> b!370855 (= e!226433 (and e!226432 mapRes!14691))))

(declare-fun condMapEmpty!14691 () Bool)

(declare-fun mapDefault!14691 () ValueCell!4032)

(assert (=> b!370855 (= condMapEmpty!14691 (= (arr!10175 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4032)) mapDefault!14691)))))

(declare-fun b!370856 () Bool)

(declare-fun res!208447 () Bool)

(assert (=> b!370856 (=> (not res!208447) (not e!226430))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370856 (= res!208447 (validKeyInArray!0 k0!778))))

(declare-fun b!370857 () Bool)

(declare-fun res!208451 () Bool)

(assert (=> b!370857 (=> (not res!208451) (not e!226430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21417 (_ BitVec 32)) Bool)

(assert (=> b!370857 (= res!208451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370858 () Bool)

(declare-fun res!208446 () Bool)

(assert (=> b!370858 (=> (not res!208446) (not e!226430))))

(declare-fun arrayContainsKey!0 (array!21417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370858 (= res!208446 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!370859 () Bool)

(declare-fun res!208453 () Bool)

(assert (=> b!370859 (=> (not res!208453) (not e!226430))))

(assert (=> b!370859 (= res!208453 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5711))))

(declare-fun b!370860 () Bool)

(declare-fun e!226431 () Bool)

(assert (=> b!370860 (= e!226431 tp_is_empty!8751)))

(declare-fun b!370861 () Bool)

(declare-fun res!208452 () Bool)

(assert (=> b!370861 (=> (not res!208452) (not e!226430))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!370861 (= res!208452 (and (= (size!10527 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10526 _keys!658) (size!10527 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14691 () Bool)

(assert (=> mapIsEmpty!14691 mapRes!14691))

(declare-fun b!370862 () Bool)

(assert (=> b!370862 (= e!226430 e!226434)))

(declare-fun res!208448 () Bool)

(assert (=> b!370862 (=> (not res!208448) (not e!226434))))

(assert (=> b!370862 (= res!208448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170099 mask!970))))

(assert (=> b!370862 (= lt!170099 (array!21418 (store (arr!10174 _keys!658) i!548 k0!778) (size!10526 _keys!658)))))

(declare-fun b!370863 () Bool)

(assert (=> b!370863 (= e!226432 tp_is_empty!8751)))

(declare-fun b!370864 () Bool)

(declare-fun res!208445 () Bool)

(assert (=> b!370864 (=> (not res!208445) (not e!226430))))

(assert (=> b!370864 (= res!208445 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10526 _keys!658))))))

(declare-fun mapNonEmpty!14691 () Bool)

(declare-fun tp!29025 () Bool)

(assert (=> mapNonEmpty!14691 (= mapRes!14691 (and tp!29025 e!226431))))

(declare-fun mapValue!14691 () ValueCell!4032)

(declare-fun mapKey!14691 () (_ BitVec 32))

(declare-fun mapRest!14691 () (Array (_ BitVec 32) ValueCell!4032))

(assert (=> mapNonEmpty!14691 (= (arr!10175 _values!506) (store mapRest!14691 mapKey!14691 mapValue!14691))))

(declare-fun b!370865 () Bool)

(assert (=> b!370865 (= e!226434 (not true))))

(declare-datatypes ((tuple2!5846 0))(
  ( (tuple2!5847 (_1!2933 (_ BitVec 64)) (_2!2933 V!12773)) )
))
(declare-datatypes ((List!5715 0))(
  ( (Nil!5712) (Cons!5711 (h!6567 tuple2!5846) (t!10873 List!5715)) )
))
(declare-datatypes ((ListLongMap!4773 0))(
  ( (ListLongMap!4774 (toList!2402 List!5715)) )
))
(declare-fun lt!170101 () ListLongMap!4773)

(declare-fun lt!170098 () ListLongMap!4773)

(assert (=> b!370865 (and (= lt!170101 lt!170098) (= lt!170098 lt!170101))))

(declare-fun v!373 () V!12773)

(declare-fun lt!170097 () ListLongMap!4773)

(declare-fun +!743 (ListLongMap!4773 tuple2!5846) ListLongMap!4773)

(assert (=> b!370865 (= lt!170098 (+!743 lt!170097 (tuple2!5847 k0!778 v!373)))))

(declare-datatypes ((Unit!11391 0))(
  ( (Unit!11392) )
))
(declare-fun lt!170100 () Unit!11391)

(declare-fun zeroValue!472 () V!12773)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!12773)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!3 (array!21417 array!21419 (_ BitVec 32) (_ BitVec 32) V!12773 V!12773 (_ BitVec 32) (_ BitVec 64) V!12773 (_ BitVec 32) Int) Unit!11391)

(assert (=> b!370865 (= lt!170100 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!3 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!670 (array!21417 array!21419 (_ BitVec 32) (_ BitVec 32) V!12773 V!12773 (_ BitVec 32) Int) ListLongMap!4773)

(assert (=> b!370865 (= lt!170101 (getCurrentListMapNoExtraKeys!670 lt!170099 (array!21420 (store (arr!10175 _values!506) i!548 (ValueCellFull!4032 v!373)) (size!10527 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!370865 (= lt!170097 (getCurrentListMapNoExtraKeys!670 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!36984 res!208449) b!370861))

(assert (= (and b!370861 res!208452) b!370857))

(assert (= (and b!370857 res!208451) b!370859))

(assert (= (and b!370859 res!208453) b!370864))

(assert (= (and b!370864 res!208445) b!370856))

(assert (= (and b!370856 res!208447) b!370853))

(assert (= (and b!370853 res!208454) b!370858))

(assert (= (and b!370858 res!208446) b!370862))

(assert (= (and b!370862 res!208448) b!370854))

(assert (= (and b!370854 res!208450) b!370865))

(assert (= (and b!370855 condMapEmpty!14691) mapIsEmpty!14691))

(assert (= (and b!370855 (not condMapEmpty!14691)) mapNonEmpty!14691))

(get-info :version)

(assert (= (and mapNonEmpty!14691 ((_ is ValueCellFull!4032) mapValue!14691)) b!370860))

(assert (= (and b!370855 ((_ is ValueCellFull!4032) mapDefault!14691)) b!370863))

(assert (= start!36984 b!370855))

(declare-fun m!366915 () Bool)

(assert (=> b!370853 m!366915))

(declare-fun m!366917 () Bool)

(assert (=> b!370856 m!366917))

(declare-fun m!366919 () Bool)

(assert (=> b!370857 m!366919))

(declare-fun m!366921 () Bool)

(assert (=> start!36984 m!366921))

(declare-fun m!366923 () Bool)

(assert (=> start!36984 m!366923))

(declare-fun m!366925 () Bool)

(assert (=> start!36984 m!366925))

(declare-fun m!366927 () Bool)

(assert (=> b!370862 m!366927))

(declare-fun m!366929 () Bool)

(assert (=> b!370862 m!366929))

(declare-fun m!366931 () Bool)

(assert (=> b!370865 m!366931))

(declare-fun m!366933 () Bool)

(assert (=> b!370865 m!366933))

(declare-fun m!366935 () Bool)

(assert (=> b!370865 m!366935))

(declare-fun m!366937 () Bool)

(assert (=> b!370865 m!366937))

(declare-fun m!366939 () Bool)

(assert (=> b!370865 m!366939))

(declare-fun m!366941 () Bool)

(assert (=> mapNonEmpty!14691 m!366941))

(declare-fun m!366943 () Bool)

(assert (=> b!370858 m!366943))

(declare-fun m!366945 () Bool)

(assert (=> b!370859 m!366945))

(declare-fun m!366947 () Bool)

(assert (=> b!370854 m!366947))

(check-sat (not b!370862) (not b!370856) (not b!370865) (not b!370858) (not b!370859) (not start!36984) (not b_next!8103) (not mapNonEmpty!14691) (not b!370857) (not b!370854) tp_is_empty!8751 b_and!15363)
(check-sat b_and!15363 (not b_next!8103))
