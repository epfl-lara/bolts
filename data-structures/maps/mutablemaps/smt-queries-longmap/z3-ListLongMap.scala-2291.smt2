; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37218 () Bool)

(assert start!37218)

(declare-fun b_free!8337 () Bool)

(declare-fun b_next!8337 () Bool)

(assert (=> start!37218 (= b_free!8337 (not b_next!8337))))

(declare-fun tp!29726 () Bool)

(declare-fun b_and!15597 () Bool)

(assert (=> start!37218 (= tp!29726 b_and!15597)))

(declare-fun b!375831 () Bool)

(declare-fun e!228936 () Bool)

(declare-fun tp_is_empty!8985 () Bool)

(assert (=> b!375831 (= e!228936 tp_is_empty!8985)))

(declare-fun b!375832 () Bool)

(declare-fun e!228935 () Bool)

(assert (=> b!375832 (= e!228935 true)))

(declare-datatypes ((V!13085 0))(
  ( (V!13086 (val!4537 Int)) )
))
(declare-datatypes ((tuple2!6014 0))(
  ( (tuple2!6015 (_1!3017 (_ BitVec 64)) (_2!3017 V!13085)) )
))
(declare-datatypes ((List!5884 0))(
  ( (Nil!5881) (Cons!5880 (h!6736 tuple2!6014) (t!11042 List!5884)) )
))
(declare-datatypes ((ListLongMap!4941 0))(
  ( (ListLongMap!4942 (toList!2486 List!5884)) )
))
(declare-fun lt!174237 () ListLongMap!4941)

(declare-fun lt!174235 () ListLongMap!4941)

(declare-fun lt!174243 () tuple2!6014)

(declare-fun +!827 (ListLongMap!4941 tuple2!6014) ListLongMap!4941)

(assert (=> b!375832 (= lt!174237 (+!827 lt!174235 lt!174243))))

(declare-fun v!373 () V!13085)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun zeroValue!472 () V!13085)

(declare-fun lt!174234 () ListLongMap!4941)

(declare-datatypes ((Unit!11557 0))(
  ( (Unit!11558) )
))
(declare-fun lt!174233 () Unit!11557)

(declare-fun addCommutativeForDiffKeys!253 (ListLongMap!4941 (_ BitVec 64) V!13085 (_ BitVec 64) V!13085) Unit!11557)

(assert (=> b!375832 (= lt!174233 (addCommutativeForDiffKeys!253 lt!174234 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375833 () Bool)

(declare-fun res!212372 () Bool)

(declare-fun e!228934 () Bool)

(assert (=> b!375833 (=> (not res!212372) (not e!228934))))

(declare-datatypes ((array!21869 0))(
  ( (array!21870 (arr!10400 (Array (_ BitVec 32) (_ BitVec 64))) (size!10752 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21869)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375833 (= res!212372 (or (= (select (arr!10400 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10400 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375834 () Bool)

(declare-fun res!212377 () Bool)

(assert (=> b!375834 (=> (not res!212377) (not e!228934))))

(declare-datatypes ((List!5885 0))(
  ( (Nil!5882) (Cons!5881 (h!6737 (_ BitVec 64)) (t!11043 List!5885)) )
))
(declare-fun arrayNoDuplicates!0 (array!21869 (_ BitVec 32) List!5885) Bool)

(assert (=> b!375834 (= res!212377 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5882))))

(declare-fun b!375835 () Bool)

(declare-fun res!212381 () Bool)

(assert (=> b!375835 (=> (not res!212381) (not e!228934))))

(declare-fun arrayContainsKey!0 (array!21869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375835 (= res!212381 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!375836 () Bool)

(declare-fun res!212370 () Bool)

(declare-fun e!228932 () Bool)

(assert (=> b!375836 (=> (not res!212370) (not e!228932))))

(declare-fun lt!174241 () array!21869)

(assert (=> b!375836 (= res!212370 (arrayNoDuplicates!0 lt!174241 #b00000000000000000000000000000000 Nil!5882))))

(declare-fun res!212373 () Bool)

(assert (=> start!37218 (=> (not res!212373) (not e!228934))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37218 (= res!212373 (validMask!0 mask!970))))

(assert (=> start!37218 e!228934))

(declare-datatypes ((ValueCell!4149 0))(
  ( (ValueCellFull!4149 (v!6730 V!13085)) (EmptyCell!4149) )
))
(declare-datatypes ((array!21871 0))(
  ( (array!21872 (arr!10401 (Array (_ BitVec 32) ValueCell!4149)) (size!10753 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21871)

(declare-fun e!228938 () Bool)

(declare-fun array_inv!7662 (array!21871) Bool)

(assert (=> start!37218 (and (array_inv!7662 _values!506) e!228938)))

(assert (=> start!37218 tp!29726))

(assert (=> start!37218 true))

(assert (=> start!37218 tp_is_empty!8985))

(declare-fun array_inv!7663 (array!21869) Bool)

(assert (=> start!37218 (array_inv!7663 _keys!658)))

(declare-fun b!375837 () Bool)

(declare-fun res!212371 () Bool)

(assert (=> b!375837 (=> (not res!212371) (not e!228934))))

(assert (=> b!375837 (= res!212371 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10752 _keys!658))))))

(declare-fun b!375838 () Bool)

(assert (=> b!375838 (= e!228934 e!228932)))

(declare-fun res!212380 () Bool)

(assert (=> b!375838 (=> (not res!212380) (not e!228932))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21869 (_ BitVec 32)) Bool)

(assert (=> b!375838 (= res!212380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174241 mask!970))))

(assert (=> b!375838 (= lt!174241 (array!21870 (store (arr!10400 _keys!658) i!548 k0!778) (size!10752 _keys!658)))))

(declare-fun b!375839 () Bool)

(declare-fun e!228937 () Bool)

(assert (=> b!375839 (= e!228932 (not e!228937))))

(declare-fun res!212375 () Bool)

(assert (=> b!375839 (=> res!212375 e!228937)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375839 (= res!212375 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!174242 () ListLongMap!4941)

(declare-fun minValue!472 () V!13085)

(declare-fun getCurrentListMap!1925 (array!21869 array!21871 (_ BitVec 32) (_ BitVec 32) V!13085 V!13085 (_ BitVec 32) Int) ListLongMap!4941)

(assert (=> b!375839 (= lt!174242 (getCurrentListMap!1925 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174239 () ListLongMap!4941)

(declare-fun lt!174240 () array!21871)

(assert (=> b!375839 (= lt!174239 (getCurrentListMap!1925 lt!174241 lt!174240 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174236 () ListLongMap!4941)

(declare-fun lt!174232 () ListLongMap!4941)

(assert (=> b!375839 (and (= lt!174236 lt!174232) (= lt!174232 lt!174236))))

(assert (=> b!375839 (= lt!174232 (+!827 lt!174234 lt!174243))))

(assert (=> b!375839 (= lt!174243 (tuple2!6015 k0!778 v!373))))

(declare-fun lt!174244 () Unit!11557)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!76 (array!21869 array!21871 (_ BitVec 32) (_ BitVec 32) V!13085 V!13085 (_ BitVec 32) (_ BitVec 64) V!13085 (_ BitVec 32) Int) Unit!11557)

(assert (=> b!375839 (= lt!174244 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!76 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!743 (array!21869 array!21871 (_ BitVec 32) (_ BitVec 32) V!13085 V!13085 (_ BitVec 32) Int) ListLongMap!4941)

(assert (=> b!375839 (= lt!174236 (getCurrentListMapNoExtraKeys!743 lt!174241 lt!174240 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375839 (= lt!174240 (array!21872 (store (arr!10401 _values!506) i!548 (ValueCellFull!4149 v!373)) (size!10753 _values!506)))))

(assert (=> b!375839 (= lt!174234 (getCurrentListMapNoExtraKeys!743 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375840 () Bool)

(declare-fun res!212379 () Bool)

(assert (=> b!375840 (=> (not res!212379) (not e!228934))))

(assert (=> b!375840 (= res!212379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15042 () Bool)

(declare-fun mapRes!15042 () Bool)

(assert (=> mapIsEmpty!15042 mapRes!15042))

(declare-fun b!375841 () Bool)

(declare-fun e!228939 () Bool)

(assert (=> b!375841 (= e!228938 (and e!228939 mapRes!15042))))

(declare-fun condMapEmpty!15042 () Bool)

(declare-fun mapDefault!15042 () ValueCell!4149)

(assert (=> b!375841 (= condMapEmpty!15042 (= (arr!10401 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4149)) mapDefault!15042)))))

(declare-fun b!375842 () Bool)

(assert (=> b!375842 (= e!228939 tp_is_empty!8985)))

(declare-fun b!375843 () Bool)

(assert (=> b!375843 (= e!228937 e!228935)))

(declare-fun res!212374 () Bool)

(assert (=> b!375843 (=> res!212374 e!228935)))

(assert (=> b!375843 (= res!212374 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!375843 (= lt!174239 lt!174237)))

(declare-fun lt!174238 () tuple2!6014)

(assert (=> b!375843 (= lt!174237 (+!827 lt!174232 lt!174238))))

(assert (=> b!375843 (= lt!174242 lt!174235)))

(assert (=> b!375843 (= lt!174235 (+!827 lt!174234 lt!174238))))

(assert (=> b!375843 (= lt!174239 (+!827 lt!174236 lt!174238))))

(assert (=> b!375843 (= lt!174238 (tuple2!6015 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!15042 () Bool)

(declare-fun tp!29727 () Bool)

(assert (=> mapNonEmpty!15042 (= mapRes!15042 (and tp!29727 e!228936))))

(declare-fun mapKey!15042 () (_ BitVec 32))

(declare-fun mapRest!15042 () (Array (_ BitVec 32) ValueCell!4149))

(declare-fun mapValue!15042 () ValueCell!4149)

(assert (=> mapNonEmpty!15042 (= (arr!10401 _values!506) (store mapRest!15042 mapKey!15042 mapValue!15042))))

(declare-fun b!375844 () Bool)

(declare-fun res!212376 () Bool)

(assert (=> b!375844 (=> (not res!212376) (not e!228934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375844 (= res!212376 (validKeyInArray!0 k0!778))))

(declare-fun b!375845 () Bool)

(declare-fun res!212378 () Bool)

(assert (=> b!375845 (=> (not res!212378) (not e!228934))))

(assert (=> b!375845 (= res!212378 (and (= (size!10753 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10752 _keys!658) (size!10753 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!37218 res!212373) b!375845))

(assert (= (and b!375845 res!212378) b!375840))

(assert (= (and b!375840 res!212379) b!375834))

(assert (= (and b!375834 res!212377) b!375837))

(assert (= (and b!375837 res!212371) b!375844))

(assert (= (and b!375844 res!212376) b!375833))

(assert (= (and b!375833 res!212372) b!375835))

(assert (= (and b!375835 res!212381) b!375838))

(assert (= (and b!375838 res!212380) b!375836))

(assert (= (and b!375836 res!212370) b!375839))

(assert (= (and b!375839 (not res!212375)) b!375843))

(assert (= (and b!375843 (not res!212374)) b!375832))

(assert (= (and b!375841 condMapEmpty!15042) mapIsEmpty!15042))

(assert (= (and b!375841 (not condMapEmpty!15042)) mapNonEmpty!15042))

(get-info :version)

(assert (= (and mapNonEmpty!15042 ((_ is ValueCellFull!4149) mapValue!15042)) b!375831))

(assert (= (and b!375841 ((_ is ValueCellFull!4149) mapDefault!15042)) b!375842))

(assert (= start!37218 b!375841))

(declare-fun m!372545 () Bool)

(assert (=> b!375839 m!372545))

(declare-fun m!372547 () Bool)

(assert (=> b!375839 m!372547))

(declare-fun m!372549 () Bool)

(assert (=> b!375839 m!372549))

(declare-fun m!372551 () Bool)

(assert (=> b!375839 m!372551))

(declare-fun m!372553 () Bool)

(assert (=> b!375839 m!372553))

(declare-fun m!372555 () Bool)

(assert (=> b!375839 m!372555))

(declare-fun m!372557 () Bool)

(assert (=> b!375839 m!372557))

(declare-fun m!372559 () Bool)

(assert (=> b!375838 m!372559))

(declare-fun m!372561 () Bool)

(assert (=> b!375838 m!372561))

(declare-fun m!372563 () Bool)

(assert (=> b!375844 m!372563))

(declare-fun m!372565 () Bool)

(assert (=> b!375840 m!372565))

(declare-fun m!372567 () Bool)

(assert (=> b!375833 m!372567))

(declare-fun m!372569 () Bool)

(assert (=> mapNonEmpty!15042 m!372569))

(declare-fun m!372571 () Bool)

(assert (=> b!375834 m!372571))

(declare-fun m!372573 () Bool)

(assert (=> b!375835 m!372573))

(declare-fun m!372575 () Bool)

(assert (=> b!375843 m!372575))

(declare-fun m!372577 () Bool)

(assert (=> b!375843 m!372577))

(declare-fun m!372579 () Bool)

(assert (=> b!375843 m!372579))

(declare-fun m!372581 () Bool)

(assert (=> b!375836 m!372581))

(declare-fun m!372583 () Bool)

(assert (=> b!375832 m!372583))

(declare-fun m!372585 () Bool)

(assert (=> b!375832 m!372585))

(declare-fun m!372587 () Bool)

(assert (=> start!37218 m!372587))

(declare-fun m!372589 () Bool)

(assert (=> start!37218 m!372589))

(declare-fun m!372591 () Bool)

(assert (=> start!37218 m!372591))

(check-sat (not start!37218) b_and!15597 (not b!375840) (not b!375844) tp_is_empty!8985 (not b!375834) (not b!375839) (not b!375832) (not b!375838) (not b_next!8337) (not b!375835) (not mapNonEmpty!15042) (not b!375843) (not b!375836))
(check-sat b_and!15597 (not b_next!8337))
