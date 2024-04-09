; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89208 () Bool)

(assert start!89208)

(declare-fun b!1022368 () Bool)

(declare-fun b_free!20213 () Bool)

(declare-fun b_next!20213 () Bool)

(assert (=> b!1022368 (= b_free!20213 (not b_next!20213))))

(declare-fun tp!71675 () Bool)

(declare-fun b_and!32429 () Bool)

(assert (=> b!1022368 (= tp!71675 b_and!32429)))

(declare-fun mapNonEmpty!37317 () Bool)

(declare-fun mapRes!37317 () Bool)

(declare-fun tp!71674 () Bool)

(declare-fun e!575964 () Bool)

(assert (=> mapNonEmpty!37317 (= mapRes!37317 (and tp!71674 e!575964))))

(declare-datatypes ((V!36783 0))(
  ( (V!36784 (val!12017 Int)) )
))
(declare-datatypes ((ValueCell!11263 0))(
  ( (ValueCellFull!11263 (v!14587 V!36783)) (EmptyCell!11263) )
))
(declare-fun mapRest!37317 () (Array (_ BitVec 32) ValueCell!11263))

(declare-fun mapValue!37317 () ValueCell!11263)

(declare-fun mapKey!37317 () (_ BitVec 32))

(declare-datatypes ((array!63894 0))(
  ( (array!63895 (arr!30755 (Array (_ BitVec 32) (_ BitVec 64))) (size!31267 (_ BitVec 32))) )
))
(declare-datatypes ((array!63896 0))(
  ( (array!63897 (arr!30756 (Array (_ BitVec 32) ValueCell!11263)) (size!31268 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5120 0))(
  ( (LongMapFixedSize!5121 (defaultEntry!5912 Int) (mask!29500 (_ BitVec 32)) (extraKeys!5644 (_ BitVec 32)) (zeroValue!5748 V!36783) (minValue!5748 V!36783) (_size!2615 (_ BitVec 32)) (_keys!11054 array!63894) (_values!5935 array!63896) (_vacant!2615 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5120)

(assert (=> mapNonEmpty!37317 (= (arr!30756 (_values!5935 thiss!1427)) (store mapRest!37317 mapKey!37317 mapValue!37317))))

(declare-fun b!1022360 () Bool)

(declare-fun tp_is_empty!23933 () Bool)

(assert (=> b!1022360 (= e!575964 tp_is_empty!23933)))

(declare-fun b!1022361 () Bool)

(declare-fun res!684980 () Bool)

(declare-fun e!575960 () Bool)

(assert (=> b!1022361 (=> (not res!684980) (not e!575960))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022361 (= res!684980 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!37317 () Bool)

(assert (=> mapIsEmpty!37317 mapRes!37317))

(declare-fun b!1022362 () Bool)

(declare-fun e!575963 () Bool)

(assert (=> b!1022362 (= e!575963 tp_is_empty!23933)))

(declare-fun b!1022363 () Bool)

(declare-fun res!684981 () Bool)

(assert (=> b!1022363 (=> (not res!684981) (not e!575960))))

(assert (=> b!1022363 (= res!684981 (and (= (size!31268 (_values!5935 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29500 thiss!1427))) (= (size!31267 (_keys!11054 thiss!1427)) (size!31268 (_values!5935 thiss!1427))) (bvsge (mask!29500 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5644 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5644 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5644 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5644 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5644 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5644 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5644 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1022364 () Bool)

(declare-fun res!684979 () Bool)

(assert (=> b!1022364 (=> (not res!684979) (not e!575960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022364 (= res!684979 (validMask!0 (mask!29500 thiss!1427)))))

(declare-fun res!684977 () Bool)

(assert (=> start!89208 (=> (not res!684977) (not e!575960))))

(declare-fun valid!1915 (LongMapFixedSize!5120) Bool)

(assert (=> start!89208 (= res!684977 (valid!1915 thiss!1427))))

(assert (=> start!89208 e!575960))

(declare-fun e!575961 () Bool)

(assert (=> start!89208 e!575961))

(assert (=> start!89208 true))

(declare-fun b!1022365 () Bool)

(declare-fun res!684978 () Bool)

(assert (=> b!1022365 (=> (not res!684978) (not e!575960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63894 (_ BitVec 32)) Bool)

(assert (=> b!1022365 (= res!684978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11054 thiss!1427) (mask!29500 thiss!1427)))))

(declare-fun b!1022366 () Bool)

(assert (=> b!1022366 (= e!575960 false)))

(declare-fun lt!450190 () Bool)

(declare-datatypes ((List!21790 0))(
  ( (Nil!21787) (Cons!21786 (h!22984 (_ BitVec 64)) (t!30811 List!21790)) )
))
(declare-fun arrayNoDuplicates!0 (array!63894 (_ BitVec 32) List!21790) Bool)

(assert (=> b!1022366 (= lt!450190 (arrayNoDuplicates!0 (_keys!11054 thiss!1427) #b00000000000000000000000000000000 Nil!21787))))

(declare-fun b!1022367 () Bool)

(declare-fun e!575962 () Bool)

(assert (=> b!1022367 (= e!575962 (and e!575963 mapRes!37317))))

(declare-fun condMapEmpty!37317 () Bool)

(declare-fun mapDefault!37317 () ValueCell!11263)

