; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3258 () Bool)

(assert start!3258)

(declare-fun b!19982 () Bool)

(declare-fun b_free!701 () Bool)

(declare-fun b_next!701 () Bool)

(assert (=> b!19982 (= b_free!701 (not b_next!701))))

(declare-fun tp!3324 () Bool)

(declare-fun b_and!1371 () Bool)

(assert (=> b!19982 (= tp!3324 b_and!1371)))

(declare-fun b!19983 () Bool)

(declare-fun e!13005 () Bool)

(declare-datatypes ((V!1111 0))(
  ( (V!1112 (val!509 Int)) )
))
(declare-datatypes ((array!1143 0))(
  ( (array!1144 (arr!545 (Array (_ BitVec 32) (_ BitVec 64))) (size!638 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!283 0))(
  ( (ValueCellFull!283 (v!1535 V!1111)) (EmptyCell!283) )
))
(declare-datatypes ((array!1145 0))(
  ( (array!1146 (arr!546 (Array (_ BitVec 32) ValueCell!283)) (size!639 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!152 0))(
  ( (LongMapFixedSize!153 (defaultEntry!1697 Int) (mask!4655 (_ BitVec 32)) (extraKeys!1605 (_ BitVec 32)) (zeroValue!1629 V!1111) (minValue!1629 V!1111) (_size!112 (_ BitVec 32)) (_keys!3123 array!1143) (_values!1691 array!1145) (_vacant!112 (_ BitVec 32))) )
))
(declare-fun lt!5690 () LongMapFixedSize!152)

(declare-fun valid!76 (LongMapFixedSize!152) Bool)

(assert (=> b!19983 (= e!13005 (not (valid!76 lt!5690)))))

(declare-fun b!19984 () Bool)

(declare-fun e!13010 () Bool)

(declare-fun tp_is_empty!965 () Bool)

(assert (=> b!19984 (= e!13010 tp_is_empty!965)))

(declare-fun b!19985 () Bool)

(declare-fun e!13009 () Bool)

(declare-fun e!13006 () Bool)

(assert (=> b!19985 (= e!13009 e!13006)))

(declare-fun b!19986 () Bool)

(declare-fun e!13008 () Bool)

(assert (=> b!19986 (= e!13008 tp_is_empty!965)))

(declare-fun res!13349 () Bool)

(declare-fun e!13007 () Bool)

(assert (=> start!3258 (=> (not res!13349) (not e!13007))))

(declare-datatypes ((Cell!152 0))(
  ( (Cell!153 (v!1536 LongMapFixedSize!152)) )
))
(declare-datatypes ((LongMap!152 0))(
  ( (LongMap!153 (underlying!87 Cell!152)) )
))
(declare-fun thiss!938 () LongMap!152)

(declare-fun valid!77 (LongMap!152) Bool)

(assert (=> start!3258 (= res!13349 (valid!77 thiss!938))))

(assert (=> start!3258 e!13007))

(declare-fun e!13003 () Bool)

(assert (=> start!3258 e!13003))

(declare-fun e!13004 () Bool)

(declare-fun array_inv!385 (array!1143) Bool)

(declare-fun array_inv!386 (array!1145) Bool)

(assert (=> b!19982 (= e!13006 (and tp!3324 tp_is_empty!965 (array_inv!385 (_keys!3123 (v!1536 (underlying!87 thiss!938)))) (array_inv!386 (_values!1691 (v!1536 (underlying!87 thiss!938)))) e!13004))))

(declare-fun b!19987 () Bool)

(assert (=> b!19987 (= e!13007 e!13005)))

(declare-fun res!13350 () Bool)

(assert (=> b!19987 (=> (not res!13350) (not e!13005))))

(assert (=> b!19987 (= res!13350 (and (= (bvand (extraKeys!1605 (v!1536 (underlying!87 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand (extraKeys!1605 (v!1536 (underlying!87 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun getNewLongMapFixedSize!14 ((_ BitVec 32) Int) LongMapFixedSize!152)

(declare-fun computeNewMask!11 (LongMap!152 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19987 (= lt!5690 (getNewLongMapFixedSize!14 (computeNewMask!11 thiss!938 (mask!4655 (v!1536 (underlying!87 thiss!938))) (_vacant!112 (v!1536 (underlying!87 thiss!938))) (_size!112 (v!1536 (underlying!87 thiss!938)))) (defaultEntry!1697 (v!1536 (underlying!87 thiss!938)))))))

(declare-fun b!19988 () Bool)

(assert (=> b!19988 (= e!13003 e!13009)))

(declare-fun mapNonEmpty!913 () Bool)

(declare-fun mapRes!913 () Bool)

(declare-fun tp!3325 () Bool)

(assert (=> mapNonEmpty!913 (= mapRes!913 (and tp!3325 e!13010))))

(declare-fun mapValue!913 () ValueCell!283)

(declare-fun mapRest!913 () (Array (_ BitVec 32) ValueCell!283))

(declare-fun mapKey!913 () (_ BitVec 32))

(assert (=> mapNonEmpty!913 (= (arr!546 (_values!1691 (v!1536 (underlying!87 thiss!938)))) (store mapRest!913 mapKey!913 mapValue!913))))

(declare-fun b!19989 () Bool)

(assert (=> b!19989 (= e!13004 (and e!13008 mapRes!913))))

(declare-fun condMapEmpty!913 () Bool)

(declare-fun mapDefault!913 () ValueCell!283)

