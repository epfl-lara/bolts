; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16542 () Bool)

(assert start!16542)

(declare-fun b!164371 () Bool)

(declare-fun b_free!3835 () Bool)

(declare-fun b_next!3835 () Bool)

(assert (=> b!164371 (= b_free!3835 (not b_next!3835))))

(declare-fun tp!14105 () Bool)

(declare-fun b_and!10267 () Bool)

(assert (=> b!164371 (= tp!14105 b_and!10267)))

(declare-fun e!107853 () Bool)

(declare-fun tp_is_empty!3637 () Bool)

(declare-datatypes ((V!4497 0))(
  ( (V!4498 (val!1863 Int)) )
))
(declare-datatypes ((ValueCell!1475 0))(
  ( (ValueCellFull!1475 (v!3724 V!4497)) (EmptyCell!1475) )
))
(declare-datatypes ((array!6370 0))(
  ( (array!6371 (arr!3020 (Array (_ BitVec 32) (_ BitVec 64))) (size!3308 (_ BitVec 32))) )
))
(declare-datatypes ((array!6372 0))(
  ( (array!6373 (arr!3021 (Array (_ BitVec 32) ValueCell!1475)) (size!3309 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1858 0))(
  ( (LongMapFixedSize!1859 (defaultEntry!3371 Int) (mask!8062 (_ BitVec 32)) (extraKeys!3112 (_ BitVec 32)) (zeroValue!3214 V!4497) (minValue!3214 V!4497) (_size!978 (_ BitVec 32)) (_keys!5196 array!6370) (_values!3354 array!6372) (_vacant!978 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1858)

(declare-fun e!107852 () Bool)

(declare-fun array_inv!1925 (array!6370) Bool)

(declare-fun array_inv!1926 (array!6372) Bool)

(assert (=> b!164371 (= e!107853 (and tp!14105 tp_is_empty!3637 (array_inv!1925 (_keys!5196 thiss!1248)) (array_inv!1926 (_values!3354 thiss!1248)) e!107852))))

(declare-fun b!164372 () Bool)

(declare-fun e!107854 () Bool)

(assert (=> b!164372 (= e!107854 tp_is_empty!3637)))

(declare-fun mapIsEmpty!6174 () Bool)

(declare-fun mapRes!6174 () Bool)

(assert (=> mapIsEmpty!6174 mapRes!6174))

(declare-fun mapNonEmpty!6174 () Bool)

(declare-fun tp!14106 () Bool)

(assert (=> mapNonEmpty!6174 (= mapRes!6174 (and tp!14106 e!107854))))

(declare-fun mapValue!6174 () ValueCell!1475)

(declare-fun mapKey!6174 () (_ BitVec 32))

(declare-fun mapRest!6174 () (Array (_ BitVec 32) ValueCell!1475))

(assert (=> mapNonEmpty!6174 (= (arr!3021 (_values!3354 thiss!1248)) (store mapRest!6174 mapKey!6174 mapValue!6174))))

(declare-fun b!164373 () Bool)

(declare-fun e!107855 () Bool)

(assert (=> b!164373 (= e!107855 false)))

(declare-fun lt!82906 () Bool)

(declare-datatypes ((List!2026 0))(
  ( (Nil!2023) (Cons!2022 (h!2639 (_ BitVec 64)) (t!6836 List!2026)) )
))
(declare-fun arrayNoDuplicates!0 (array!6370 (_ BitVec 32) List!2026) Bool)

(assert (=> b!164373 (= lt!82906 (arrayNoDuplicates!0 (_keys!5196 thiss!1248) #b00000000000000000000000000000000 Nil!2023))))

(declare-fun res!77837 () Bool)

(declare-fun e!107851 () Bool)

(assert (=> start!16542 (=> (not res!77837) (not e!107851))))

(declare-fun valid!819 (LongMapFixedSize!1858) Bool)

(assert (=> start!16542 (= res!77837 (valid!819 thiss!1248))))

(assert (=> start!16542 e!107851))

(assert (=> start!16542 e!107853))

(assert (=> start!16542 true))

(declare-fun b!164370 () Bool)

(declare-fun res!77833 () Bool)

(assert (=> b!164370 (=> (not res!77833) (not e!107855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6370 (_ BitVec 32)) Bool)

(assert (=> b!164370 (= res!77833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5196 thiss!1248) (mask!8062 thiss!1248)))))

(declare-fun b!164374 () Bool)

(declare-fun res!77838 () Bool)

(assert (=> b!164374 (=> (not res!77838) (not e!107855))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3020 0))(
  ( (tuple2!3021 (_1!1520 (_ BitVec 64)) (_2!1520 V!4497)) )
))
(declare-datatypes ((List!2027 0))(
  ( (Nil!2024) (Cons!2023 (h!2640 tuple2!3020) (t!6837 List!2027)) )
))
(declare-datatypes ((ListLongMap!1989 0))(
  ( (ListLongMap!1990 (toList!1010 List!2027)) )
))
(declare-fun contains!1046 (ListLongMap!1989 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!663 (array!6370 array!6372 (_ BitVec 32) (_ BitVec 32) V!4497 V!4497 (_ BitVec 32) Int) ListLongMap!1989)

(assert (=> b!164374 (= res!77838 (contains!1046 (getCurrentListMap!663 (_keys!5196 thiss!1248) (_values!3354 thiss!1248) (mask!8062 thiss!1248) (extraKeys!3112 thiss!1248) (zeroValue!3214 thiss!1248) (minValue!3214 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3371 thiss!1248)) key!828))))

(declare-fun b!164375 () Bool)

(declare-fun e!107857 () Bool)

(assert (=> b!164375 (= e!107852 (and e!107857 mapRes!6174))))

(declare-fun condMapEmpty!6174 () Bool)

(declare-fun mapDefault!6174 () ValueCell!1475)

