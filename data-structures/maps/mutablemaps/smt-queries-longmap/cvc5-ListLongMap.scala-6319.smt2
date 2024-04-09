; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81228 () Bool)

(assert start!81228)

(declare-fun b!950051 () Bool)

(declare-fun b_free!18235 () Bool)

(declare-fun b_next!18235 () Bool)

(assert (=> b!950051 (= b_free!18235 (not b_next!18235))))

(declare-fun tp!63302 () Bool)

(declare-fun b_and!29709 () Bool)

(assert (=> b!950051 (= tp!63302 b_and!29709)))

(declare-fun mapNonEmpty!33026 () Bool)

(declare-fun mapRes!33026 () Bool)

(declare-fun tp!63301 () Bool)

(declare-fun e!534907 () Bool)

(assert (=> mapNonEmpty!33026 (= mapRes!33026 (and tp!63301 e!534907))))

(declare-fun mapKey!33026 () (_ BitVec 32))

(declare-datatypes ((V!32623 0))(
  ( (V!32624 (val!10422 Int)) )
))
(declare-datatypes ((ValueCell!9890 0))(
  ( (ValueCellFull!9890 (v!12965 V!32623)) (EmptyCell!9890) )
))
(declare-fun mapValue!33026 () ValueCell!9890)

(declare-datatypes ((array!57526 0))(
  ( (array!57527 (arr!27659 (Array (_ BitVec 32) ValueCell!9890)) (size!28137 (_ BitVec 32))) )
))
(declare-datatypes ((array!57528 0))(
  ( (array!57529 (arr!27660 (Array (_ BitVec 32) (_ BitVec 64))) (size!28138 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4930 0))(
  ( (LongMapFixedSize!4931 (defaultEntry!5776 Int) (mask!27567 (_ BitVec 32)) (extraKeys!5508 (_ BitVec 32)) (zeroValue!5612 V!32623) (minValue!5612 V!32623) (_size!2520 (_ BitVec 32)) (_keys!10708 array!57528) (_values!5799 array!57526) (_vacant!2520 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4930)

(declare-fun mapRest!33026 () (Array (_ BitVec 32) ValueCell!9890))

(assert (=> mapNonEmpty!33026 (= (arr!27659 (_values!5799 thiss!1141)) (store mapRest!33026 mapKey!33026 mapValue!33026))))

(declare-fun b!950044 () Bool)

(declare-fun res!637100 () Bool)

(declare-fun e!534909 () Bool)

(assert (=> b!950044 (=> (not res!637100) (not e!534909))))

(assert (=> b!950044 (= res!637100 (and (= (size!28137 (_values!5799 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27567 thiss!1141))) (= (size!28138 (_keys!10708 thiss!1141)) (size!28137 (_values!5799 thiss!1141))) (bvsge (mask!27567 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5508 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5508 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!950045 () Bool)

(assert (=> b!950045 (= e!534909 false)))

(declare-fun lt!427877 () Bool)

(declare-datatypes ((List!19465 0))(
  ( (Nil!19462) (Cons!19461 (h!20621 (_ BitVec 64)) (t!27812 List!19465)) )
))
(declare-fun arrayNoDuplicates!0 (array!57528 (_ BitVec 32) List!19465) Bool)

(assert (=> b!950045 (= lt!427877 (arrayNoDuplicates!0 (_keys!10708 thiss!1141) #b00000000000000000000000000000000 Nil!19462))))

(declare-fun b!950046 () Bool)

(declare-fun res!637099 () Bool)

(assert (=> b!950046 (=> (not res!637099) (not e!534909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!950046 (= res!637099 (validMask!0 (mask!27567 thiss!1141)))))

(declare-fun b!950047 () Bool)

(declare-fun res!637098 () Bool)

(assert (=> b!950047 (=> (not res!637098) (not e!534909))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9127 0))(
  ( (MissingZero!9127 (index!38878 (_ BitVec 32))) (Found!9127 (index!38879 (_ BitVec 32))) (Intermediate!9127 (undefined!9939 Bool) (index!38880 (_ BitVec 32)) (x!81730 (_ BitVec 32))) (Undefined!9127) (MissingVacant!9127 (index!38881 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57528 (_ BitVec 32)) SeekEntryResult!9127)

(assert (=> b!950047 (= res!637098 (not (is-Found!9127 (seekEntry!0 key!756 (_keys!10708 thiss!1141) (mask!27567 thiss!1141)))))))

(declare-fun b!950048 () Bool)

(declare-fun res!637103 () Bool)

(assert (=> b!950048 (=> (not res!637103) (not e!534909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57528 (_ BitVec 32)) Bool)

(assert (=> b!950048 (= res!637103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10708 thiss!1141) (mask!27567 thiss!1141)))))

(declare-fun b!950049 () Bool)

(declare-fun e!534910 () Bool)

(declare-fun tp_is_empty!20743 () Bool)

(assert (=> b!950049 (= e!534910 tp_is_empty!20743)))

(declare-fun mapIsEmpty!33026 () Bool)

(assert (=> mapIsEmpty!33026 mapRes!33026))

(declare-fun e!534908 () Bool)

(declare-fun e!534906 () Bool)

(declare-fun array_inv!21414 (array!57528) Bool)

(declare-fun array_inv!21415 (array!57526) Bool)

(assert (=> b!950051 (= e!534906 (and tp!63302 tp_is_empty!20743 (array_inv!21414 (_keys!10708 thiss!1141)) (array_inv!21415 (_values!5799 thiss!1141)) e!534908))))

(declare-fun b!950052 () Bool)

(declare-fun res!637097 () Bool)

(assert (=> b!950052 (=> (not res!637097) (not e!534909))))

(declare-datatypes ((tuple2!13640 0))(
  ( (tuple2!13641 (_1!6830 (_ BitVec 64)) (_2!6830 V!32623)) )
))
(declare-datatypes ((List!19466 0))(
  ( (Nil!19463) (Cons!19462 (h!20622 tuple2!13640) (t!27813 List!19466)) )
))
(declare-datatypes ((ListLongMap!12351 0))(
  ( (ListLongMap!12352 (toList!6191 List!19466)) )
))
(declare-fun contains!5233 (ListLongMap!12351 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3376 (array!57528 array!57526 (_ BitVec 32) (_ BitVec 32) V!32623 V!32623 (_ BitVec 32) Int) ListLongMap!12351)

(assert (=> b!950052 (= res!637097 (contains!5233 (getCurrentListMap!3376 (_keys!10708 thiss!1141) (_values!5799 thiss!1141) (mask!27567 thiss!1141) (extraKeys!5508 thiss!1141) (zeroValue!5612 thiss!1141) (minValue!5612 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5776 thiss!1141)) key!756))))

(declare-fun b!950053 () Bool)

(assert (=> b!950053 (= e!534907 tp_is_empty!20743)))

(declare-fun b!950054 () Bool)

(assert (=> b!950054 (= e!534908 (and e!534910 mapRes!33026))))

(declare-fun condMapEmpty!33026 () Bool)

(declare-fun mapDefault!33026 () ValueCell!9890)

