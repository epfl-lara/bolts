; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89442 () Bool)

(assert start!89442)

(declare-fun b!1025008 () Bool)

(declare-fun b_free!20405 () Bool)

(declare-fun b_next!20405 () Bool)

(assert (=> b!1025008 (= b_free!20405 (not b_next!20405))))

(declare-fun tp!72261 () Bool)

(declare-fun b_and!32669 () Bool)

(assert (=> b!1025008 (= tp!72261 b_and!32669)))

(declare-fun b!1025002 () Bool)

(declare-fun res!686347 () Bool)

(declare-fun e!577921 () Bool)

(assert (=> b!1025002 (=> (not res!686347) (not e!577921))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025002 (= res!686347 (not (= key!909 (bvneg key!909))))))

(declare-fun res!686349 () Bool)

(assert (=> start!89442 (=> (not res!686349) (not e!577921))))

(declare-datatypes ((V!37039 0))(
  ( (V!37040 (val!12113 Int)) )
))
(declare-datatypes ((ValueCell!11359 0))(
  ( (ValueCellFull!11359 (v!14683 V!37039)) (EmptyCell!11359) )
))
(declare-datatypes ((array!64284 0))(
  ( (array!64285 (arr!30947 (Array (_ BitVec 32) (_ BitVec 64))) (size!31461 (_ BitVec 32))) )
))
(declare-datatypes ((array!64286 0))(
  ( (array!64287 (arr!30948 (Array (_ BitVec 32) ValueCell!11359)) (size!31462 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5312 0))(
  ( (LongMapFixedSize!5313 (defaultEntry!6008 Int) (mask!29665 (_ BitVec 32)) (extraKeys!5740 (_ BitVec 32)) (zeroValue!5844 V!37039) (minValue!5844 V!37039) (_size!2711 (_ BitVec 32)) (_keys!11152 array!64284) (_values!6031 array!64286) (_vacant!2711 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5312)

(declare-fun valid!1973 (LongMapFixedSize!5312) Bool)

(assert (=> start!89442 (= res!686349 (valid!1973 thiss!1427))))

(assert (=> start!89442 e!577921))

(declare-fun e!577927 () Bool)

(assert (=> start!89442 e!577927))

(assert (=> start!89442 true))

(declare-fun mapNonEmpty!37616 () Bool)

(declare-fun mapRes!37616 () Bool)

(declare-fun tp!72262 () Bool)

(declare-fun e!577928 () Bool)

(assert (=> mapNonEmpty!37616 (= mapRes!37616 (and tp!72262 e!577928))))

(declare-fun mapRest!37616 () (Array (_ BitVec 32) ValueCell!11359))

(declare-fun mapValue!37616 () ValueCell!11359)

(declare-fun mapKey!37616 () (_ BitVec 32))

(assert (=> mapNonEmpty!37616 (= (arr!30948 (_values!6031 thiss!1427)) (store mapRest!37616 mapKey!37616 mapValue!37616))))

(declare-fun b!1025003 () Bool)

(declare-fun tp_is_empty!24125 () Bool)

(assert (=> b!1025003 (= e!577928 tp_is_empty!24125)))

(declare-fun b!1025004 () Bool)

(declare-fun e!577922 () Bool)

(assert (=> b!1025004 (= e!577922 true)))

(declare-fun lt!450762 () Bool)

(declare-datatypes ((List!21850 0))(
  ( (Nil!21847) (Cons!21846 (h!23044 (_ BitVec 64)) (t!30919 List!21850)) )
))
(declare-fun arrayNoDuplicates!0 (array!64284 (_ BitVec 32) List!21850) Bool)

(assert (=> b!1025004 (= lt!450762 (arrayNoDuplicates!0 (_keys!11152 thiss!1427) #b00000000000000000000000000000000 Nil!21847))))

(declare-fun b!1025005 () Bool)

(declare-fun res!686346 () Bool)

(assert (=> b!1025005 (=> res!686346 e!577922)))

(declare-fun contains!5978 (List!21850 (_ BitVec 64)) Bool)

(assert (=> b!1025005 (= res!686346 (contains!5978 Nil!21847 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025006 () Bool)

(declare-fun res!686343 () Bool)

(assert (=> b!1025006 (=> res!686343 e!577922)))

(declare-fun noDuplicate!1486 (List!21850) Bool)

(assert (=> b!1025006 (= res!686343 (not (noDuplicate!1486 Nil!21847)))))

(declare-fun b!1025007 () Bool)

(declare-fun e!577923 () Bool)

(declare-fun e!577924 () Bool)

(assert (=> b!1025007 (= e!577923 (and e!577924 mapRes!37616))))

(declare-fun condMapEmpty!37616 () Bool)

(declare-fun mapDefault!37616 () ValueCell!11359)

