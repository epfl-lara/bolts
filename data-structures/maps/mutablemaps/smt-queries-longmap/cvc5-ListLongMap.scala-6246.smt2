; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79944 () Bool)

(assert start!79944)

(declare-fun b!939582 () Bool)

(declare-fun b_free!17797 () Bool)

(declare-fun b_next!17797 () Bool)

(assert (=> b!939582 (= b_free!17797 (not b_next!17797))))

(declare-fun tp!61859 () Bool)

(declare-fun b_and!29227 () Bool)

(assert (=> b!939582 (= tp!61859 b_and!29227)))

(declare-fun e!527859 () Bool)

(declare-datatypes ((V!32039 0))(
  ( (V!32040 (val!10203 Int)) )
))
(declare-datatypes ((ValueCell!9671 0))(
  ( (ValueCellFull!9671 (v!12734 V!32039)) (EmptyCell!9671) )
))
(declare-datatypes ((array!56576 0))(
  ( (array!56577 (arr!27221 (Array (_ BitVec 32) ValueCell!9671)) (size!27682 (_ BitVec 32))) )
))
(declare-datatypes ((array!56578 0))(
  ( (array!56579 (arr!27222 (Array (_ BitVec 32) (_ BitVec 64))) (size!27683 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4492 0))(
  ( (LongMapFixedSize!4493 (defaultEntry!5537 Int) (mask!27050 (_ BitVec 32)) (extraKeys!5269 (_ BitVec 32)) (zeroValue!5373 V!32039) (minValue!5373 V!32039) (_size!2301 (_ BitVec 32)) (_keys!10382 array!56578) (_values!5560 array!56576) (_vacant!2301 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4492)

(declare-fun e!527858 () Bool)

(declare-fun tp_is_empty!20305 () Bool)

(declare-fun array_inv!21124 (array!56578) Bool)

(declare-fun array_inv!21125 (array!56576) Bool)

(assert (=> b!939582 (= e!527858 (and tp!61859 tp_is_empty!20305 (array_inv!21124 (_keys!10382 thiss!1141)) (array_inv!21125 (_values!5560 thiss!1141)) e!527859))))

(declare-fun b!939583 () Bool)

(declare-fun e!527860 () Bool)

(assert (=> b!939583 (= e!527860 (not (= (size!27683 (_keys!10382 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27050 thiss!1141)))))))

(declare-fun mapIsEmpty!32241 () Bool)

(declare-fun mapRes!32241 () Bool)

(assert (=> mapIsEmpty!32241 mapRes!32241))

(declare-fun b!939584 () Bool)

(declare-fun e!527855 () Bool)

(assert (=> b!939584 (= e!527855 tp_is_empty!20305)))

(declare-fun b!939585 () Bool)

(declare-fun e!527856 () Bool)

(assert (=> b!939585 (= e!527856 tp_is_empty!20305)))

(declare-fun res!632020 () Bool)

(assert (=> start!79944 (=> (not res!632020) (not e!527860))))

(declare-fun valid!1708 (LongMapFixedSize!4492) Bool)

(assert (=> start!79944 (= res!632020 (valid!1708 thiss!1141))))

(assert (=> start!79944 e!527860))

(assert (=> start!79944 e!527858))

(assert (=> start!79944 true))

(declare-fun mapNonEmpty!32241 () Bool)

(declare-fun tp!61860 () Bool)

(assert (=> mapNonEmpty!32241 (= mapRes!32241 (and tp!61860 e!527856))))

(declare-fun mapValue!32241 () ValueCell!9671)

(declare-fun mapRest!32241 () (Array (_ BitVec 32) ValueCell!9671))

(declare-fun mapKey!32241 () (_ BitVec 32))

(assert (=> mapNonEmpty!32241 (= (arr!27221 (_values!5560 thiss!1141)) (store mapRest!32241 mapKey!32241 mapValue!32241))))

(declare-fun b!939586 () Bool)

(declare-fun res!632019 () Bool)

(assert (=> b!939586 (=> (not res!632019) (not e!527860))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!939586 (= res!632019 (validMask!0 (mask!27050 thiss!1141)))))

(declare-fun b!939587 () Bool)

(declare-fun res!632021 () Bool)

(assert (=> b!939587 (=> (not res!632021) (not e!527860))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!939587 (= res!632021 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!939588 () Bool)

(assert (=> b!939588 (= e!527859 (and e!527855 mapRes!32241))))

(declare-fun condMapEmpty!32241 () Bool)

(declare-fun mapDefault!32241 () ValueCell!9671)

