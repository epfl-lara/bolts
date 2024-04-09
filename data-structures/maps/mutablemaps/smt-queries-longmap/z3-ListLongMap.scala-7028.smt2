; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89218 () Bool)

(assert start!89218)

(declare-fun b!1022463 () Bool)

(declare-fun b_free!20223 () Bool)

(declare-fun b_next!20223 () Bool)

(assert (=> b!1022463 (= b_free!20223 (not b_next!20223))))

(declare-fun tp!71705 () Bool)

(declare-fun b_and!32447 () Bool)

(assert (=> b!1022463 (= tp!71705 b_and!32447)))

(declare-fun mapIsEmpty!37332 () Bool)

(declare-fun mapRes!37332 () Bool)

(assert (=> mapIsEmpty!37332 mapRes!37332))

(declare-fun b!1022461 () Bool)

(declare-fun e!576050 () Bool)

(declare-fun tp_is_empty!23943 () Bool)

(assert (=> b!1022461 (= e!576050 tp_is_empty!23943)))

(declare-fun b!1022462 () Bool)

(declare-fun e!576053 () Bool)

(assert (=> b!1022462 (= e!576053 tp_is_empty!23943)))

(declare-fun e!576055 () Bool)

(declare-datatypes ((V!36797 0))(
  ( (V!36798 (val!12022 Int)) )
))
(declare-datatypes ((ValueCell!11268 0))(
  ( (ValueCellFull!11268 (v!14592 V!36797)) (EmptyCell!11268) )
))
(declare-datatypes ((array!63914 0))(
  ( (array!63915 (arr!30765 (Array (_ BitVec 32) (_ BitVec 64))) (size!31277 (_ BitVec 32))) )
))
(declare-datatypes ((array!63916 0))(
  ( (array!63917 (arr!30766 (Array (_ BitVec 32) ValueCell!11268)) (size!31278 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5130 0))(
  ( (LongMapFixedSize!5131 (defaultEntry!5917 Int) (mask!29509 (_ BitVec 32)) (extraKeys!5649 (_ BitVec 32)) (zeroValue!5753 V!36797) (minValue!5753 V!36797) (_size!2620 (_ BitVec 32)) (_keys!11059 array!63914) (_values!5940 array!63916) (_vacant!2620 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5130)

(declare-fun e!576052 () Bool)

(declare-fun array_inv!23715 (array!63914) Bool)

(declare-fun array_inv!23716 (array!63916) Bool)

(assert (=> b!1022463 (= e!576055 (and tp!71705 tp_is_empty!23943 (array_inv!23715 (_keys!11059 thiss!1427)) (array_inv!23716 (_values!5940 thiss!1427)) e!576052))))

(declare-fun b!1022464 () Bool)

(assert (=> b!1022464 (= e!576052 (and e!576053 mapRes!37332))))

(declare-fun condMapEmpty!37332 () Bool)

(declare-fun mapDefault!37332 () ValueCell!11268)

(assert (=> b!1022464 (= condMapEmpty!37332 (= (arr!30766 (_values!5940 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11268)) mapDefault!37332)))))

(declare-fun mapNonEmpty!37332 () Bool)

(declare-fun tp!71704 () Bool)

(assert (=> mapNonEmpty!37332 (= mapRes!37332 (and tp!71704 e!576050))))

(declare-fun mapRest!37332 () (Array (_ BitVec 32) ValueCell!11268))

(declare-fun mapValue!37332 () ValueCell!11268)

(declare-fun mapKey!37332 () (_ BitVec 32))

(assert (=> mapNonEmpty!37332 (= (arr!30766 (_values!5940 thiss!1427)) (store mapRest!37332 mapKey!37332 mapValue!37332))))

(declare-fun b!1022466 () Bool)

(declare-fun e!576051 () Bool)

(assert (=> b!1022466 (= e!576051 (not true))))

(declare-fun lt!450233 () Bool)

(declare-fun lt!450235 () V!36797)

(declare-fun valid!1918 (LongMapFixedSize!5130) Bool)

(assert (=> b!1022466 (= lt!450233 (valid!1918 (LongMapFixedSize!5131 (defaultEntry!5917 thiss!1427) (mask!29509 thiss!1427) (bvand (extraKeys!5649 thiss!1427) #b00000000000000000000000000000010) lt!450235 (minValue!5753 thiss!1427) (_size!2620 thiss!1427) (_keys!11059 thiss!1427) (_values!5940 thiss!1427) (_vacant!2620 thiss!1427))))))

(declare-datatypes ((tuple2!15586 0))(
  ( (tuple2!15587 (_1!7803 (_ BitVec 64)) (_2!7803 V!36797)) )
))
(declare-datatypes ((List!21793 0))(
  ( (Nil!21790) (Cons!21789 (h!22987 tuple2!15586) (t!30824 List!21793)) )
))
(declare-datatypes ((ListLongMap!13745 0))(
  ( (ListLongMap!13746 (toList!6888 List!21793)) )
))
(declare-fun -!464 (ListLongMap!13745 (_ BitVec 64)) ListLongMap!13745)

(declare-fun getCurrentListMap!3895 (array!63914 array!63916 (_ BitVec 32) (_ BitVec 32) V!36797 V!36797 (_ BitVec 32) Int) ListLongMap!13745)

(assert (=> b!1022466 (= (-!464 (getCurrentListMap!3895 (_keys!11059 thiss!1427) (_values!5940 thiss!1427) (mask!29509 thiss!1427) (extraKeys!5649 thiss!1427) (zeroValue!5753 thiss!1427) (minValue!5753 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5917 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3895 (_keys!11059 thiss!1427) (_values!5940 thiss!1427) (mask!29509 thiss!1427) (bvand (extraKeys!5649 thiss!1427) #b00000000000000000000000000000010) lt!450235 (minValue!5753 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5917 thiss!1427)))))

(declare-datatypes ((Unit!33280 0))(
  ( (Unit!33281) )
))
(declare-fun lt!450234 () Unit!33280)

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!4 (array!63914 array!63916 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36797 V!36797 V!36797 Int) Unit!33280)

(assert (=> b!1022466 (= lt!450234 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!4 (_keys!11059 thiss!1427) (_values!5940 thiss!1427) (mask!29509 thiss!1427) (extraKeys!5649 thiss!1427) (bvand (extraKeys!5649 thiss!1427) #b00000000000000000000000000000010) (zeroValue!5753 thiss!1427) lt!450235 (minValue!5753 thiss!1427) (defaultEntry!5917 thiss!1427)))))

(declare-fun dynLambda!1939 (Int (_ BitVec 64)) V!36797)

(assert (=> b!1022466 (= lt!450235 (dynLambda!1939 (defaultEntry!5917 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1022465 () Bool)

(declare-fun res!685010 () Bool)

(assert (=> b!1022465 (=> (not res!685010) (not e!576051))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022465 (= res!685010 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!685011 () Bool)

(assert (=> start!89218 (=> (not res!685011) (not e!576051))))

(assert (=> start!89218 (= res!685011 (valid!1918 thiss!1427))))

(assert (=> start!89218 e!576051))

(assert (=> start!89218 e!576055))

(assert (=> start!89218 true))

(assert (= (and start!89218 res!685011) b!1022465))

(assert (= (and b!1022465 res!685010) b!1022466))

(assert (= (and b!1022464 condMapEmpty!37332) mapIsEmpty!37332))

(assert (= (and b!1022464 (not condMapEmpty!37332)) mapNonEmpty!37332))

(get-info :version)

(assert (= (and mapNonEmpty!37332 ((_ is ValueCellFull!11268) mapValue!37332)) b!1022461))

(assert (= (and b!1022464 ((_ is ValueCellFull!11268) mapDefault!37332)) b!1022462))

(assert (= b!1022463 b!1022464))

(assert (= start!89218 b!1022463))

(declare-fun b_lambda!15709 () Bool)

(assert (=> (not b_lambda!15709) (not b!1022466)))

(declare-fun t!30823 () Bool)

(declare-fun tb!6855 () Bool)

(assert (=> (and b!1022463 (= (defaultEntry!5917 thiss!1427) (defaultEntry!5917 thiss!1427)) t!30823) tb!6855))

(declare-fun result!14011 () Bool)

(assert (=> tb!6855 (= result!14011 tp_is_empty!23943)))

(assert (=> b!1022466 t!30823))

(declare-fun b_and!32449 () Bool)

(assert (= b_and!32447 (and (=> t!30823 result!14011) b_and!32449)))

(declare-fun m!941653 () Bool)

(assert (=> b!1022463 m!941653))

(declare-fun m!941655 () Bool)

(assert (=> b!1022463 m!941655))

(declare-fun m!941657 () Bool)

(assert (=> mapNonEmpty!37332 m!941657))

(declare-fun m!941659 () Bool)

(assert (=> b!1022466 m!941659))

(declare-fun m!941661 () Bool)

(assert (=> b!1022466 m!941661))

(declare-fun m!941663 () Bool)

(assert (=> b!1022466 m!941663))

(declare-fun m!941665 () Bool)

(assert (=> b!1022466 m!941665))

(declare-fun m!941667 () Bool)

(assert (=> b!1022466 m!941667))

(declare-fun m!941669 () Bool)

(assert (=> b!1022466 m!941669))

(assert (=> b!1022466 m!941667))

(declare-fun m!941671 () Bool)

(assert (=> start!89218 m!941671))

(check-sat tp_is_empty!23943 (not b_next!20223) (not b_lambda!15709) (not b!1022463) (not mapNonEmpty!37332) (not start!89218) b_and!32449 (not b!1022466))
(check-sat b_and!32449 (not b_next!20223))
