; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81350 () Bool)

(assert start!81350)

(declare-fun b!950967 () Bool)

(declare-fun b_free!18259 () Bool)

(declare-fun b_next!18259 () Bool)

(assert (=> b!950967 (= b_free!18259 (not b_next!18259))))

(declare-fun tp!63384 () Bool)

(declare-fun b_and!29743 () Bool)

(assert (=> b!950967 (= tp!63384 b_and!29743)))

(declare-fun b!950960 () Bool)

(declare-fun res!637502 () Bool)

(declare-fun e!535492 () Bool)

(assert (=> b!950960 (=> (not res!637502) (not e!535492))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32655 0))(
  ( (V!32656 (val!10434 Int)) )
))
(declare-datatypes ((ValueCell!9902 0))(
  ( (ValueCellFull!9902 (v!12980 V!32655)) (EmptyCell!9902) )
))
(declare-datatypes ((array!57580 0))(
  ( (array!57581 (arr!27683 (Array (_ BitVec 32) ValueCell!9902)) (size!28162 (_ BitVec 32))) )
))
(declare-datatypes ((array!57582 0))(
  ( (array!57583 (arr!27684 (Array (_ BitVec 32) (_ BitVec 64))) (size!28163 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4954 0))(
  ( (LongMapFixedSize!4955 (defaultEntry!5796 Int) (mask!27605 (_ BitVec 32)) (extraKeys!5528 (_ BitVec 32)) (zeroValue!5632 V!32655) (minValue!5632 V!32655) (_size!2532 (_ BitVec 32)) (_keys!10734 array!57582) (_values!5819 array!57580) (_vacant!2532 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4954)

(declare-datatypes ((SeekEntryResult!9134 0))(
  ( (MissingZero!9134 (index!38906 (_ BitVec 32))) (Found!9134 (index!38907 (_ BitVec 32))) (Intermediate!9134 (undefined!9946 Bool) (index!38908 (_ BitVec 32)) (x!81807 (_ BitVec 32))) (Undefined!9134) (MissingVacant!9134 (index!38909 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57582 (_ BitVec 32)) SeekEntryResult!9134)

(assert (=> b!950960 (= res!637502 (not (is-Found!9134 (seekEntry!0 key!756 (_keys!10734 thiss!1141) (mask!27605 thiss!1141)))))))

(declare-fun res!637506 () Bool)

(assert (=> start!81350 (=> (not res!637506) (not e!535492))))

(declare-fun valid!1855 (LongMapFixedSize!4954) Bool)

(assert (=> start!81350 (= res!637506 (valid!1855 thiss!1141))))

(assert (=> start!81350 e!535492))

(declare-fun e!535495 () Bool)

(assert (=> start!81350 e!535495))

(assert (=> start!81350 true))

(declare-fun b!950961 () Bool)

(declare-fun e!535494 () Bool)

(declare-fun tp_is_empty!20767 () Bool)

(assert (=> b!950961 (= e!535494 tp_is_empty!20767)))

(declare-fun b!950962 () Bool)

(declare-fun res!637504 () Bool)

(assert (=> b!950962 (=> (not res!637504) (not e!535492))))

(assert (=> b!950962 (= res!637504 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!950963 () Bool)

(declare-fun e!535491 () Bool)

(assert (=> b!950963 (= e!535492 (not e!535491))))

(declare-fun res!637503 () Bool)

(assert (=> b!950963 (=> res!637503 e!535491)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!950963 (= res!637503 (not (validMask!0 (mask!27605 thiss!1141))))))

(declare-fun lt!428342 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57582 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950963 (= lt!428342 (arrayScanForKey!0 (_keys!10734 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!950963 (arrayContainsKey!0 (_keys!10734 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!32002 0))(
  ( (Unit!32003) )
))
(declare-fun lt!428341 () Unit!32002)

(declare-fun lemmaKeyInListMapIsInArray!327 (array!57582 array!57580 (_ BitVec 32) (_ BitVec 32) V!32655 V!32655 (_ BitVec 64) Int) Unit!32002)

(assert (=> b!950963 (= lt!428341 (lemmaKeyInListMapIsInArray!327 (_keys!10734 thiss!1141) (_values!5819 thiss!1141) (mask!27605 thiss!1141) (extraKeys!5528 thiss!1141) (zeroValue!5632 thiss!1141) (minValue!5632 thiss!1141) key!756 (defaultEntry!5796 thiss!1141)))))

(declare-fun b!950964 () Bool)

(declare-fun e!535490 () Bool)

(assert (=> b!950964 (= e!535490 tp_is_empty!20767)))

(declare-fun b!950965 () Bool)

(declare-fun res!637505 () Bool)

(assert (=> b!950965 (=> (not res!637505) (not e!535492))))

(declare-datatypes ((tuple2!13654 0))(
  ( (tuple2!13655 (_1!6837 (_ BitVec 64)) (_2!6837 V!32655)) )
))
(declare-datatypes ((List!19478 0))(
  ( (Nil!19475) (Cons!19474 (h!20635 tuple2!13654) (t!27831 List!19478)) )
))
(declare-datatypes ((ListLongMap!12365 0))(
  ( (ListLongMap!12366 (toList!6198 List!19478)) )
))
(declare-fun contains!5242 (ListLongMap!12365 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3383 (array!57582 array!57580 (_ BitVec 32) (_ BitVec 32) V!32655 V!32655 (_ BitVec 32) Int) ListLongMap!12365)

(assert (=> b!950965 (= res!637505 (contains!5242 (getCurrentListMap!3383 (_keys!10734 thiss!1141) (_values!5819 thiss!1141) (mask!27605 thiss!1141) (extraKeys!5528 thiss!1141) (zeroValue!5632 thiss!1141) (minValue!5632 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5796 thiss!1141)) key!756))))

(declare-fun b!950966 () Bool)

(assert (=> b!950966 (= e!535491 (or (not (= (size!28163 (_keys!10734 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27605 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!28163 (_keys!10734 thiss!1141))) (and (bvsge lt!428342 #b00000000000000000000000000000000) (bvsle lt!428342 (size!28163 (_keys!10734 thiss!1141))))))))

(declare-fun e!535493 () Bool)

(declare-fun array_inv!21428 (array!57582) Bool)

(declare-fun array_inv!21429 (array!57580) Bool)

(assert (=> b!950967 (= e!535495 (and tp!63384 tp_is_empty!20767 (array_inv!21428 (_keys!10734 thiss!1141)) (array_inv!21429 (_values!5819 thiss!1141)) e!535493))))

(declare-fun mapIsEmpty!33072 () Bool)

(declare-fun mapRes!33072 () Bool)

(assert (=> mapIsEmpty!33072 mapRes!33072))

(declare-fun mapNonEmpty!33072 () Bool)

(declare-fun tp!63383 () Bool)

(assert (=> mapNonEmpty!33072 (= mapRes!33072 (and tp!63383 e!535494))))

(declare-fun mapRest!33072 () (Array (_ BitVec 32) ValueCell!9902))

(declare-fun mapKey!33072 () (_ BitVec 32))

(declare-fun mapValue!33072 () ValueCell!9902)

(assert (=> mapNonEmpty!33072 (= (arr!27683 (_values!5819 thiss!1141)) (store mapRest!33072 mapKey!33072 mapValue!33072))))

(declare-fun b!950968 () Bool)

(assert (=> b!950968 (= e!535493 (and e!535490 mapRes!33072))))

(declare-fun condMapEmpty!33072 () Bool)

(declare-fun mapDefault!33072 () ValueCell!9902)

