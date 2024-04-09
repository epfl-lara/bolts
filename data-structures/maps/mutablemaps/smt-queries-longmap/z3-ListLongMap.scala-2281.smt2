; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37158 () Bool)

(assert start!37158)

(declare-fun b_free!8277 () Bool)

(declare-fun b_next!8277 () Bool)

(assert (=> start!37158 (= b_free!8277 (not b_next!8277))))

(declare-fun tp!29546 () Bool)

(declare-fun b_and!15537 () Bool)

(assert (=> start!37158 (= tp!29546 b_and!15537)))

(declare-fun b!374472 () Bool)

(declare-fun res!211283 () Bool)

(declare-fun e!228213 () Bool)

(assert (=> b!374472 (=> (not res!211283) (not e!228213))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13005 0))(
  ( (V!13006 (val!4507 Int)) )
))
(declare-datatypes ((ValueCell!4119 0))(
  ( (ValueCellFull!4119 (v!6700 V!13005)) (EmptyCell!4119) )
))
(declare-datatypes ((array!21751 0))(
  ( (array!21752 (arr!10341 (Array (_ BitVec 32) ValueCell!4119)) (size!10693 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21751)

(declare-datatypes ((array!21753 0))(
  ( (array!21754 (arr!10342 (Array (_ BitVec 32) (_ BitVec 64))) (size!10694 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21753)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!374472 (= res!211283 (and (= (size!10693 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10694 _keys!658) (size!10693 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!374473 () Bool)

(declare-fun res!211286 () Bool)

(assert (=> b!374473 (=> (not res!211286) (not e!228213))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!374473 (= res!211286 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10694 _keys!658))))))

(declare-fun b!374474 () Bool)

(declare-fun res!211292 () Bool)

(assert (=> b!374474 (=> (not res!211292) (not e!228213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21753 (_ BitVec 32)) Bool)

(assert (=> b!374474 (= res!211292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!374475 () Bool)

(declare-fun e!228214 () Bool)

(declare-fun tp_is_empty!8925 () Bool)

(assert (=> b!374475 (= e!228214 tp_is_empty!8925)))

(declare-fun b!374476 () Bool)

(declare-fun res!211285 () Bool)

(assert (=> b!374476 (=> (not res!211285) (not e!228213))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374476 (= res!211285 (validKeyInArray!0 k0!778))))

(declare-fun b!374477 () Bool)

(declare-fun res!211287 () Bool)

(assert (=> b!374477 (=> (not res!211287) (not e!228213))))

(declare-fun arrayContainsKey!0 (array!21753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374477 (= res!211287 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!374478 () Bool)

(declare-fun e!228215 () Bool)

(assert (=> b!374478 (= e!228215 tp_is_empty!8925)))

(declare-fun res!211289 () Bool)

(assert (=> start!37158 (=> (not res!211289) (not e!228213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37158 (= res!211289 (validMask!0 mask!970))))

(assert (=> start!37158 e!228213))

(declare-fun e!228216 () Bool)

(declare-fun array_inv!7624 (array!21751) Bool)

(assert (=> start!37158 (and (array_inv!7624 _values!506) e!228216)))

(assert (=> start!37158 tp!29546))

(assert (=> start!37158 true))

(assert (=> start!37158 tp_is_empty!8925))

(declare-fun array_inv!7625 (array!21753) Bool)

(assert (=> start!37158 (array_inv!7625 _keys!658)))

(declare-fun mapNonEmpty!14952 () Bool)

(declare-fun mapRes!14952 () Bool)

(declare-fun tp!29547 () Bool)

(assert (=> mapNonEmpty!14952 (= mapRes!14952 (and tp!29547 e!228214))))

(declare-fun mapValue!14952 () ValueCell!4119)

(declare-fun mapKey!14952 () (_ BitVec 32))

(declare-fun mapRest!14952 () (Array (_ BitVec 32) ValueCell!4119))

(assert (=> mapNonEmpty!14952 (= (arr!10341 _values!506) (store mapRest!14952 mapKey!14952 mapValue!14952))))

(declare-fun b!374479 () Bool)

(declare-fun e!228217 () Bool)

(assert (=> b!374479 (= e!228213 e!228217)))

(declare-fun res!211284 () Bool)

(assert (=> b!374479 (=> (not res!211284) (not e!228217))))

(declare-fun lt!172834 () array!21753)

(assert (=> b!374479 (= res!211284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172834 mask!970))))

(assert (=> b!374479 (= lt!172834 (array!21754 (store (arr!10342 _keys!658) i!548 k0!778) (size!10694 _keys!658)))))

(declare-fun b!374480 () Bool)

(declare-fun res!211282 () Bool)

(assert (=> b!374480 (=> (not res!211282) (not e!228217))))

(declare-datatypes ((List!5840 0))(
  ( (Nil!5837) (Cons!5836 (h!6692 (_ BitVec 64)) (t!10998 List!5840)) )
))
(declare-fun arrayNoDuplicates!0 (array!21753 (_ BitVec 32) List!5840) Bool)

(assert (=> b!374480 (= res!211282 (arrayNoDuplicates!0 lt!172834 #b00000000000000000000000000000000 Nil!5837))))

(declare-fun b!374481 () Bool)

(declare-fun e!228218 () Bool)

(assert (=> b!374481 (= e!228218 true)))

(declare-datatypes ((tuple2!5970 0))(
  ( (tuple2!5971 (_1!2995 (_ BitVec 64)) (_2!2995 V!13005)) )
))
(declare-datatypes ((List!5841 0))(
  ( (Nil!5838) (Cons!5837 (h!6693 tuple2!5970) (t!10999 List!5841)) )
))
(declare-datatypes ((ListLongMap!4897 0))(
  ( (ListLongMap!4898 (toList!2464 List!5841)) )
))
(declare-fun lt!172843 () ListLongMap!4897)

(declare-fun lt!172846 () tuple2!5970)

(declare-fun lt!172840 () tuple2!5970)

(declare-fun lt!172844 () ListLongMap!4897)

(declare-fun +!805 (ListLongMap!4897 tuple2!5970) ListLongMap!4897)

(assert (=> b!374481 (= (+!805 lt!172843 lt!172840) (+!805 lt!172844 lt!172846))))

(declare-fun lt!172841 () ListLongMap!4897)

(declare-fun v!373 () V!13005)

(declare-datatypes ((Unit!11513 0))(
  ( (Unit!11514) )
))
(declare-fun lt!172832 () Unit!11513)

(declare-fun minValue!472 () V!13005)

(declare-fun addCommutativeForDiffKeys!234 (ListLongMap!4897 (_ BitVec 64) V!13005 (_ BitVec 64) V!13005) Unit!11513)

(assert (=> b!374481 (= lt!172832 (addCommutativeForDiffKeys!234 lt!172841 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374482 () Bool)

(declare-fun e!228219 () Bool)

(assert (=> b!374482 (= e!228219 e!228218)))

(declare-fun res!211290 () Bool)

(assert (=> b!374482 (=> res!211290 e!228218)))

(assert (=> b!374482 (= res!211290 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!172837 () ListLongMap!4897)

(assert (=> b!374482 (= lt!172837 lt!172843)))

(assert (=> b!374482 (= lt!172843 (+!805 lt!172841 lt!172846))))

(declare-fun lt!172833 () ListLongMap!4897)

(declare-fun lt!172835 () Unit!11513)

(declare-fun zeroValue!472 () V!13005)

(assert (=> b!374482 (= lt!172835 (addCommutativeForDiffKeys!234 lt!172833 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!172830 () ListLongMap!4897)

(assert (=> b!374482 (= lt!172830 (+!805 lt!172837 lt!172840))))

(declare-fun lt!172839 () ListLongMap!4897)

(declare-fun lt!172836 () tuple2!5970)

(assert (=> b!374482 (= lt!172837 (+!805 lt!172839 lt!172836))))

(declare-fun lt!172842 () ListLongMap!4897)

(assert (=> b!374482 (= lt!172842 lt!172844)))

(assert (=> b!374482 (= lt!172844 (+!805 lt!172841 lt!172840))))

(assert (=> b!374482 (= lt!172841 (+!805 lt!172833 lt!172836))))

(declare-fun lt!172838 () ListLongMap!4897)

(assert (=> b!374482 (= lt!172830 (+!805 (+!805 lt!172838 lt!172836) lt!172840))))

(assert (=> b!374482 (= lt!172840 (tuple2!5971 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374482 (= lt!172836 (tuple2!5971 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!374483 () Bool)

(assert (=> b!374483 (= e!228217 (not e!228219))))

(declare-fun res!211291 () Bool)

(assert (=> b!374483 (=> res!211291 e!228219)))

(assert (=> b!374483 (= res!211291 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1907 (array!21753 array!21751 (_ BitVec 32) (_ BitVec 32) V!13005 V!13005 (_ BitVec 32) Int) ListLongMap!4897)

(assert (=> b!374483 (= lt!172842 (getCurrentListMap!1907 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172845 () array!21751)

(assert (=> b!374483 (= lt!172830 (getCurrentListMap!1907 lt!172834 lt!172845 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374483 (and (= lt!172838 lt!172839) (= lt!172839 lt!172838))))

(assert (=> b!374483 (= lt!172839 (+!805 lt!172833 lt!172846))))

(assert (=> b!374483 (= lt!172846 (tuple2!5971 k0!778 v!373))))

(declare-fun lt!172831 () Unit!11513)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!58 (array!21753 array!21751 (_ BitVec 32) (_ BitVec 32) V!13005 V!13005 (_ BitVec 32) (_ BitVec 64) V!13005 (_ BitVec 32) Int) Unit!11513)

(assert (=> b!374483 (= lt!172831 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!58 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!725 (array!21753 array!21751 (_ BitVec 32) (_ BitVec 32) V!13005 V!13005 (_ BitVec 32) Int) ListLongMap!4897)

(assert (=> b!374483 (= lt!172838 (getCurrentListMapNoExtraKeys!725 lt!172834 lt!172845 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374483 (= lt!172845 (array!21752 (store (arr!10341 _values!506) i!548 (ValueCellFull!4119 v!373)) (size!10693 _values!506)))))

(assert (=> b!374483 (= lt!172833 (getCurrentListMapNoExtraKeys!725 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374484 () Bool)

(declare-fun res!211288 () Bool)

(assert (=> b!374484 (=> (not res!211288) (not e!228213))))

(assert (=> b!374484 (= res!211288 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5837))))

(declare-fun b!374485 () Bool)

(declare-fun res!211281 () Bool)

(assert (=> b!374485 (=> (not res!211281) (not e!228213))))

(assert (=> b!374485 (= res!211281 (or (= (select (arr!10342 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10342 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!374486 () Bool)

(assert (=> b!374486 (= e!228216 (and e!228215 mapRes!14952))))

(declare-fun condMapEmpty!14952 () Bool)

(declare-fun mapDefault!14952 () ValueCell!4119)

(assert (=> b!374486 (= condMapEmpty!14952 (= (arr!10341 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4119)) mapDefault!14952)))))

(declare-fun mapIsEmpty!14952 () Bool)

(assert (=> mapIsEmpty!14952 mapRes!14952))

(assert (= (and start!37158 res!211289) b!374472))

(assert (= (and b!374472 res!211283) b!374474))

(assert (= (and b!374474 res!211292) b!374484))

(assert (= (and b!374484 res!211288) b!374473))

(assert (= (and b!374473 res!211286) b!374476))

(assert (= (and b!374476 res!211285) b!374485))

(assert (= (and b!374485 res!211281) b!374477))

(assert (= (and b!374477 res!211287) b!374479))

(assert (= (and b!374479 res!211284) b!374480))

(assert (= (and b!374480 res!211282) b!374483))

(assert (= (and b!374483 (not res!211291)) b!374482))

(assert (= (and b!374482 (not res!211290)) b!374481))

(assert (= (and b!374486 condMapEmpty!14952) mapIsEmpty!14952))

(assert (= (and b!374486 (not condMapEmpty!14952)) mapNonEmpty!14952))

(get-info :version)

(assert (= (and mapNonEmpty!14952 ((_ is ValueCellFull!4119) mapValue!14952)) b!374475))

(assert (= (and b!374486 ((_ is ValueCellFull!4119) mapDefault!14952)) b!374478))

(assert (= start!37158 b!374486))

(declare-fun m!370841 () Bool)

(assert (=> start!37158 m!370841))

(declare-fun m!370843 () Bool)

(assert (=> start!37158 m!370843))

(declare-fun m!370845 () Bool)

(assert (=> start!37158 m!370845))

(declare-fun m!370847 () Bool)

(assert (=> b!374474 m!370847))

(declare-fun m!370849 () Bool)

(assert (=> b!374485 m!370849))

(declare-fun m!370851 () Bool)

(assert (=> b!374481 m!370851))

(declare-fun m!370853 () Bool)

(assert (=> b!374481 m!370853))

(declare-fun m!370855 () Bool)

(assert (=> b!374481 m!370855))

(declare-fun m!370857 () Bool)

(assert (=> b!374477 m!370857))

(declare-fun m!370859 () Bool)

(assert (=> b!374479 m!370859))

(declare-fun m!370861 () Bool)

(assert (=> b!374479 m!370861))

(declare-fun m!370863 () Bool)

(assert (=> b!374482 m!370863))

(declare-fun m!370865 () Bool)

(assert (=> b!374482 m!370865))

(declare-fun m!370867 () Bool)

(assert (=> b!374482 m!370867))

(declare-fun m!370869 () Bool)

(assert (=> b!374482 m!370869))

(declare-fun m!370871 () Bool)

(assert (=> b!374482 m!370871))

(declare-fun m!370873 () Bool)

(assert (=> b!374482 m!370873))

(declare-fun m!370875 () Bool)

(assert (=> b!374482 m!370875))

(assert (=> b!374482 m!370873))

(declare-fun m!370877 () Bool)

(assert (=> b!374482 m!370877))

(declare-fun m!370879 () Bool)

(assert (=> b!374476 m!370879))

(declare-fun m!370881 () Bool)

(assert (=> mapNonEmpty!14952 m!370881))

(declare-fun m!370883 () Bool)

(assert (=> b!374484 m!370883))

(declare-fun m!370885 () Bool)

(assert (=> b!374483 m!370885))

(declare-fun m!370887 () Bool)

(assert (=> b!374483 m!370887))

(declare-fun m!370889 () Bool)

(assert (=> b!374483 m!370889))

(declare-fun m!370891 () Bool)

(assert (=> b!374483 m!370891))

(declare-fun m!370893 () Bool)

(assert (=> b!374483 m!370893))

(declare-fun m!370895 () Bool)

(assert (=> b!374483 m!370895))

(declare-fun m!370897 () Bool)

(assert (=> b!374483 m!370897))

(declare-fun m!370899 () Bool)

(assert (=> b!374480 m!370899))

(check-sat (not b!374484) (not b!374480) (not b_next!8277) (not b!374477) (not b!374482) (not b!374481) (not b!374474) (not mapNonEmpty!14952) b_and!15537 (not b!374479) (not start!37158) (not b!374483) (not b!374476) tp_is_empty!8925)
(check-sat b_and!15537 (not b_next!8277))
