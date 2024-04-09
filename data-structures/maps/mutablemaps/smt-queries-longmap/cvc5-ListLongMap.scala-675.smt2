; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16566 () Bool)

(assert start!16566)

(declare-fun b!164772 () Bool)

(declare-fun b_free!3859 () Bool)

(declare-fun b_next!3859 () Bool)

(assert (=> b!164772 (= b_free!3859 (not b_next!3859))))

(declare-fun tp!14178 () Bool)

(declare-fun b_and!10291 () Bool)

(assert (=> b!164772 (= tp!14178 b_and!10291)))

(declare-fun b!164766 () Bool)

(declare-fun res!78084 () Bool)

(declare-fun e!108105 () Bool)

(assert (=> b!164766 (=> (not res!78084) (not e!108105))))

(declare-datatypes ((V!4529 0))(
  ( (V!4530 (val!1875 Int)) )
))
(declare-datatypes ((ValueCell!1487 0))(
  ( (ValueCellFull!1487 (v!3736 V!4529)) (EmptyCell!1487) )
))
(declare-datatypes ((array!6418 0))(
  ( (array!6419 (arr!3044 (Array (_ BitVec 32) (_ BitVec 64))) (size!3332 (_ BitVec 32))) )
))
(declare-datatypes ((array!6420 0))(
  ( (array!6421 (arr!3045 (Array (_ BitVec 32) ValueCell!1487)) (size!3333 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1882 0))(
  ( (LongMapFixedSize!1883 (defaultEntry!3383 Int) (mask!8082 (_ BitVec 32)) (extraKeys!3124 (_ BitVec 32)) (zeroValue!3226 V!4529) (minValue!3226 V!4529) (_size!990 (_ BitVec 32)) (_keys!5208 array!6418) (_values!3366 array!6420) (_vacant!990 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1882)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6418 (_ BitVec 32)) Bool)

(assert (=> b!164766 (= res!78084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5208 thiss!1248) (mask!8082 thiss!1248)))))

(declare-fun res!78088 () Bool)

(declare-fun e!108103 () Bool)

(assert (=> start!16566 (=> (not res!78088) (not e!108103))))

(declare-fun valid!828 (LongMapFixedSize!1882) Bool)

(assert (=> start!16566 (= res!78088 (valid!828 thiss!1248))))

(assert (=> start!16566 e!108103))

(declare-fun e!108109 () Bool)

(assert (=> start!16566 e!108109))

(assert (=> start!16566 true))

(declare-fun mapIsEmpty!6210 () Bool)

(declare-fun mapRes!6210 () Bool)

(assert (=> mapIsEmpty!6210 mapRes!6210))

(declare-fun b!164767 () Bool)

(assert (=> b!164767 (= e!108105 false)))

(declare-fun lt!82979 () Bool)

(declare-datatypes ((List!2044 0))(
  ( (Nil!2041) (Cons!2040 (h!2657 (_ BitVec 64)) (t!6854 List!2044)) )
))
(declare-fun arrayNoDuplicates!0 (array!6418 (_ BitVec 32) List!2044) Bool)

(assert (=> b!164767 (= lt!82979 (arrayNoDuplicates!0 (_keys!5208 thiss!1248) #b00000000000000000000000000000000 Nil!2041))))

(declare-fun b!164768 () Bool)

(declare-fun e!108107 () Bool)

(declare-fun tp_is_empty!3661 () Bool)

(assert (=> b!164768 (= e!108107 tp_is_empty!3661)))

(declare-fun b!164769 () Bool)

(declare-fun res!78087 () Bool)

(assert (=> b!164769 (=> (not res!78087) (not e!108105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164769 (= res!78087 (validMask!0 (mask!8082 thiss!1248)))))

(declare-fun b!164770 () Bool)

(declare-fun res!78089 () Bool)

(assert (=> b!164770 (=> (not res!78089) (not e!108105))))

(assert (=> b!164770 (= res!78089 (and (= (size!3333 (_values!3366 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8082 thiss!1248))) (= (size!3332 (_keys!5208 thiss!1248)) (size!3333 (_values!3366 thiss!1248))) (bvsge (mask!8082 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3124 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3124 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164771 () Bool)

(declare-fun res!78090 () Bool)

(assert (=> b!164771 (=> (not res!78090) (not e!108105))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3038 0))(
  ( (tuple2!3039 (_1!1529 (_ BitVec 64)) (_2!1529 V!4529)) )
))
(declare-datatypes ((List!2045 0))(
  ( (Nil!2042) (Cons!2041 (h!2658 tuple2!3038) (t!6855 List!2045)) )
))
(declare-datatypes ((ListLongMap!2007 0))(
  ( (ListLongMap!2008 (toList!1019 List!2045)) )
))
(declare-fun contains!1055 (ListLongMap!2007 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!672 (array!6418 array!6420 (_ BitVec 32) (_ BitVec 32) V!4529 V!4529 (_ BitVec 32) Int) ListLongMap!2007)

(assert (=> b!164771 (= res!78090 (contains!1055 (getCurrentListMap!672 (_keys!5208 thiss!1248) (_values!3366 thiss!1248) (mask!8082 thiss!1248) (extraKeys!3124 thiss!1248) (zeroValue!3226 thiss!1248) (minValue!3226 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3383 thiss!1248)) key!828))))

(declare-fun e!108108 () Bool)

(declare-fun array_inv!1943 (array!6418) Bool)

(declare-fun array_inv!1944 (array!6420) Bool)

(assert (=> b!164772 (= e!108109 (and tp!14178 tp_is_empty!3661 (array_inv!1943 (_keys!5208 thiss!1248)) (array_inv!1944 (_values!3366 thiss!1248)) e!108108))))

(declare-fun b!164773 () Bool)

(declare-fun e!108106 () Bool)

(assert (=> b!164773 (= e!108106 tp_is_empty!3661)))

(declare-fun mapNonEmpty!6210 () Bool)

(declare-fun tp!14177 () Bool)

(assert (=> mapNonEmpty!6210 (= mapRes!6210 (and tp!14177 e!108106))))

(declare-fun mapValue!6210 () ValueCell!1487)

(declare-fun mapRest!6210 () (Array (_ BitVec 32) ValueCell!1487))

(declare-fun mapKey!6210 () (_ BitVec 32))

(assert (=> mapNonEmpty!6210 (= (arr!3045 (_values!3366 thiss!1248)) (store mapRest!6210 mapKey!6210 mapValue!6210))))

(declare-fun b!164774 () Bool)

(assert (=> b!164774 (= e!108108 (and e!108107 mapRes!6210))))

(declare-fun condMapEmpty!6210 () Bool)

(declare-fun mapDefault!6210 () ValueCell!1487)

