; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38120 () Bool)

(assert start!38120)

(declare-fun b_free!9015 () Bool)

(declare-fun b_next!9015 () Bool)

(assert (=> start!38120 (= b_free!9015 (not b_next!9015))))

(declare-fun tp!31824 () Bool)

(declare-fun b_and!16383 () Bool)

(assert (=> start!38120 (= tp!31824 b_and!16383)))

(declare-fun b!392445 () Bool)

(declare-fun res!224820 () Bool)

(declare-fun e!237657 () Bool)

(assert (=> b!392445 (=> (not res!224820) (not e!237657))))

(declare-datatypes ((array!23253 0))(
  ( (array!23254 (arr!11083 (Array (_ BitVec 32) (_ BitVec 64))) (size!11435 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23253)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23253 (_ BitVec 32)) Bool)

(assert (=> b!392445 (= res!224820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!392446 () Bool)

(declare-fun e!237655 () Bool)

(declare-fun tp_is_empty!9687 () Bool)

(assert (=> b!392446 (= e!237655 tp_is_empty!9687)))

(declare-fun b!392447 () Bool)

(declare-fun res!224827 () Bool)

(assert (=> b!392447 (=> (not res!224827) (not e!237657))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!14021 0))(
  ( (V!14022 (val!4888 Int)) )
))
(declare-datatypes ((ValueCell!4500 0))(
  ( (ValueCellFull!4500 (v!7117 V!14021)) (EmptyCell!4500) )
))
(declare-datatypes ((array!23255 0))(
  ( (array!23256 (arr!11084 (Array (_ BitVec 32) ValueCell!4500)) (size!11436 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23255)

(assert (=> b!392447 (= res!224827 (and (= (size!11436 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11435 _keys!658) (size!11436 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!392448 () Bool)

(declare-fun res!224821 () Bool)

(assert (=> b!392448 (=> (not res!224821) (not e!237657))))

(declare-datatypes ((List!6408 0))(
  ( (Nil!6405) (Cons!6404 (h!7260 (_ BitVec 64)) (t!11584 List!6408)) )
))
(declare-fun arrayNoDuplicates!0 (array!23253 (_ BitVec 32) List!6408) Bool)

(assert (=> b!392448 (= res!224821 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6405))))

(declare-fun b!392449 () Bool)

(declare-fun res!224822 () Bool)

(declare-fun e!237659 () Bool)

(assert (=> b!392449 (=> (not res!224822) (not e!237659))))

(declare-fun lt!185536 () array!23253)

(assert (=> b!392449 (= res!224822 (arrayNoDuplicates!0 lt!185536 #b00000000000000000000000000000000 Nil!6405))))

(declare-fun b!392450 () Bool)

(declare-fun res!224817 () Bool)

(assert (=> b!392450 (=> (not res!224817) (not e!237657))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!392450 (= res!224817 (validKeyInArray!0 k0!778))))

(declare-fun b!392451 () Bool)

(declare-fun e!237658 () Bool)

(assert (=> b!392451 (= e!237658 tp_is_empty!9687)))

(declare-fun b!392453 () Bool)

(declare-fun e!237662 () Bool)

(declare-fun mapRes!16122 () Bool)

(assert (=> b!392453 (= e!237662 (and e!237658 mapRes!16122))))

(declare-fun condMapEmpty!16122 () Bool)

(declare-fun mapDefault!16122 () ValueCell!4500)

(assert (=> b!392453 (= condMapEmpty!16122 (= (arr!11084 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4500)) mapDefault!16122)))))

(declare-fun b!392454 () Bool)

(declare-fun res!224819 () Bool)

(assert (=> b!392454 (=> (not res!224819) (not e!237657))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!392454 (= res!224819 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11435 _keys!658))))))

(declare-fun b!392455 () Bool)

(declare-fun e!237660 () Bool)

(assert (=> b!392455 (= e!237659 (not e!237660))))

(declare-fun res!224825 () Bool)

(assert (=> b!392455 (=> res!224825 e!237660)))

(assert (=> b!392455 (= res!224825 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6526 0))(
  ( (tuple2!6527 (_1!3273 (_ BitVec 64)) (_2!3273 V!14021)) )
))
(declare-datatypes ((List!6409 0))(
  ( (Nil!6406) (Cons!6405 (h!7261 tuple2!6526) (t!11585 List!6409)) )
))
(declare-datatypes ((ListLongMap!5453 0))(
  ( (ListLongMap!5454 (toList!2742 List!6409)) )
))
(declare-fun lt!185541 () ListLongMap!5453)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14021)

(declare-fun minValue!472 () V!14021)

(declare-fun getCurrentListMap!2106 (array!23253 array!23255 (_ BitVec 32) (_ BitVec 32) V!14021 V!14021 (_ BitVec 32) Int) ListLongMap!5453)

(assert (=> b!392455 (= lt!185541 (getCurrentListMap!2106 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185537 () array!23255)

(declare-fun lt!185543 () ListLongMap!5453)

(assert (=> b!392455 (= lt!185543 (getCurrentListMap!2106 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185540 () ListLongMap!5453)

(declare-fun lt!185538 () ListLongMap!5453)

(assert (=> b!392455 (and (= lt!185540 lt!185538) (= lt!185538 lt!185540))))

(declare-fun v!373 () V!14021)

(declare-fun lt!185542 () ListLongMap!5453)

(declare-fun +!1040 (ListLongMap!5453 tuple2!6526) ListLongMap!5453)

(assert (=> b!392455 (= lt!185538 (+!1040 lt!185542 (tuple2!6527 k0!778 v!373)))))

(declare-datatypes ((Unit!11973 0))(
  ( (Unit!11974) )
))
(declare-fun lt!185544 () Unit!11973)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!263 (array!23253 array!23255 (_ BitVec 32) (_ BitVec 32) V!14021 V!14021 (_ BitVec 32) (_ BitVec 64) V!14021 (_ BitVec 32) Int) Unit!11973)

(assert (=> b!392455 (= lt!185544 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!263 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!968 (array!23253 array!23255 (_ BitVec 32) (_ BitVec 32) V!14021 V!14021 (_ BitVec 32) Int) ListLongMap!5453)

(assert (=> b!392455 (= lt!185540 (getCurrentListMapNoExtraKeys!968 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392455 (= lt!185537 (array!23256 (store (arr!11084 _values!506) i!548 (ValueCellFull!4500 v!373)) (size!11436 _values!506)))))

(assert (=> b!392455 (= lt!185542 (getCurrentListMapNoExtraKeys!968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392456 () Bool)

(assert (=> b!392456 (= e!237660 (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!237656 () Bool)

(assert (=> b!392456 e!237656))

(declare-fun res!224828 () Bool)

(assert (=> b!392456 (=> (not res!224828) (not e!237656))))

(declare-fun lt!185539 () tuple2!6526)

(assert (=> b!392456 (= res!224828 (= lt!185543 (+!1040 lt!185540 lt!185539)))))

(assert (=> b!392456 (= lt!185539 (tuple2!6527 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapIsEmpty!16122 () Bool)

(assert (=> mapIsEmpty!16122 mapRes!16122))

(declare-fun mapNonEmpty!16122 () Bool)

(declare-fun tp!31823 () Bool)

(assert (=> mapNonEmpty!16122 (= mapRes!16122 (and tp!31823 e!237655))))

(declare-fun mapRest!16122 () (Array (_ BitVec 32) ValueCell!4500))

(declare-fun mapValue!16122 () ValueCell!4500)

(declare-fun mapKey!16122 () (_ BitVec 32))

(assert (=> mapNonEmpty!16122 (= (arr!11084 _values!506) (store mapRest!16122 mapKey!16122 mapValue!16122))))

(declare-fun b!392457 () Bool)

(assert (=> b!392457 (= e!237656 (= lt!185541 (+!1040 lt!185542 lt!185539)))))

(declare-fun b!392458 () Bool)

(assert (=> b!392458 (= e!237657 e!237659)))

(declare-fun res!224829 () Bool)

(assert (=> b!392458 (=> (not res!224829) (not e!237659))))

(assert (=> b!392458 (= res!224829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185536 mask!970))))

(assert (=> b!392458 (= lt!185536 (array!23254 (store (arr!11083 _keys!658) i!548 k0!778) (size!11435 _keys!658)))))

(declare-fun b!392452 () Bool)

(declare-fun res!224823 () Bool)

(assert (=> b!392452 (=> (not res!224823) (not e!237657))))

(declare-fun arrayContainsKey!0 (array!23253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!392452 (= res!224823 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!224824 () Bool)

(assert (=> start!38120 (=> (not res!224824) (not e!237657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38120 (= res!224824 (validMask!0 mask!970))))

(assert (=> start!38120 e!237657))

(declare-fun array_inv!8124 (array!23255) Bool)

(assert (=> start!38120 (and (array_inv!8124 _values!506) e!237662)))

(assert (=> start!38120 tp!31824))

(assert (=> start!38120 true))

(assert (=> start!38120 tp_is_empty!9687))

(declare-fun array_inv!8125 (array!23253) Bool)

(assert (=> start!38120 (array_inv!8125 _keys!658)))

(declare-fun b!392459 () Bool)

(declare-fun res!224818 () Bool)

(assert (=> b!392459 (=> (not res!224818) (not e!237656))))

(assert (=> b!392459 (= res!224818 (= lt!185543 (+!1040 lt!185538 lt!185539)))))

(declare-fun b!392460 () Bool)

(declare-fun res!224826 () Bool)

(assert (=> b!392460 (=> (not res!224826) (not e!237657))))

(assert (=> b!392460 (= res!224826 (or (= (select (arr!11083 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11083 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!38120 res!224824) b!392447))

(assert (= (and b!392447 res!224827) b!392445))

(assert (= (and b!392445 res!224820) b!392448))

(assert (= (and b!392448 res!224821) b!392454))

(assert (= (and b!392454 res!224819) b!392450))

(assert (= (and b!392450 res!224817) b!392460))

(assert (= (and b!392460 res!224826) b!392452))

(assert (= (and b!392452 res!224823) b!392458))

(assert (= (and b!392458 res!224829) b!392449))

(assert (= (and b!392449 res!224822) b!392455))

(assert (= (and b!392455 (not res!224825)) b!392456))

(assert (= (and b!392456 res!224828) b!392459))

(assert (= (and b!392459 res!224818) b!392457))

(assert (= (and b!392453 condMapEmpty!16122) mapIsEmpty!16122))

(assert (= (and b!392453 (not condMapEmpty!16122)) mapNonEmpty!16122))

(get-info :version)

(assert (= (and mapNonEmpty!16122 ((_ is ValueCellFull!4500) mapValue!16122)) b!392446))

(assert (= (and b!392453 ((_ is ValueCellFull!4500) mapDefault!16122)) b!392451))

(assert (= start!38120 b!392453))

(declare-fun m!388901 () Bool)

(assert (=> b!392455 m!388901))

(declare-fun m!388903 () Bool)

(assert (=> b!392455 m!388903))

(declare-fun m!388905 () Bool)

(assert (=> b!392455 m!388905))

(declare-fun m!388907 () Bool)

(assert (=> b!392455 m!388907))

(declare-fun m!388909 () Bool)

(assert (=> b!392455 m!388909))

(declare-fun m!388911 () Bool)

(assert (=> b!392455 m!388911))

(declare-fun m!388913 () Bool)

(assert (=> b!392455 m!388913))

(declare-fun m!388915 () Bool)

(assert (=> b!392458 m!388915))

(declare-fun m!388917 () Bool)

(assert (=> b!392458 m!388917))

(declare-fun m!388919 () Bool)

(assert (=> b!392449 m!388919))

(declare-fun m!388921 () Bool)

(assert (=> mapNonEmpty!16122 m!388921))

(declare-fun m!388923 () Bool)

(assert (=> b!392456 m!388923))

(declare-fun m!388925 () Bool)

(assert (=> b!392450 m!388925))

(declare-fun m!388927 () Bool)

(assert (=> b!392459 m!388927))

(declare-fun m!388929 () Bool)

(assert (=> b!392448 m!388929))

(declare-fun m!388931 () Bool)

(assert (=> start!38120 m!388931))

(declare-fun m!388933 () Bool)

(assert (=> start!38120 m!388933))

(declare-fun m!388935 () Bool)

(assert (=> start!38120 m!388935))

(declare-fun m!388937 () Bool)

(assert (=> b!392452 m!388937))

(declare-fun m!388939 () Bool)

(assert (=> b!392460 m!388939))

(declare-fun m!388941 () Bool)

(assert (=> b!392445 m!388941))

(declare-fun m!388943 () Bool)

(assert (=> b!392457 m!388943))

(check-sat (not b!392452) (not b!392455) (not mapNonEmpty!16122) (not b!392456) (not b!392450) (not b!392445) (not b!392457) b_and!16383 (not b_next!9015) (not start!38120) (not b!392448) (not b!392449) tp_is_empty!9687 (not b!392458) (not b!392459))
(check-sat b_and!16383 (not b_next!9015))
(get-model)

(declare-fun b!392533 () Bool)

(declare-fun res!224880 () Bool)

(declare-fun e!237706 () Bool)

(assert (=> b!392533 (=> (not res!224880) (not e!237706))))

(declare-fun lt!185591 () ListLongMap!5453)

(declare-fun contains!2468 (ListLongMap!5453 (_ BitVec 64)) Bool)

(assert (=> b!392533 (= res!224880 (not (contains!2468 lt!185591 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392534 () Bool)

(declare-fun lt!185589 () Unit!11973)

(declare-fun lt!185587 () Unit!11973)

(assert (=> b!392534 (= lt!185589 lt!185587)))

(declare-fun lt!185588 () ListLongMap!5453)

(declare-fun lt!185586 () V!14021)

(declare-fun lt!185592 () (_ BitVec 64))

(declare-fun lt!185590 () (_ BitVec 64))

(assert (=> b!392534 (not (contains!2468 (+!1040 lt!185588 (tuple2!6527 lt!185590 lt!185586)) lt!185592))))

(declare-fun addStillNotContains!141 (ListLongMap!5453 (_ BitVec 64) V!14021 (_ BitVec 64)) Unit!11973)

(assert (=> b!392534 (= lt!185587 (addStillNotContains!141 lt!185588 lt!185590 lt!185586 lt!185592))))

(assert (=> b!392534 (= lt!185592 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!5609 (ValueCell!4500 V!14021) V!14021)

(declare-fun dynLambda!644 (Int (_ BitVec 64)) V!14021)

(assert (=> b!392534 (= lt!185586 (get!5609 (select (arr!11084 _values!506) #b00000000000000000000000000000000) (dynLambda!644 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!392534 (= lt!185590 (select (arr!11083 _keys!658) #b00000000000000000000000000000000))))

(declare-fun call!27722 () ListLongMap!5453)

(assert (=> b!392534 (= lt!185588 call!27722)))

(declare-fun e!237701 () ListLongMap!5453)

(assert (=> b!392534 (= e!237701 (+!1040 call!27722 (tuple2!6527 (select (arr!11083 _keys!658) #b00000000000000000000000000000000) (get!5609 (select (arr!11084 _values!506) #b00000000000000000000000000000000) (dynLambda!644 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!392536 () Bool)

(declare-fun e!237704 () Bool)

(assert (=> b!392536 (= e!237704 (= lt!185591 (getCurrentListMapNoExtraKeys!968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!392537 () Bool)

(declare-fun e!237707 () Bool)

(assert (=> b!392537 (= e!237707 (validKeyInArray!0 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!392537 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!27719 () Bool)

(assert (=> bm!27719 (= call!27722 (getCurrentListMapNoExtraKeys!968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!392538 () Bool)

(assert (=> b!392538 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(assert (=> b!392538 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11436 _values!506)))))

(declare-fun e!237703 () Bool)

(declare-fun apply!306 (ListLongMap!5453 (_ BitVec 64)) V!14021)

(assert (=> b!392538 (= e!237703 (= (apply!306 lt!185591 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)) (get!5609 (select (arr!11084 _values!506) #b00000000000000000000000000000000) (dynLambda!644 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!392539 () Bool)

(declare-fun e!237702 () Bool)

(assert (=> b!392539 (= e!237706 e!237702)))

(declare-fun c!54319 () Bool)

(assert (=> b!392539 (= c!54319 e!237707)))

(declare-fun res!224877 () Bool)

(assert (=> b!392539 (=> (not res!224877) (not e!237707))))

(assert (=> b!392539 (= res!224877 (bvslt #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(declare-fun b!392540 () Bool)

(assert (=> b!392540 (= e!237702 e!237704)))

(declare-fun c!54317 () Bool)

(assert (=> b!392540 (= c!54317 (bvslt #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(declare-fun b!392541 () Bool)

(assert (=> b!392541 (= e!237702 e!237703)))

(assert (=> b!392541 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(declare-fun res!224878 () Bool)

(assert (=> b!392541 (= res!224878 (contains!2468 lt!185591 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!392541 (=> (not res!224878) (not e!237703))))

(declare-fun b!392542 () Bool)

(declare-fun e!237705 () ListLongMap!5453)

(assert (=> b!392542 (= e!237705 (ListLongMap!5454 Nil!6406))))

(declare-fun d!73037 () Bool)

(assert (=> d!73037 e!237706))

(declare-fun res!224879 () Bool)

(assert (=> d!73037 (=> (not res!224879) (not e!237706))))

(assert (=> d!73037 (= res!224879 (not (contains!2468 lt!185591 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!73037 (= lt!185591 e!237705)))

(declare-fun c!54318 () Bool)

(assert (=> d!73037 (= c!54318 (bvsge #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(assert (=> d!73037 (validMask!0 mask!970)))

(assert (=> d!73037 (= (getCurrentListMapNoExtraKeys!968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185591)))

(declare-fun b!392535 () Bool)

(declare-fun isEmpty!557 (ListLongMap!5453) Bool)

(assert (=> b!392535 (= e!237704 (isEmpty!557 lt!185591))))

(declare-fun b!392543 () Bool)

(assert (=> b!392543 (= e!237705 e!237701)))

(declare-fun c!54320 () Bool)

(assert (=> b!392543 (= c!54320 (validKeyInArray!0 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!392544 () Bool)

(assert (=> b!392544 (= e!237701 call!27722)))

(assert (= (and d!73037 c!54318) b!392542))

(assert (= (and d!73037 (not c!54318)) b!392543))

(assert (= (and b!392543 c!54320) b!392534))

(assert (= (and b!392543 (not c!54320)) b!392544))

(assert (= (or b!392534 b!392544) bm!27719))

(assert (= (and d!73037 res!224879) b!392533))

(assert (= (and b!392533 res!224880) b!392539))

(assert (= (and b!392539 res!224877) b!392537))

(assert (= (and b!392539 c!54319) b!392541))

(assert (= (and b!392539 (not c!54319)) b!392540))

(assert (= (and b!392541 res!224878) b!392538))

(assert (= (and b!392540 c!54317) b!392536))

(assert (= (and b!392540 (not c!54317)) b!392535))

(declare-fun b_lambda!8773 () Bool)

(assert (=> (not b_lambda!8773) (not b!392534)))

(declare-fun t!11587 () Bool)

(declare-fun tb!3135 () Bool)

(assert (=> (and start!38120 (= defaultEntry!514 defaultEntry!514) t!11587) tb!3135))

(declare-fun result!5769 () Bool)

(assert (=> tb!3135 (= result!5769 tp_is_empty!9687)))

(assert (=> b!392534 t!11587))

(declare-fun b_and!16387 () Bool)

(assert (= b_and!16383 (and (=> t!11587 result!5769) b_and!16387)))

(declare-fun b_lambda!8775 () Bool)

(assert (=> (not b_lambda!8775) (not b!392538)))

(assert (=> b!392538 t!11587))

(declare-fun b_and!16389 () Bool)

(assert (= b_and!16387 (and (=> t!11587 result!5769) b_and!16389)))

(declare-fun m!388989 () Bool)

(assert (=> b!392541 m!388989))

(assert (=> b!392541 m!388989))

(declare-fun m!388991 () Bool)

(assert (=> b!392541 m!388991))

(declare-fun m!388993 () Bool)

(assert (=> b!392535 m!388993))

(declare-fun m!388995 () Bool)

(assert (=> bm!27719 m!388995))

(declare-fun m!388997 () Bool)

(assert (=> b!392533 m!388997))

(assert (=> b!392543 m!388989))

(assert (=> b!392543 m!388989))

(declare-fun m!388999 () Bool)

(assert (=> b!392543 m!388999))

(declare-fun m!389001 () Bool)

(assert (=> d!73037 m!389001))

(assert (=> d!73037 m!388931))

(declare-fun m!389003 () Bool)

(assert (=> b!392538 m!389003))

(assert (=> b!392538 m!388989))

(declare-fun m!389005 () Bool)

(assert (=> b!392538 m!389005))

(assert (=> b!392538 m!388989))

(declare-fun m!389007 () Bool)

(assert (=> b!392538 m!389007))

(assert (=> b!392538 m!389007))

(assert (=> b!392538 m!389003))

(declare-fun m!389009 () Bool)

(assert (=> b!392538 m!389009))

(assert (=> b!392534 m!389003))

(declare-fun m!389011 () Bool)

(assert (=> b!392534 m!389011))

(declare-fun m!389013 () Bool)

(assert (=> b!392534 m!389013))

(declare-fun m!389015 () Bool)

(assert (=> b!392534 m!389015))

(assert (=> b!392534 m!388989))

(declare-fun m!389017 () Bool)

(assert (=> b!392534 m!389017))

(assert (=> b!392534 m!389007))

(assert (=> b!392534 m!389011))

(assert (=> b!392534 m!389007))

(assert (=> b!392534 m!389003))

(assert (=> b!392534 m!389009))

(assert (=> b!392537 m!388989))

(assert (=> b!392537 m!388989))

(assert (=> b!392537 m!388999))

(assert (=> b!392536 m!388995))

(assert (=> b!392455 d!73037))

(declare-fun b!392589 () Bool)

(declare-fun e!237742 () Bool)

(declare-fun e!237737 () Bool)

(assert (=> b!392589 (= e!237742 e!237737)))

(declare-fun res!224905 () Bool)

(assert (=> b!392589 (=> (not res!224905) (not e!237737))))

(declare-fun lt!185655 () ListLongMap!5453)

(assert (=> b!392589 (= res!224905 (contains!2468 lt!185655 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!392589 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(declare-fun b!392590 () Bool)

(declare-fun e!237739 () Bool)

(declare-fun e!237744 () Bool)

(assert (=> b!392590 (= e!237739 e!237744)))

(declare-fun c!54335 () Bool)

(assert (=> b!392590 (= c!54335 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!392591 () Bool)

(declare-fun e!237738 () Unit!11973)

(declare-fun Unit!11975 () Unit!11973)

(assert (=> b!392591 (= e!237738 Unit!11975)))

(declare-fun bm!27734 () Bool)

(declare-fun call!27742 () ListLongMap!5453)

(assert (=> bm!27734 (= call!27742 (getCurrentListMapNoExtraKeys!968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392592 () Bool)

(declare-fun e!237734 () ListLongMap!5453)

(declare-fun call!27738 () ListLongMap!5453)

(assert (=> b!392592 (= e!237734 call!27738)))

(declare-fun bm!27735 () Bool)

(declare-fun call!27739 () Bool)

(assert (=> bm!27735 (= call!27739 (contains!2468 lt!185655 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!27743 () ListLongMap!5453)

(declare-fun bm!27736 () Bool)

(declare-fun call!27741 () ListLongMap!5453)

(declare-fun c!54333 () Bool)

(declare-fun c!54334 () Bool)

(declare-fun call!27740 () ListLongMap!5453)

(assert (=> bm!27736 (= call!27743 (+!1040 (ite c!54333 call!27742 (ite c!54334 call!27741 call!27740)) (ite (or c!54333 c!54334) (tuple2!6527 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6527 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!392593 () Bool)

(declare-fun e!237745 () Bool)

(assert (=> b!392593 (= e!237745 (validKeyInArray!0 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!392594 () Bool)

(declare-fun e!237740 () ListLongMap!5453)

(assert (=> b!392594 (= e!237740 (+!1040 call!27743 (tuple2!6527 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!392595 () Bool)

(declare-fun e!237746 () Bool)

(assert (=> b!392595 (= e!237746 (= (apply!306 lt!185655 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!392596 () Bool)

(declare-fun c!54337 () Bool)

(assert (=> b!392596 (= c!54337 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!237743 () ListLongMap!5453)

(assert (=> b!392596 (= e!237734 e!237743)))

(declare-fun b!392597 () Bool)

(declare-fun e!237741 () Bool)

(assert (=> b!392597 (= e!237741 (= (apply!306 lt!185655 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!392598 () Bool)

(assert (=> b!392598 (= e!237743 call!27738)))

(declare-fun bm!27737 () Bool)

(assert (=> bm!27737 (= call!27740 call!27741)))

(declare-fun b!392599 () Bool)

(declare-fun e!237735 () Bool)

(assert (=> b!392599 (= e!237735 (validKeyInArray!0 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!392600 () Bool)

(declare-fun res!224907 () Bool)

(assert (=> b!392600 (=> (not res!224907) (not e!237739))))

(assert (=> b!392600 (= res!224907 e!237742)))

(declare-fun res!224904 () Bool)

(assert (=> b!392600 (=> res!224904 e!237742)))

(assert (=> b!392600 (= res!224904 (not e!237735))))

(declare-fun res!224906 () Bool)

(assert (=> b!392600 (=> (not res!224906) (not e!237735))))

(assert (=> b!392600 (= res!224906 (bvslt #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(declare-fun b!392601 () Bool)

(assert (=> b!392601 (= e!237744 e!237746)))

(declare-fun res!224902 () Bool)

(assert (=> b!392601 (= res!224902 call!27739)))

(assert (=> b!392601 (=> (not res!224902) (not e!237746))))

(declare-fun b!392602 () Bool)

(declare-fun res!224903 () Bool)

(assert (=> b!392602 (=> (not res!224903) (not e!237739))))

(declare-fun e!237736 () Bool)

(assert (=> b!392602 (= res!224903 e!237736)))

(declare-fun c!54338 () Bool)

(assert (=> b!392602 (= c!54338 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!392603 () Bool)

(assert (=> b!392603 (= e!237740 e!237734)))

(assert (=> b!392603 (= c!54334 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!392604 () Bool)

(assert (=> b!392604 (= e!237737 (= (apply!306 lt!185655 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)) (get!5609 (select (arr!11084 _values!506) #b00000000000000000000000000000000) (dynLambda!644 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!392604 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11436 _values!506)))))

(assert (=> b!392604 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(declare-fun b!392605 () Bool)

(assert (=> b!392605 (= e!237736 e!237741)))

(declare-fun res!224901 () Bool)

(declare-fun call!27737 () Bool)

(assert (=> b!392605 (= res!224901 call!27737)))

(assert (=> b!392605 (=> (not res!224901) (not e!237741))))

(declare-fun bm!27738 () Bool)

(assert (=> bm!27738 (= call!27737 (contains!2468 lt!185655 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27739 () Bool)

(assert (=> bm!27739 (= call!27741 call!27742)))

(declare-fun d!73039 () Bool)

(assert (=> d!73039 e!237739))

(declare-fun res!224899 () Bool)

(assert (=> d!73039 (=> (not res!224899) (not e!237739))))

(assert (=> d!73039 (= res!224899 (or (bvsge #b00000000000000000000000000000000 (size!11435 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11435 _keys!658)))))))

(declare-fun lt!185658 () ListLongMap!5453)

(assert (=> d!73039 (= lt!185655 lt!185658)))

(declare-fun lt!185637 () Unit!11973)

(assert (=> d!73039 (= lt!185637 e!237738)))

(declare-fun c!54336 () Bool)

(assert (=> d!73039 (= c!54336 e!237745)))

(declare-fun res!224900 () Bool)

(assert (=> d!73039 (=> (not res!224900) (not e!237745))))

(assert (=> d!73039 (= res!224900 (bvslt #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(assert (=> d!73039 (= lt!185658 e!237740)))

(assert (=> d!73039 (= c!54333 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!73039 (validMask!0 mask!970)))

(assert (=> d!73039 (= (getCurrentListMap!2106 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185655)))

(declare-fun bm!27740 () Bool)

(assert (=> bm!27740 (= call!27738 call!27743)))

(declare-fun b!392606 () Bool)

(assert (=> b!392606 (= e!237744 (not call!27739))))

(declare-fun b!392607 () Bool)

(assert (=> b!392607 (= e!237736 (not call!27737))))

(declare-fun b!392608 () Bool)

(assert (=> b!392608 (= e!237743 call!27740)))

(declare-fun b!392609 () Bool)

(declare-fun lt!185645 () Unit!11973)

(assert (=> b!392609 (= e!237738 lt!185645)))

(declare-fun lt!185646 () ListLongMap!5453)

(assert (=> b!392609 (= lt!185646 (getCurrentListMapNoExtraKeys!968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185642 () (_ BitVec 64))

(assert (=> b!392609 (= lt!185642 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185650 () (_ BitVec 64))

(assert (=> b!392609 (= lt!185650 (select (arr!11083 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185640 () Unit!11973)

(declare-fun addStillContains!282 (ListLongMap!5453 (_ BitVec 64) V!14021 (_ BitVec 64)) Unit!11973)

(assert (=> b!392609 (= lt!185640 (addStillContains!282 lt!185646 lt!185642 zeroValue!472 lt!185650))))

(assert (=> b!392609 (contains!2468 (+!1040 lt!185646 (tuple2!6527 lt!185642 zeroValue!472)) lt!185650)))

(declare-fun lt!185639 () Unit!11973)

(assert (=> b!392609 (= lt!185639 lt!185640)))

(declare-fun lt!185651 () ListLongMap!5453)

(assert (=> b!392609 (= lt!185651 (getCurrentListMapNoExtraKeys!968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185644 () (_ BitVec 64))

(assert (=> b!392609 (= lt!185644 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185641 () (_ BitVec 64))

(assert (=> b!392609 (= lt!185641 (select (arr!11083 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185657 () Unit!11973)

(declare-fun addApplyDifferent!282 (ListLongMap!5453 (_ BitVec 64) V!14021 (_ BitVec 64)) Unit!11973)

(assert (=> b!392609 (= lt!185657 (addApplyDifferent!282 lt!185651 lt!185644 minValue!472 lt!185641))))

(assert (=> b!392609 (= (apply!306 (+!1040 lt!185651 (tuple2!6527 lt!185644 minValue!472)) lt!185641) (apply!306 lt!185651 lt!185641))))

(declare-fun lt!185648 () Unit!11973)

(assert (=> b!392609 (= lt!185648 lt!185657)))

(declare-fun lt!185652 () ListLongMap!5453)

(assert (=> b!392609 (= lt!185652 (getCurrentListMapNoExtraKeys!968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185653 () (_ BitVec 64))

(assert (=> b!392609 (= lt!185653 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185656 () (_ BitVec 64))

(assert (=> b!392609 (= lt!185656 (select (arr!11083 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185647 () Unit!11973)

(assert (=> b!392609 (= lt!185647 (addApplyDifferent!282 lt!185652 lt!185653 zeroValue!472 lt!185656))))

(assert (=> b!392609 (= (apply!306 (+!1040 lt!185652 (tuple2!6527 lt!185653 zeroValue!472)) lt!185656) (apply!306 lt!185652 lt!185656))))

(declare-fun lt!185654 () Unit!11973)

(assert (=> b!392609 (= lt!185654 lt!185647)))

(declare-fun lt!185643 () ListLongMap!5453)

(assert (=> b!392609 (= lt!185643 (getCurrentListMapNoExtraKeys!968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185649 () (_ BitVec 64))

(assert (=> b!392609 (= lt!185649 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185638 () (_ BitVec 64))

(assert (=> b!392609 (= lt!185638 (select (arr!11083 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!392609 (= lt!185645 (addApplyDifferent!282 lt!185643 lt!185649 minValue!472 lt!185638))))

(assert (=> b!392609 (= (apply!306 (+!1040 lt!185643 (tuple2!6527 lt!185649 minValue!472)) lt!185638) (apply!306 lt!185643 lt!185638))))

(assert (= (and d!73039 c!54333) b!392594))

(assert (= (and d!73039 (not c!54333)) b!392603))

(assert (= (and b!392603 c!54334) b!392592))

(assert (= (and b!392603 (not c!54334)) b!392596))

(assert (= (and b!392596 c!54337) b!392598))

(assert (= (and b!392596 (not c!54337)) b!392608))

(assert (= (or b!392598 b!392608) bm!27737))

(assert (= (or b!392592 bm!27737) bm!27739))

(assert (= (or b!392592 b!392598) bm!27740))

(assert (= (or b!392594 bm!27739) bm!27734))

(assert (= (or b!392594 bm!27740) bm!27736))

(assert (= (and d!73039 res!224900) b!392593))

(assert (= (and d!73039 c!54336) b!392609))

(assert (= (and d!73039 (not c!54336)) b!392591))

(assert (= (and d!73039 res!224899) b!392600))

(assert (= (and b!392600 res!224906) b!392599))

(assert (= (and b!392600 (not res!224904)) b!392589))

(assert (= (and b!392589 res!224905) b!392604))

(assert (= (and b!392600 res!224907) b!392602))

(assert (= (and b!392602 c!54338) b!392605))

(assert (= (and b!392602 (not c!54338)) b!392607))

(assert (= (and b!392605 res!224901) b!392597))

(assert (= (or b!392605 b!392607) bm!27738))

(assert (= (and b!392602 res!224903) b!392590))

(assert (= (and b!392590 c!54335) b!392601))

(assert (= (and b!392590 (not c!54335)) b!392606))

(assert (= (and b!392601 res!224902) b!392595))

(assert (= (or b!392601 b!392606) bm!27735))

(declare-fun b_lambda!8777 () Bool)

(assert (=> (not b_lambda!8777) (not b!392604)))

(assert (=> b!392604 t!11587))

(declare-fun b_and!16391 () Bool)

(assert (= b_and!16389 (and (=> t!11587 result!5769) b_and!16391)))

(assert (=> b!392589 m!388989))

(assert (=> b!392589 m!388989))

(declare-fun m!389019 () Bool)

(assert (=> b!392589 m!389019))

(declare-fun m!389021 () Bool)

(assert (=> b!392595 m!389021))

(assert (=> d!73039 m!388931))

(assert (=> bm!27734 m!388901))

(declare-fun m!389023 () Bool)

(assert (=> b!392609 m!389023))

(declare-fun m!389025 () Bool)

(assert (=> b!392609 m!389025))

(declare-fun m!389027 () Bool)

(assert (=> b!392609 m!389027))

(declare-fun m!389029 () Bool)

(assert (=> b!392609 m!389029))

(declare-fun m!389031 () Bool)

(assert (=> b!392609 m!389031))

(declare-fun m!389033 () Bool)

(assert (=> b!392609 m!389033))

(declare-fun m!389035 () Bool)

(assert (=> b!392609 m!389035))

(assert (=> b!392609 m!389031))

(declare-fun m!389037 () Bool)

(assert (=> b!392609 m!389037))

(declare-fun m!389039 () Bool)

(assert (=> b!392609 m!389039))

(declare-fun m!389041 () Bool)

(assert (=> b!392609 m!389041))

(assert (=> b!392609 m!389027))

(assert (=> b!392609 m!388989))

(declare-fun m!389043 () Bool)

(assert (=> b!392609 m!389043))

(assert (=> b!392609 m!388901))

(assert (=> b!392609 m!389037))

(declare-fun m!389045 () Bool)

(assert (=> b!392609 m!389045))

(declare-fun m!389047 () Bool)

(assert (=> b!392609 m!389047))

(declare-fun m!389049 () Bool)

(assert (=> b!392609 m!389049))

(assert (=> b!392609 m!389025))

(declare-fun m!389051 () Bool)

(assert (=> b!392609 m!389051))

(assert (=> b!392604 m!389007))

(assert (=> b!392604 m!389003))

(assert (=> b!392604 m!389009))

(assert (=> b!392604 m!389003))

(assert (=> b!392604 m!388989))

(declare-fun m!389053 () Bool)

(assert (=> b!392604 m!389053))

(assert (=> b!392604 m!388989))

(assert (=> b!392604 m!389007))

(declare-fun m!389055 () Bool)

(assert (=> bm!27736 m!389055))

(declare-fun m!389057 () Bool)

(assert (=> b!392594 m!389057))

(assert (=> b!392599 m!388989))

(assert (=> b!392599 m!388989))

(assert (=> b!392599 m!388999))

(assert (=> b!392593 m!388989))

(assert (=> b!392593 m!388989))

(assert (=> b!392593 m!388999))

(declare-fun m!389059 () Bool)

(assert (=> b!392597 m!389059))

(declare-fun m!389061 () Bool)

(assert (=> bm!27738 m!389061))

(declare-fun m!389063 () Bool)

(assert (=> bm!27735 m!389063))

(assert (=> b!392455 d!73039))

(declare-fun b!392610 () Bool)

(declare-fun res!224911 () Bool)

(declare-fun e!237752 () Bool)

(assert (=> b!392610 (=> (not res!224911) (not e!237752))))

(declare-fun lt!185664 () ListLongMap!5453)

(assert (=> b!392610 (= res!224911 (not (contains!2468 lt!185664 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392611 () Bool)

(declare-fun lt!185662 () Unit!11973)

(declare-fun lt!185660 () Unit!11973)

(assert (=> b!392611 (= lt!185662 lt!185660)))

(declare-fun lt!185661 () ListLongMap!5453)

(declare-fun lt!185659 () V!14021)

(declare-fun lt!185665 () (_ BitVec 64))

(declare-fun lt!185663 () (_ BitVec 64))

(assert (=> b!392611 (not (contains!2468 (+!1040 lt!185661 (tuple2!6527 lt!185663 lt!185659)) lt!185665))))

(assert (=> b!392611 (= lt!185660 (addStillNotContains!141 lt!185661 lt!185663 lt!185659 lt!185665))))

(assert (=> b!392611 (= lt!185665 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!392611 (= lt!185659 (get!5609 (select (arr!11084 lt!185537) #b00000000000000000000000000000000) (dynLambda!644 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!392611 (= lt!185663 (select (arr!11083 lt!185536) #b00000000000000000000000000000000))))

(declare-fun call!27744 () ListLongMap!5453)

(assert (=> b!392611 (= lt!185661 call!27744)))

(declare-fun e!237747 () ListLongMap!5453)

(assert (=> b!392611 (= e!237747 (+!1040 call!27744 (tuple2!6527 (select (arr!11083 lt!185536) #b00000000000000000000000000000000) (get!5609 (select (arr!11084 lt!185537) #b00000000000000000000000000000000) (dynLambda!644 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!392613 () Bool)

(declare-fun e!237750 () Bool)

(assert (=> b!392613 (= e!237750 (= lt!185664 (getCurrentListMapNoExtraKeys!968 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!392614 () Bool)

(declare-fun e!237753 () Bool)

(assert (=> b!392614 (= e!237753 (validKeyInArray!0 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)))))

(assert (=> b!392614 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!27741 () Bool)

(assert (=> bm!27741 (= call!27744 (getCurrentListMapNoExtraKeys!968 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!392615 () Bool)

(assert (=> b!392615 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(assert (=> b!392615 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11436 lt!185537)))))

(declare-fun e!237749 () Bool)

(assert (=> b!392615 (= e!237749 (= (apply!306 lt!185664 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)) (get!5609 (select (arr!11084 lt!185537) #b00000000000000000000000000000000) (dynLambda!644 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!392616 () Bool)

(declare-fun e!237748 () Bool)

(assert (=> b!392616 (= e!237752 e!237748)))

(declare-fun c!54341 () Bool)

(assert (=> b!392616 (= c!54341 e!237753)))

(declare-fun res!224908 () Bool)

(assert (=> b!392616 (=> (not res!224908) (not e!237753))))

(assert (=> b!392616 (= res!224908 (bvslt #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(declare-fun b!392617 () Bool)

(assert (=> b!392617 (= e!237748 e!237750)))

(declare-fun c!54339 () Bool)

(assert (=> b!392617 (= c!54339 (bvslt #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(declare-fun b!392618 () Bool)

(assert (=> b!392618 (= e!237748 e!237749)))

(assert (=> b!392618 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(declare-fun res!224909 () Bool)

(assert (=> b!392618 (= res!224909 (contains!2468 lt!185664 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)))))

(assert (=> b!392618 (=> (not res!224909) (not e!237749))))

(declare-fun b!392619 () Bool)

(declare-fun e!237751 () ListLongMap!5453)

(assert (=> b!392619 (= e!237751 (ListLongMap!5454 Nil!6406))))

(declare-fun d!73041 () Bool)

(assert (=> d!73041 e!237752))

(declare-fun res!224910 () Bool)

(assert (=> d!73041 (=> (not res!224910) (not e!237752))))

(assert (=> d!73041 (= res!224910 (not (contains!2468 lt!185664 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!73041 (= lt!185664 e!237751)))

(declare-fun c!54340 () Bool)

(assert (=> d!73041 (= c!54340 (bvsge #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(assert (=> d!73041 (validMask!0 mask!970)))

(assert (=> d!73041 (= (getCurrentListMapNoExtraKeys!968 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185664)))

(declare-fun b!392612 () Bool)

(assert (=> b!392612 (= e!237750 (isEmpty!557 lt!185664))))

(declare-fun b!392620 () Bool)

(assert (=> b!392620 (= e!237751 e!237747)))

(declare-fun c!54342 () Bool)

(assert (=> b!392620 (= c!54342 (validKeyInArray!0 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)))))

(declare-fun b!392621 () Bool)

(assert (=> b!392621 (= e!237747 call!27744)))

(assert (= (and d!73041 c!54340) b!392619))

(assert (= (and d!73041 (not c!54340)) b!392620))

(assert (= (and b!392620 c!54342) b!392611))

(assert (= (and b!392620 (not c!54342)) b!392621))

(assert (= (or b!392611 b!392621) bm!27741))

(assert (= (and d!73041 res!224910) b!392610))

(assert (= (and b!392610 res!224911) b!392616))

(assert (= (and b!392616 res!224908) b!392614))

(assert (= (and b!392616 c!54341) b!392618))

(assert (= (and b!392616 (not c!54341)) b!392617))

(assert (= (and b!392618 res!224909) b!392615))

(assert (= (and b!392617 c!54339) b!392613))

(assert (= (and b!392617 (not c!54339)) b!392612))

(declare-fun b_lambda!8779 () Bool)

(assert (=> (not b_lambda!8779) (not b!392611)))

(assert (=> b!392611 t!11587))

(declare-fun b_and!16393 () Bool)

(assert (= b_and!16391 (and (=> t!11587 result!5769) b_and!16393)))

(declare-fun b_lambda!8781 () Bool)

(assert (=> (not b_lambda!8781) (not b!392615)))

(assert (=> b!392615 t!11587))

(declare-fun b_and!16395 () Bool)

(assert (= b_and!16393 (and (=> t!11587 result!5769) b_and!16395)))

(declare-fun m!389065 () Bool)

(assert (=> b!392618 m!389065))

(assert (=> b!392618 m!389065))

(declare-fun m!389067 () Bool)

(assert (=> b!392618 m!389067))

(declare-fun m!389069 () Bool)

(assert (=> b!392612 m!389069))

(declare-fun m!389071 () Bool)

(assert (=> bm!27741 m!389071))

(declare-fun m!389073 () Bool)

(assert (=> b!392610 m!389073))

(assert (=> b!392620 m!389065))

(assert (=> b!392620 m!389065))

(declare-fun m!389075 () Bool)

(assert (=> b!392620 m!389075))

(declare-fun m!389077 () Bool)

(assert (=> d!73041 m!389077))

(assert (=> d!73041 m!388931))

(assert (=> b!392615 m!389003))

(assert (=> b!392615 m!389065))

(declare-fun m!389079 () Bool)

(assert (=> b!392615 m!389079))

(assert (=> b!392615 m!389065))

(declare-fun m!389081 () Bool)

(assert (=> b!392615 m!389081))

(assert (=> b!392615 m!389081))

(assert (=> b!392615 m!389003))

(declare-fun m!389083 () Bool)

(assert (=> b!392615 m!389083))

(assert (=> b!392611 m!389003))

(declare-fun m!389085 () Bool)

(assert (=> b!392611 m!389085))

(declare-fun m!389087 () Bool)

(assert (=> b!392611 m!389087))

(declare-fun m!389089 () Bool)

(assert (=> b!392611 m!389089))

(assert (=> b!392611 m!389065))

(declare-fun m!389091 () Bool)

(assert (=> b!392611 m!389091))

(assert (=> b!392611 m!389081))

(assert (=> b!392611 m!389085))

(assert (=> b!392611 m!389081))

(assert (=> b!392611 m!389003))

(assert (=> b!392611 m!389083))

(assert (=> b!392614 m!389065))

(assert (=> b!392614 m!389065))

(assert (=> b!392614 m!389075))

(assert (=> b!392613 m!389071))

(assert (=> b!392455 d!73041))

(declare-fun call!27750 () ListLongMap!5453)

(declare-fun b!392628 () Bool)

(declare-fun e!237759 () Bool)

(declare-fun call!27749 () ListLongMap!5453)

(assert (=> b!392628 (= e!237759 (= call!27749 (+!1040 call!27750 (tuple2!6527 k0!778 v!373))))))

(declare-fun bm!27746 () Bool)

(assert (=> bm!27746 (= call!27749 (getCurrentListMapNoExtraKeys!968 (array!23254 (store (arr!11083 _keys!658) i!548 k0!778) (size!11435 _keys!658)) (array!23256 (store (arr!11084 _values!506) i!548 (ValueCellFull!4500 v!373)) (size!11436 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392629 () Bool)

(assert (=> b!392629 (= e!237759 (= call!27749 call!27750))))

(declare-fun b!392630 () Bool)

(declare-fun e!237758 () Bool)

(assert (=> b!392630 (= e!237758 e!237759)))

(declare-fun c!54345 () Bool)

(assert (=> b!392630 (= c!54345 (bvsle #b00000000000000000000000000000000 i!548))))

(declare-fun d!73043 () Bool)

(assert (=> d!73043 e!237758))

(declare-fun res!224914 () Bool)

(assert (=> d!73043 (=> (not res!224914) (not e!237758))))

(assert (=> d!73043 (= res!224914 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11435 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11436 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11435 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11436 _values!506))))))))

(declare-fun lt!185668 () Unit!11973)

(declare-fun choose!1329 (array!23253 array!23255 (_ BitVec 32) (_ BitVec 32) V!14021 V!14021 (_ BitVec 32) (_ BitVec 64) V!14021 (_ BitVec 32) Int) Unit!11973)

(assert (=> d!73043 (= lt!185668 (choose!1329 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!73043 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(assert (=> d!73043 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!263 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!185668)))

(declare-fun bm!27747 () Bool)

(assert (=> bm!27747 (= call!27750 (getCurrentListMapNoExtraKeys!968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and d!73043 res!224914) b!392630))

(assert (= (and b!392630 c!54345) b!392628))

(assert (= (and b!392630 (not c!54345)) b!392629))

(assert (= (or b!392628 b!392629) bm!27747))

(assert (= (or b!392628 b!392629) bm!27746))

(declare-fun m!389093 () Bool)

(assert (=> b!392628 m!389093))

(assert (=> bm!27746 m!388917))

(assert (=> bm!27746 m!388913))

(declare-fun m!389095 () Bool)

(assert (=> bm!27746 m!389095))

(declare-fun m!389097 () Bool)

(assert (=> d!73043 m!389097))

(assert (=> bm!27747 m!388901))

(assert (=> b!392455 d!73043))

(declare-fun b!392631 () Bool)

(declare-fun e!237768 () Bool)

(declare-fun e!237763 () Bool)

(assert (=> b!392631 (= e!237768 e!237763)))

(declare-fun res!224921 () Bool)

(assert (=> b!392631 (=> (not res!224921) (not e!237763))))

(declare-fun lt!185687 () ListLongMap!5453)

(assert (=> b!392631 (= res!224921 (contains!2468 lt!185687 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)))))

(assert (=> b!392631 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(declare-fun b!392632 () Bool)

(declare-fun e!237765 () Bool)

(declare-fun e!237770 () Bool)

(assert (=> b!392632 (= e!237765 e!237770)))

(declare-fun c!54348 () Bool)

(assert (=> b!392632 (= c!54348 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!392633 () Bool)

(declare-fun e!237764 () Unit!11973)

(declare-fun Unit!11976 () Unit!11973)

(assert (=> b!392633 (= e!237764 Unit!11976)))

(declare-fun call!27756 () ListLongMap!5453)

(declare-fun bm!27748 () Bool)

(assert (=> bm!27748 (= call!27756 (getCurrentListMapNoExtraKeys!968 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392634 () Bool)

(declare-fun e!237760 () ListLongMap!5453)

(declare-fun call!27752 () ListLongMap!5453)

(assert (=> b!392634 (= e!237760 call!27752)))

(declare-fun bm!27749 () Bool)

(declare-fun call!27753 () Bool)

(assert (=> bm!27749 (= call!27753 (contains!2468 lt!185687 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!27757 () ListLongMap!5453)

(declare-fun call!27754 () ListLongMap!5453)

(declare-fun c!54347 () Bool)

(declare-fun call!27755 () ListLongMap!5453)

(declare-fun c!54346 () Bool)

(declare-fun bm!27750 () Bool)

(assert (=> bm!27750 (= call!27757 (+!1040 (ite c!54346 call!27756 (ite c!54347 call!27755 call!27754)) (ite (or c!54346 c!54347) (tuple2!6527 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6527 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!392635 () Bool)

(declare-fun e!237771 () Bool)

(assert (=> b!392635 (= e!237771 (validKeyInArray!0 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)))))

(declare-fun b!392636 () Bool)

(declare-fun e!237766 () ListLongMap!5453)

(assert (=> b!392636 (= e!237766 (+!1040 call!27757 (tuple2!6527 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!392637 () Bool)

(declare-fun e!237772 () Bool)

(assert (=> b!392637 (= e!237772 (= (apply!306 lt!185687 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!392638 () Bool)

(declare-fun c!54350 () Bool)

(assert (=> b!392638 (= c!54350 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!237769 () ListLongMap!5453)

(assert (=> b!392638 (= e!237760 e!237769)))

(declare-fun b!392639 () Bool)

(declare-fun e!237767 () Bool)

(assert (=> b!392639 (= e!237767 (= (apply!306 lt!185687 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!392640 () Bool)

(assert (=> b!392640 (= e!237769 call!27752)))

(declare-fun bm!27751 () Bool)

(assert (=> bm!27751 (= call!27754 call!27755)))

(declare-fun b!392641 () Bool)

(declare-fun e!237761 () Bool)

(assert (=> b!392641 (= e!237761 (validKeyInArray!0 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)))))

(declare-fun b!392642 () Bool)

(declare-fun res!224923 () Bool)

(assert (=> b!392642 (=> (not res!224923) (not e!237765))))

(assert (=> b!392642 (= res!224923 e!237768)))

(declare-fun res!224920 () Bool)

(assert (=> b!392642 (=> res!224920 e!237768)))

(assert (=> b!392642 (= res!224920 (not e!237761))))

(declare-fun res!224922 () Bool)

(assert (=> b!392642 (=> (not res!224922) (not e!237761))))

(assert (=> b!392642 (= res!224922 (bvslt #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(declare-fun b!392643 () Bool)

(assert (=> b!392643 (= e!237770 e!237772)))

(declare-fun res!224918 () Bool)

(assert (=> b!392643 (= res!224918 call!27753)))

(assert (=> b!392643 (=> (not res!224918) (not e!237772))))

(declare-fun b!392644 () Bool)

(declare-fun res!224919 () Bool)

(assert (=> b!392644 (=> (not res!224919) (not e!237765))))

(declare-fun e!237762 () Bool)

(assert (=> b!392644 (= res!224919 e!237762)))

(declare-fun c!54351 () Bool)

(assert (=> b!392644 (= c!54351 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!392645 () Bool)

(assert (=> b!392645 (= e!237766 e!237760)))

(assert (=> b!392645 (= c!54347 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!392646 () Bool)

(assert (=> b!392646 (= e!237763 (= (apply!306 lt!185687 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)) (get!5609 (select (arr!11084 lt!185537) #b00000000000000000000000000000000) (dynLambda!644 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!392646 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11436 lt!185537)))))

(assert (=> b!392646 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(declare-fun b!392647 () Bool)

(assert (=> b!392647 (= e!237762 e!237767)))

(declare-fun res!224917 () Bool)

(declare-fun call!27751 () Bool)

(assert (=> b!392647 (= res!224917 call!27751)))

(assert (=> b!392647 (=> (not res!224917) (not e!237767))))

(declare-fun bm!27752 () Bool)

(assert (=> bm!27752 (= call!27751 (contains!2468 lt!185687 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27753 () Bool)

(assert (=> bm!27753 (= call!27755 call!27756)))

(declare-fun d!73045 () Bool)

(assert (=> d!73045 e!237765))

(declare-fun res!224915 () Bool)

(assert (=> d!73045 (=> (not res!224915) (not e!237765))))

(assert (=> d!73045 (= res!224915 (or (bvsge #b00000000000000000000000000000000 (size!11435 lt!185536)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11435 lt!185536)))))))

(declare-fun lt!185690 () ListLongMap!5453)

(assert (=> d!73045 (= lt!185687 lt!185690)))

(declare-fun lt!185669 () Unit!11973)

(assert (=> d!73045 (= lt!185669 e!237764)))

(declare-fun c!54349 () Bool)

(assert (=> d!73045 (= c!54349 e!237771)))

(declare-fun res!224916 () Bool)

(assert (=> d!73045 (=> (not res!224916) (not e!237771))))

(assert (=> d!73045 (= res!224916 (bvslt #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(assert (=> d!73045 (= lt!185690 e!237766)))

(assert (=> d!73045 (= c!54346 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!73045 (validMask!0 mask!970)))

(assert (=> d!73045 (= (getCurrentListMap!2106 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185687)))

(declare-fun bm!27754 () Bool)

(assert (=> bm!27754 (= call!27752 call!27757)))

(declare-fun b!392648 () Bool)

(assert (=> b!392648 (= e!237770 (not call!27753))))

(declare-fun b!392649 () Bool)

(assert (=> b!392649 (= e!237762 (not call!27751))))

(declare-fun b!392650 () Bool)

(assert (=> b!392650 (= e!237769 call!27754)))

(declare-fun b!392651 () Bool)

(declare-fun lt!185677 () Unit!11973)

(assert (=> b!392651 (= e!237764 lt!185677)))

(declare-fun lt!185678 () ListLongMap!5453)

(assert (=> b!392651 (= lt!185678 (getCurrentListMapNoExtraKeys!968 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185674 () (_ BitVec 64))

(assert (=> b!392651 (= lt!185674 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185682 () (_ BitVec 64))

(assert (=> b!392651 (= lt!185682 (select (arr!11083 lt!185536) #b00000000000000000000000000000000))))

(declare-fun lt!185672 () Unit!11973)

(assert (=> b!392651 (= lt!185672 (addStillContains!282 lt!185678 lt!185674 zeroValue!472 lt!185682))))

(assert (=> b!392651 (contains!2468 (+!1040 lt!185678 (tuple2!6527 lt!185674 zeroValue!472)) lt!185682)))

(declare-fun lt!185671 () Unit!11973)

(assert (=> b!392651 (= lt!185671 lt!185672)))

(declare-fun lt!185683 () ListLongMap!5453)

(assert (=> b!392651 (= lt!185683 (getCurrentListMapNoExtraKeys!968 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185676 () (_ BitVec 64))

(assert (=> b!392651 (= lt!185676 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185673 () (_ BitVec 64))

(assert (=> b!392651 (= lt!185673 (select (arr!11083 lt!185536) #b00000000000000000000000000000000))))

(declare-fun lt!185689 () Unit!11973)

(assert (=> b!392651 (= lt!185689 (addApplyDifferent!282 lt!185683 lt!185676 minValue!472 lt!185673))))

(assert (=> b!392651 (= (apply!306 (+!1040 lt!185683 (tuple2!6527 lt!185676 minValue!472)) lt!185673) (apply!306 lt!185683 lt!185673))))

(declare-fun lt!185680 () Unit!11973)

(assert (=> b!392651 (= lt!185680 lt!185689)))

(declare-fun lt!185684 () ListLongMap!5453)

(assert (=> b!392651 (= lt!185684 (getCurrentListMapNoExtraKeys!968 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185685 () (_ BitVec 64))

(assert (=> b!392651 (= lt!185685 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185688 () (_ BitVec 64))

(assert (=> b!392651 (= lt!185688 (select (arr!11083 lt!185536) #b00000000000000000000000000000000))))

(declare-fun lt!185679 () Unit!11973)

(assert (=> b!392651 (= lt!185679 (addApplyDifferent!282 lt!185684 lt!185685 zeroValue!472 lt!185688))))

(assert (=> b!392651 (= (apply!306 (+!1040 lt!185684 (tuple2!6527 lt!185685 zeroValue!472)) lt!185688) (apply!306 lt!185684 lt!185688))))

(declare-fun lt!185686 () Unit!11973)

(assert (=> b!392651 (= lt!185686 lt!185679)))

(declare-fun lt!185675 () ListLongMap!5453)

(assert (=> b!392651 (= lt!185675 (getCurrentListMapNoExtraKeys!968 lt!185536 lt!185537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185681 () (_ BitVec 64))

(assert (=> b!392651 (= lt!185681 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185670 () (_ BitVec 64))

(assert (=> b!392651 (= lt!185670 (select (arr!11083 lt!185536) #b00000000000000000000000000000000))))

(assert (=> b!392651 (= lt!185677 (addApplyDifferent!282 lt!185675 lt!185681 minValue!472 lt!185670))))

(assert (=> b!392651 (= (apply!306 (+!1040 lt!185675 (tuple2!6527 lt!185681 minValue!472)) lt!185670) (apply!306 lt!185675 lt!185670))))

(assert (= (and d!73045 c!54346) b!392636))

(assert (= (and d!73045 (not c!54346)) b!392645))

(assert (= (and b!392645 c!54347) b!392634))

(assert (= (and b!392645 (not c!54347)) b!392638))

(assert (= (and b!392638 c!54350) b!392640))

(assert (= (and b!392638 (not c!54350)) b!392650))

(assert (= (or b!392640 b!392650) bm!27751))

(assert (= (or b!392634 bm!27751) bm!27753))

(assert (= (or b!392634 b!392640) bm!27754))

(assert (= (or b!392636 bm!27753) bm!27748))

(assert (= (or b!392636 bm!27754) bm!27750))

(assert (= (and d!73045 res!224916) b!392635))

(assert (= (and d!73045 c!54349) b!392651))

(assert (= (and d!73045 (not c!54349)) b!392633))

(assert (= (and d!73045 res!224915) b!392642))

(assert (= (and b!392642 res!224922) b!392641))

(assert (= (and b!392642 (not res!224920)) b!392631))

(assert (= (and b!392631 res!224921) b!392646))

(assert (= (and b!392642 res!224923) b!392644))

(assert (= (and b!392644 c!54351) b!392647))

(assert (= (and b!392644 (not c!54351)) b!392649))

(assert (= (and b!392647 res!224917) b!392639))

(assert (= (or b!392647 b!392649) bm!27752))

(assert (= (and b!392644 res!224919) b!392632))

(assert (= (and b!392632 c!54348) b!392643))

(assert (= (and b!392632 (not c!54348)) b!392648))

(assert (= (and b!392643 res!224918) b!392637))

(assert (= (or b!392643 b!392648) bm!27749))

(declare-fun b_lambda!8783 () Bool)

(assert (=> (not b_lambda!8783) (not b!392646)))

(assert (=> b!392646 t!11587))

(declare-fun b_and!16397 () Bool)

(assert (= b_and!16395 (and (=> t!11587 result!5769) b_and!16397)))

(assert (=> b!392631 m!389065))

(assert (=> b!392631 m!389065))

(declare-fun m!389099 () Bool)

(assert (=> b!392631 m!389099))

(declare-fun m!389101 () Bool)

(assert (=> b!392637 m!389101))

(assert (=> d!73045 m!388931))

(assert (=> bm!27748 m!388907))

(declare-fun m!389103 () Bool)

(assert (=> b!392651 m!389103))

(declare-fun m!389105 () Bool)

(assert (=> b!392651 m!389105))

(declare-fun m!389107 () Bool)

(assert (=> b!392651 m!389107))

(declare-fun m!389109 () Bool)

(assert (=> b!392651 m!389109))

(declare-fun m!389111 () Bool)

(assert (=> b!392651 m!389111))

(declare-fun m!389113 () Bool)

(assert (=> b!392651 m!389113))

(declare-fun m!389115 () Bool)

(assert (=> b!392651 m!389115))

(assert (=> b!392651 m!389111))

(declare-fun m!389117 () Bool)

(assert (=> b!392651 m!389117))

(declare-fun m!389119 () Bool)

(assert (=> b!392651 m!389119))

(declare-fun m!389121 () Bool)

(assert (=> b!392651 m!389121))

(assert (=> b!392651 m!389107))

(assert (=> b!392651 m!389065))

(declare-fun m!389123 () Bool)

(assert (=> b!392651 m!389123))

(assert (=> b!392651 m!388907))

(assert (=> b!392651 m!389117))

(declare-fun m!389125 () Bool)

(assert (=> b!392651 m!389125))

(declare-fun m!389127 () Bool)

(assert (=> b!392651 m!389127))

(declare-fun m!389129 () Bool)

(assert (=> b!392651 m!389129))

(assert (=> b!392651 m!389105))

(declare-fun m!389131 () Bool)

(assert (=> b!392651 m!389131))

(assert (=> b!392646 m!389081))

(assert (=> b!392646 m!389003))

(assert (=> b!392646 m!389083))

(assert (=> b!392646 m!389003))

(assert (=> b!392646 m!389065))

(declare-fun m!389133 () Bool)

(assert (=> b!392646 m!389133))

(assert (=> b!392646 m!389065))

(assert (=> b!392646 m!389081))

(declare-fun m!389135 () Bool)

(assert (=> bm!27750 m!389135))

(declare-fun m!389137 () Bool)

(assert (=> b!392636 m!389137))

(assert (=> b!392641 m!389065))

(assert (=> b!392641 m!389065))

(assert (=> b!392641 m!389075))

(assert (=> b!392635 m!389065))

(assert (=> b!392635 m!389065))

(assert (=> b!392635 m!389075))

(declare-fun m!389139 () Bool)

(assert (=> b!392639 m!389139))

(declare-fun m!389141 () Bool)

(assert (=> bm!27752 m!389141))

(declare-fun m!389143 () Bool)

(assert (=> bm!27749 m!389143))

(assert (=> b!392455 d!73045))

(declare-fun d!73047 () Bool)

(declare-fun e!237775 () Bool)

(assert (=> d!73047 e!237775))

(declare-fun res!224929 () Bool)

(assert (=> d!73047 (=> (not res!224929) (not e!237775))))

(declare-fun lt!185699 () ListLongMap!5453)

(assert (=> d!73047 (= res!224929 (contains!2468 lt!185699 (_1!3273 (tuple2!6527 k0!778 v!373))))))

(declare-fun lt!185702 () List!6409)

(assert (=> d!73047 (= lt!185699 (ListLongMap!5454 lt!185702))))

(declare-fun lt!185701 () Unit!11973)

(declare-fun lt!185700 () Unit!11973)

(assert (=> d!73047 (= lt!185701 lt!185700)))

(declare-datatypes ((Option!369 0))(
  ( (Some!368 (v!7122 V!14021)) (None!367) )
))
(declare-fun getValueByKey!363 (List!6409 (_ BitVec 64)) Option!369)

(assert (=> d!73047 (= (getValueByKey!363 lt!185702 (_1!3273 (tuple2!6527 k0!778 v!373))) (Some!368 (_2!3273 (tuple2!6527 k0!778 v!373))))))

(declare-fun lemmaContainsTupThenGetReturnValue!187 (List!6409 (_ BitVec 64) V!14021) Unit!11973)

(assert (=> d!73047 (= lt!185700 (lemmaContainsTupThenGetReturnValue!187 lt!185702 (_1!3273 (tuple2!6527 k0!778 v!373)) (_2!3273 (tuple2!6527 k0!778 v!373))))))

(declare-fun insertStrictlySorted!189 (List!6409 (_ BitVec 64) V!14021) List!6409)

(assert (=> d!73047 (= lt!185702 (insertStrictlySorted!189 (toList!2742 lt!185542) (_1!3273 (tuple2!6527 k0!778 v!373)) (_2!3273 (tuple2!6527 k0!778 v!373))))))

(assert (=> d!73047 (= (+!1040 lt!185542 (tuple2!6527 k0!778 v!373)) lt!185699)))

(declare-fun b!392656 () Bool)

(declare-fun res!224928 () Bool)

(assert (=> b!392656 (=> (not res!224928) (not e!237775))))

(assert (=> b!392656 (= res!224928 (= (getValueByKey!363 (toList!2742 lt!185699) (_1!3273 (tuple2!6527 k0!778 v!373))) (Some!368 (_2!3273 (tuple2!6527 k0!778 v!373)))))))

(declare-fun b!392657 () Bool)

(declare-fun contains!2469 (List!6409 tuple2!6526) Bool)

(assert (=> b!392657 (= e!237775 (contains!2469 (toList!2742 lt!185699) (tuple2!6527 k0!778 v!373)))))

(assert (= (and d!73047 res!224929) b!392656))

(assert (= (and b!392656 res!224928) b!392657))

(declare-fun m!389145 () Bool)

(assert (=> d!73047 m!389145))

(declare-fun m!389147 () Bool)

(assert (=> d!73047 m!389147))

(declare-fun m!389149 () Bool)

(assert (=> d!73047 m!389149))

(declare-fun m!389151 () Bool)

(assert (=> d!73047 m!389151))

(declare-fun m!389153 () Bool)

(assert (=> b!392656 m!389153))

(declare-fun m!389155 () Bool)

(assert (=> b!392657 m!389155))

(assert (=> b!392455 d!73047))

(declare-fun d!73049 () Bool)

(declare-fun e!237776 () Bool)

(assert (=> d!73049 e!237776))

(declare-fun res!224931 () Bool)

(assert (=> d!73049 (=> (not res!224931) (not e!237776))))

(declare-fun lt!185703 () ListLongMap!5453)

(assert (=> d!73049 (= res!224931 (contains!2468 lt!185703 (_1!3273 lt!185539)))))

(declare-fun lt!185706 () List!6409)

(assert (=> d!73049 (= lt!185703 (ListLongMap!5454 lt!185706))))

(declare-fun lt!185705 () Unit!11973)

(declare-fun lt!185704 () Unit!11973)

(assert (=> d!73049 (= lt!185705 lt!185704)))

(assert (=> d!73049 (= (getValueByKey!363 lt!185706 (_1!3273 lt!185539)) (Some!368 (_2!3273 lt!185539)))))

(assert (=> d!73049 (= lt!185704 (lemmaContainsTupThenGetReturnValue!187 lt!185706 (_1!3273 lt!185539) (_2!3273 lt!185539)))))

(assert (=> d!73049 (= lt!185706 (insertStrictlySorted!189 (toList!2742 lt!185540) (_1!3273 lt!185539) (_2!3273 lt!185539)))))

(assert (=> d!73049 (= (+!1040 lt!185540 lt!185539) lt!185703)))

(declare-fun b!392658 () Bool)

(declare-fun res!224930 () Bool)

(assert (=> b!392658 (=> (not res!224930) (not e!237776))))

(assert (=> b!392658 (= res!224930 (= (getValueByKey!363 (toList!2742 lt!185703) (_1!3273 lt!185539)) (Some!368 (_2!3273 lt!185539))))))

(declare-fun b!392659 () Bool)

(assert (=> b!392659 (= e!237776 (contains!2469 (toList!2742 lt!185703) lt!185539))))

(assert (= (and d!73049 res!224931) b!392658))

(assert (= (and b!392658 res!224930) b!392659))

(declare-fun m!389157 () Bool)

(assert (=> d!73049 m!389157))

(declare-fun m!389159 () Bool)

(assert (=> d!73049 m!389159))

(declare-fun m!389161 () Bool)

(assert (=> d!73049 m!389161))

(declare-fun m!389163 () Bool)

(assert (=> d!73049 m!389163))

(declare-fun m!389165 () Bool)

(assert (=> b!392658 m!389165))

(declare-fun m!389167 () Bool)

(assert (=> b!392659 m!389167))

(assert (=> b!392456 d!73049))

(declare-fun b!392668 () Bool)

(declare-fun e!237785 () Bool)

(declare-fun call!27760 () Bool)

(assert (=> b!392668 (= e!237785 call!27760)))

(declare-fun b!392669 () Bool)

(declare-fun e!237784 () Bool)

(declare-fun e!237783 () Bool)

(assert (=> b!392669 (= e!237784 e!237783)))

(declare-fun c!54354 () Bool)

(assert (=> b!392669 (= c!54354 (validKeyInArray!0 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27757 () Bool)

(assert (=> bm!27757 (= call!27760 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!392670 () Bool)

(assert (=> b!392670 (= e!237783 e!237785)))

(declare-fun lt!185715 () (_ BitVec 64))

(assert (=> b!392670 (= lt!185715 (select (arr!11083 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185713 () Unit!11973)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23253 (_ BitVec 64) (_ BitVec 32)) Unit!11973)

(assert (=> b!392670 (= lt!185713 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!185715 #b00000000000000000000000000000000))))

(assert (=> b!392670 (arrayContainsKey!0 _keys!658 lt!185715 #b00000000000000000000000000000000)))

(declare-fun lt!185714 () Unit!11973)

(assert (=> b!392670 (= lt!185714 lt!185713)))

(declare-fun res!224936 () Bool)

(declare-datatypes ((SeekEntryResult!3505 0))(
  ( (MissingZero!3505 (index!16199 (_ BitVec 32))) (Found!3505 (index!16200 (_ BitVec 32))) (Intermediate!3505 (undefined!4317 Bool) (index!16201 (_ BitVec 32)) (x!38416 (_ BitVec 32))) (Undefined!3505) (MissingVacant!3505 (index!16202 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23253 (_ BitVec 32)) SeekEntryResult!3505)

(assert (=> b!392670 (= res!224936 (= (seekEntryOrOpen!0 (select (arr!11083 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3505 #b00000000000000000000000000000000)))))

(assert (=> b!392670 (=> (not res!224936) (not e!237785))))

(declare-fun b!392671 () Bool)

(assert (=> b!392671 (= e!237783 call!27760)))

(declare-fun d!73051 () Bool)

(declare-fun res!224937 () Bool)

(assert (=> d!73051 (=> res!224937 e!237784)))

(assert (=> d!73051 (= res!224937 (bvsge #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(assert (=> d!73051 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!237784)))

(assert (= (and d!73051 (not res!224937)) b!392669))

(assert (= (and b!392669 c!54354) b!392670))

(assert (= (and b!392669 (not c!54354)) b!392671))

(assert (= (and b!392670 res!224936) b!392668))

(assert (= (or b!392668 b!392671) bm!27757))

(assert (=> b!392669 m!388989))

(assert (=> b!392669 m!388989))

(assert (=> b!392669 m!388999))

(declare-fun m!389169 () Bool)

(assert (=> bm!27757 m!389169))

(assert (=> b!392670 m!388989))

(declare-fun m!389171 () Bool)

(assert (=> b!392670 m!389171))

(declare-fun m!389173 () Bool)

(assert (=> b!392670 m!389173))

(assert (=> b!392670 m!388989))

(declare-fun m!389175 () Bool)

(assert (=> b!392670 m!389175))

(assert (=> b!392445 d!73051))

(declare-fun b!392672 () Bool)

(declare-fun e!237788 () Bool)

(declare-fun call!27761 () Bool)

(assert (=> b!392672 (= e!237788 call!27761)))

(declare-fun b!392673 () Bool)

(declare-fun e!237787 () Bool)

(declare-fun e!237786 () Bool)

(assert (=> b!392673 (= e!237787 e!237786)))

(declare-fun c!54355 () Bool)

(assert (=> b!392673 (= c!54355 (validKeyInArray!0 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)))))

(declare-fun bm!27758 () Bool)

(assert (=> bm!27758 (= call!27761 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!185536 mask!970))))

(declare-fun b!392674 () Bool)

(assert (=> b!392674 (= e!237786 e!237788)))

(declare-fun lt!185718 () (_ BitVec 64))

(assert (=> b!392674 (= lt!185718 (select (arr!11083 lt!185536) #b00000000000000000000000000000000))))

(declare-fun lt!185716 () Unit!11973)

(assert (=> b!392674 (= lt!185716 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!185536 lt!185718 #b00000000000000000000000000000000))))

(assert (=> b!392674 (arrayContainsKey!0 lt!185536 lt!185718 #b00000000000000000000000000000000)))

(declare-fun lt!185717 () Unit!11973)

(assert (=> b!392674 (= lt!185717 lt!185716)))

(declare-fun res!224938 () Bool)

(assert (=> b!392674 (= res!224938 (= (seekEntryOrOpen!0 (select (arr!11083 lt!185536) #b00000000000000000000000000000000) lt!185536 mask!970) (Found!3505 #b00000000000000000000000000000000)))))

(assert (=> b!392674 (=> (not res!224938) (not e!237788))))

(declare-fun b!392675 () Bool)

(assert (=> b!392675 (= e!237786 call!27761)))

(declare-fun d!73053 () Bool)

(declare-fun res!224939 () Bool)

(assert (=> d!73053 (=> res!224939 e!237787)))

(assert (=> d!73053 (= res!224939 (bvsge #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(assert (=> d!73053 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185536 mask!970) e!237787)))

(assert (= (and d!73053 (not res!224939)) b!392673))

(assert (= (and b!392673 c!54355) b!392674))

(assert (= (and b!392673 (not c!54355)) b!392675))

(assert (= (and b!392674 res!224938) b!392672))

(assert (= (or b!392672 b!392675) bm!27758))

(assert (=> b!392673 m!389065))

(assert (=> b!392673 m!389065))

(assert (=> b!392673 m!389075))

(declare-fun m!389177 () Bool)

(assert (=> bm!27758 m!389177))

(assert (=> b!392674 m!389065))

(declare-fun m!389179 () Bool)

(assert (=> b!392674 m!389179))

(declare-fun m!389181 () Bool)

(assert (=> b!392674 m!389181))

(assert (=> b!392674 m!389065))

(declare-fun m!389183 () Bool)

(assert (=> b!392674 m!389183))

(assert (=> b!392458 d!73053))

(declare-fun b!392686 () Bool)

(declare-fun e!237798 () Bool)

(declare-fun e!237799 () Bool)

(assert (=> b!392686 (= e!237798 e!237799)))

(declare-fun res!224948 () Bool)

(assert (=> b!392686 (=> (not res!224948) (not e!237799))))

(declare-fun e!237800 () Bool)

(assert (=> b!392686 (= res!224948 (not e!237800))))

(declare-fun res!224947 () Bool)

(assert (=> b!392686 (=> (not res!224947) (not e!237800))))

(assert (=> b!392686 (= res!224947 (validKeyInArray!0 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)))))

(declare-fun b!392687 () Bool)

(declare-fun contains!2470 (List!6408 (_ BitVec 64)) Bool)

(assert (=> b!392687 (= e!237800 (contains!2470 Nil!6405 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)))))

(declare-fun b!392688 () Bool)

(declare-fun e!237797 () Bool)

(declare-fun call!27764 () Bool)

(assert (=> b!392688 (= e!237797 call!27764)))

(declare-fun b!392689 () Bool)

(assert (=> b!392689 (= e!237799 e!237797)))

(declare-fun c!54358 () Bool)

(assert (=> b!392689 (= c!54358 (validKeyInArray!0 (select (arr!11083 lt!185536) #b00000000000000000000000000000000)))))

(declare-fun bm!27761 () Bool)

(assert (=> bm!27761 (= call!27764 (arrayNoDuplicates!0 lt!185536 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54358 (Cons!6404 (select (arr!11083 lt!185536) #b00000000000000000000000000000000) Nil!6405) Nil!6405)))))

(declare-fun d!73055 () Bool)

(declare-fun res!224946 () Bool)

(assert (=> d!73055 (=> res!224946 e!237798)))

(assert (=> d!73055 (= res!224946 (bvsge #b00000000000000000000000000000000 (size!11435 lt!185536)))))

(assert (=> d!73055 (= (arrayNoDuplicates!0 lt!185536 #b00000000000000000000000000000000 Nil!6405) e!237798)))

(declare-fun b!392690 () Bool)

(assert (=> b!392690 (= e!237797 call!27764)))

(assert (= (and d!73055 (not res!224946)) b!392686))

(assert (= (and b!392686 res!224947) b!392687))

(assert (= (and b!392686 res!224948) b!392689))

(assert (= (and b!392689 c!54358) b!392688))

(assert (= (and b!392689 (not c!54358)) b!392690))

(assert (= (or b!392688 b!392690) bm!27761))

(assert (=> b!392686 m!389065))

(assert (=> b!392686 m!389065))

(assert (=> b!392686 m!389075))

(assert (=> b!392687 m!389065))

(assert (=> b!392687 m!389065))

(declare-fun m!389185 () Bool)

(assert (=> b!392687 m!389185))

(assert (=> b!392689 m!389065))

(assert (=> b!392689 m!389065))

(assert (=> b!392689 m!389075))

(assert (=> bm!27761 m!389065))

(declare-fun m!389187 () Bool)

(assert (=> bm!27761 m!389187))

(assert (=> b!392449 d!73055))

(declare-fun b!392691 () Bool)

(declare-fun e!237802 () Bool)

(declare-fun e!237803 () Bool)

(assert (=> b!392691 (= e!237802 e!237803)))

(declare-fun res!224951 () Bool)

(assert (=> b!392691 (=> (not res!224951) (not e!237803))))

(declare-fun e!237804 () Bool)

(assert (=> b!392691 (= res!224951 (not e!237804))))

(declare-fun res!224950 () Bool)

(assert (=> b!392691 (=> (not res!224950) (not e!237804))))

(assert (=> b!392691 (= res!224950 (validKeyInArray!0 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!392692 () Bool)

(assert (=> b!392692 (= e!237804 (contains!2470 Nil!6405 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!392693 () Bool)

(declare-fun e!237801 () Bool)

(declare-fun call!27765 () Bool)

(assert (=> b!392693 (= e!237801 call!27765)))

(declare-fun b!392694 () Bool)

(assert (=> b!392694 (= e!237803 e!237801)))

(declare-fun c!54359 () Bool)

(assert (=> b!392694 (= c!54359 (validKeyInArray!0 (select (arr!11083 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27762 () Bool)

(assert (=> bm!27762 (= call!27765 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54359 (Cons!6404 (select (arr!11083 _keys!658) #b00000000000000000000000000000000) Nil!6405) Nil!6405)))))

(declare-fun d!73057 () Bool)

(declare-fun res!224949 () Bool)

(assert (=> d!73057 (=> res!224949 e!237802)))

(assert (=> d!73057 (= res!224949 (bvsge #b00000000000000000000000000000000 (size!11435 _keys!658)))))

(assert (=> d!73057 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6405) e!237802)))

(declare-fun b!392695 () Bool)

(assert (=> b!392695 (= e!237801 call!27765)))

(assert (= (and d!73057 (not res!224949)) b!392691))

(assert (= (and b!392691 res!224950) b!392692))

(assert (= (and b!392691 res!224951) b!392694))

(assert (= (and b!392694 c!54359) b!392693))

(assert (= (and b!392694 (not c!54359)) b!392695))

(assert (= (or b!392693 b!392695) bm!27762))

(assert (=> b!392691 m!388989))

(assert (=> b!392691 m!388989))

(assert (=> b!392691 m!388999))

(assert (=> b!392692 m!388989))

(assert (=> b!392692 m!388989))

(declare-fun m!389189 () Bool)

(assert (=> b!392692 m!389189))

(assert (=> b!392694 m!388989))

(assert (=> b!392694 m!388989))

(assert (=> b!392694 m!388999))

(assert (=> bm!27762 m!388989))

(declare-fun m!389191 () Bool)

(assert (=> bm!27762 m!389191))

(assert (=> b!392448 d!73057))

(declare-fun d!73059 () Bool)

(declare-fun e!237805 () Bool)

(assert (=> d!73059 e!237805))

(declare-fun res!224953 () Bool)

(assert (=> d!73059 (=> (not res!224953) (not e!237805))))

(declare-fun lt!185719 () ListLongMap!5453)

(assert (=> d!73059 (= res!224953 (contains!2468 lt!185719 (_1!3273 lt!185539)))))

(declare-fun lt!185722 () List!6409)

(assert (=> d!73059 (= lt!185719 (ListLongMap!5454 lt!185722))))

(declare-fun lt!185721 () Unit!11973)

(declare-fun lt!185720 () Unit!11973)

(assert (=> d!73059 (= lt!185721 lt!185720)))

(assert (=> d!73059 (= (getValueByKey!363 lt!185722 (_1!3273 lt!185539)) (Some!368 (_2!3273 lt!185539)))))

(assert (=> d!73059 (= lt!185720 (lemmaContainsTupThenGetReturnValue!187 lt!185722 (_1!3273 lt!185539) (_2!3273 lt!185539)))))

(assert (=> d!73059 (= lt!185722 (insertStrictlySorted!189 (toList!2742 lt!185542) (_1!3273 lt!185539) (_2!3273 lt!185539)))))

(assert (=> d!73059 (= (+!1040 lt!185542 lt!185539) lt!185719)))

(declare-fun b!392696 () Bool)

(declare-fun res!224952 () Bool)

(assert (=> b!392696 (=> (not res!224952) (not e!237805))))

(assert (=> b!392696 (= res!224952 (= (getValueByKey!363 (toList!2742 lt!185719) (_1!3273 lt!185539)) (Some!368 (_2!3273 lt!185539))))))

(declare-fun b!392697 () Bool)

(assert (=> b!392697 (= e!237805 (contains!2469 (toList!2742 lt!185719) lt!185539))))

(assert (= (and d!73059 res!224953) b!392696))

(assert (= (and b!392696 res!224952) b!392697))

(declare-fun m!389193 () Bool)

(assert (=> d!73059 m!389193))

(declare-fun m!389195 () Bool)

(assert (=> d!73059 m!389195))

(declare-fun m!389197 () Bool)

(assert (=> d!73059 m!389197))

(declare-fun m!389199 () Bool)

(assert (=> d!73059 m!389199))

(declare-fun m!389201 () Bool)

(assert (=> b!392696 m!389201))

(declare-fun m!389203 () Bool)

(assert (=> b!392697 m!389203))

(assert (=> b!392457 d!73059))

(declare-fun d!73061 () Bool)

(declare-fun res!224958 () Bool)

(declare-fun e!237810 () Bool)

(assert (=> d!73061 (=> res!224958 e!237810)))

(assert (=> d!73061 (= res!224958 (= (select (arr!11083 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!73061 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!237810)))

(declare-fun b!392702 () Bool)

(declare-fun e!237811 () Bool)

(assert (=> b!392702 (= e!237810 e!237811)))

(declare-fun res!224959 () Bool)

(assert (=> b!392702 (=> (not res!224959) (not e!237811))))

(assert (=> b!392702 (= res!224959 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11435 _keys!658)))))

(declare-fun b!392703 () Bool)

(assert (=> b!392703 (= e!237811 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!73061 (not res!224958)) b!392702))

(assert (= (and b!392702 res!224959) b!392703))

(assert (=> d!73061 m!388989))

(declare-fun m!389205 () Bool)

(assert (=> b!392703 m!389205))

(assert (=> b!392452 d!73061))

(declare-fun d!73063 () Bool)

(assert (=> d!73063 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!38120 d!73063))

(declare-fun d!73065 () Bool)

(assert (=> d!73065 (= (array_inv!8124 _values!506) (bvsge (size!11436 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!38120 d!73065))

(declare-fun d!73067 () Bool)

(assert (=> d!73067 (= (array_inv!8125 _keys!658) (bvsge (size!11435 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!38120 d!73067))

(declare-fun d!73069 () Bool)

(assert (=> d!73069 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!392450 d!73069))

(declare-fun d!73071 () Bool)

(declare-fun e!237812 () Bool)

(assert (=> d!73071 e!237812))

(declare-fun res!224961 () Bool)

(assert (=> d!73071 (=> (not res!224961) (not e!237812))))

(declare-fun lt!185723 () ListLongMap!5453)

(assert (=> d!73071 (= res!224961 (contains!2468 lt!185723 (_1!3273 lt!185539)))))

(declare-fun lt!185726 () List!6409)

(assert (=> d!73071 (= lt!185723 (ListLongMap!5454 lt!185726))))

(declare-fun lt!185725 () Unit!11973)

(declare-fun lt!185724 () Unit!11973)

(assert (=> d!73071 (= lt!185725 lt!185724)))

(assert (=> d!73071 (= (getValueByKey!363 lt!185726 (_1!3273 lt!185539)) (Some!368 (_2!3273 lt!185539)))))

(assert (=> d!73071 (= lt!185724 (lemmaContainsTupThenGetReturnValue!187 lt!185726 (_1!3273 lt!185539) (_2!3273 lt!185539)))))

(assert (=> d!73071 (= lt!185726 (insertStrictlySorted!189 (toList!2742 lt!185538) (_1!3273 lt!185539) (_2!3273 lt!185539)))))

(assert (=> d!73071 (= (+!1040 lt!185538 lt!185539) lt!185723)))

(declare-fun b!392704 () Bool)

(declare-fun res!224960 () Bool)

(assert (=> b!392704 (=> (not res!224960) (not e!237812))))

(assert (=> b!392704 (= res!224960 (= (getValueByKey!363 (toList!2742 lt!185723) (_1!3273 lt!185539)) (Some!368 (_2!3273 lt!185539))))))

(declare-fun b!392705 () Bool)

(assert (=> b!392705 (= e!237812 (contains!2469 (toList!2742 lt!185723) lt!185539))))

(assert (= (and d!73071 res!224961) b!392704))

(assert (= (and b!392704 res!224960) b!392705))

(declare-fun m!389207 () Bool)

(assert (=> d!73071 m!389207))

(declare-fun m!389209 () Bool)

(assert (=> d!73071 m!389209))

(declare-fun m!389211 () Bool)

(assert (=> d!73071 m!389211))

(declare-fun m!389213 () Bool)

(assert (=> d!73071 m!389213))

(declare-fun m!389215 () Bool)

(assert (=> b!392704 m!389215))

(declare-fun m!389217 () Bool)

(assert (=> b!392705 m!389217))

(assert (=> b!392459 d!73071))

(declare-fun b!392713 () Bool)

(declare-fun e!237818 () Bool)

(assert (=> b!392713 (= e!237818 tp_is_empty!9687)))

(declare-fun condMapEmpty!16128 () Bool)

(declare-fun mapDefault!16128 () ValueCell!4500)

(assert (=> mapNonEmpty!16122 (= condMapEmpty!16128 (= mapRest!16122 ((as const (Array (_ BitVec 32) ValueCell!4500)) mapDefault!16128)))))

(declare-fun mapRes!16128 () Bool)

(assert (=> mapNonEmpty!16122 (= tp!31823 (and e!237818 mapRes!16128))))

(declare-fun mapIsEmpty!16128 () Bool)

(assert (=> mapIsEmpty!16128 mapRes!16128))

(declare-fun mapNonEmpty!16128 () Bool)

(declare-fun tp!31833 () Bool)

(declare-fun e!237817 () Bool)

(assert (=> mapNonEmpty!16128 (= mapRes!16128 (and tp!31833 e!237817))))

(declare-fun mapRest!16128 () (Array (_ BitVec 32) ValueCell!4500))

(declare-fun mapValue!16128 () ValueCell!4500)

(declare-fun mapKey!16128 () (_ BitVec 32))

(assert (=> mapNonEmpty!16128 (= mapRest!16122 (store mapRest!16128 mapKey!16128 mapValue!16128))))

(declare-fun b!392712 () Bool)

(assert (=> b!392712 (= e!237817 tp_is_empty!9687)))

(assert (= (and mapNonEmpty!16122 condMapEmpty!16128) mapIsEmpty!16128))

(assert (= (and mapNonEmpty!16122 (not condMapEmpty!16128)) mapNonEmpty!16128))

(assert (= (and mapNonEmpty!16128 ((_ is ValueCellFull!4500) mapValue!16128)) b!392712))

(assert (= (and mapNonEmpty!16122 ((_ is ValueCellFull!4500) mapDefault!16128)) b!392713))

(declare-fun m!389219 () Bool)

(assert (=> mapNonEmpty!16128 m!389219))

(declare-fun b_lambda!8785 () Bool)

(assert (= b_lambda!8783 (or (and start!38120 b_free!9015) b_lambda!8785)))

(declare-fun b_lambda!8787 () Bool)

(assert (= b_lambda!8781 (or (and start!38120 b_free!9015) b_lambda!8787)))

(declare-fun b_lambda!8789 () Bool)

(assert (= b_lambda!8775 (or (and start!38120 b_free!9015) b_lambda!8789)))

(declare-fun b_lambda!8791 () Bool)

(assert (= b_lambda!8779 (or (and start!38120 b_free!9015) b_lambda!8791)))

(declare-fun b_lambda!8793 () Bool)

(assert (= b_lambda!8773 (or (and start!38120 b_free!9015) b_lambda!8793)))

(declare-fun b_lambda!8795 () Bool)

(assert (= b_lambda!8777 (or (and start!38120 b_free!9015) b_lambda!8795)))

(check-sat (not b!392637) tp_is_empty!9687 (not b_lambda!8791) (not bm!27757) (not b_lambda!8785) (not b!392535) (not b!392703) (not b!392604) b_and!16397 (not bm!27749) (not b!392657) (not b!392613) (not b!392536) (not d!73043) (not b!392620) (not d!73039) (not b!392674) (not bm!27750) (not b_next!9015) (not bm!27747) (not bm!27735) (not b!392631) (not b!392597) (not bm!27719) (not bm!27741) (not b!392635) (not b!392615) (not b!392636) (not b!392689) (not bm!27761) (not b!392534) (not d!73045) (not b!392611) (not b!392691) (not b!392628) (not b!392686) (not d!73041) (not d!73047) (not b!392687) (not b_lambda!8793) (not b!392697) (not b!392656) (not bm!27762) (not b!392696) (not b!392673) (not b!392639) (not b!392651) (not bm!27746) (not b!392694) (not bm!27738) (not b!392704) (not d!73059) (not bm!27734) (not b!392599) (not b!392593) (not b!392533) (not bm!27748) (not bm!27736) (not b!392646) (not b!392669) (not b!392692) (not b!392641) (not b!392612) (not b_lambda!8787) (not b!392658) (not b!392541) (not b_lambda!8789) (not b!392543) (not mapNonEmpty!16128) (not b!392538) (not b!392670) (not b!392595) (not b!392609) (not b!392659) (not b!392618) (not d!73049) (not d!73071) (not b!392705) (not b_lambda!8795) (not b!392537) (not b!392594) (not bm!27758) (not b!392614) (not bm!27752) (not b!392589) (not b!392610) (not d!73037))
(check-sat b_and!16397 (not b_next!9015))
