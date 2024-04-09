; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7988 () Bool)

(assert start!7988)

(declare-fun b!50053 () Bool)

(declare-fun b_free!1525 () Bool)

(declare-fun b_next!1525 () Bool)

(assert (=> b!50053 (= b_free!1525 (not b_next!1525))))

(declare-fun tp!6625 () Bool)

(declare-fun b_and!2745 () Bool)

(assert (=> b!50053 (= tp!6625 b_and!2745)))

(declare-fun b!50051 () Bool)

(declare-fun b_free!1527 () Bool)

(declare-fun b_next!1527 () Bool)

(assert (=> b!50051 (= b_free!1527 (not b_next!1527))))

(declare-fun tp!6626 () Bool)

(declare-fun b_and!2747 () Bool)

(assert (=> b!50051 (= tp!6626 b_and!2747)))

(declare-fun b!50045 () Bool)

(declare-fun e!32294 () Bool)

(declare-fun e!32284 () Bool)

(assert (=> b!50045 (= e!32294 e!32284)))

(declare-fun b!50046 () Bool)

(declare-fun e!32296 () Bool)

(declare-fun tp_is_empty!2179 () Bool)

(assert (=> b!50046 (= e!32296 tp_is_empty!2179)))

(declare-fun b!50047 () Bool)

(declare-fun e!32287 () Bool)

(assert (=> b!50047 (= e!32287 tp_is_empty!2179)))

(declare-fun b!50048 () Bool)

(declare-fun res!28886 () Bool)

(declare-fun e!32285 () Bool)

(assert (=> b!50048 (=> (not res!28886) (not e!32285))))

(declare-datatypes ((V!2553 0))(
  ( (V!2554 (val!1134 Int)) )
))
(declare-datatypes ((array!3266 0))(
  ( (array!3267 (arr!1562 (Array (_ BitVec 32) (_ BitVec 64))) (size!1784 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!746 0))(
  ( (ValueCellFull!746 (v!2152 V!2553)) (EmptyCell!746) )
))
(declare-datatypes ((array!3268 0))(
  ( (array!3269 (arr!1563 (Array (_ BitVec 32) ValueCell!746)) (size!1785 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!400 0))(
  ( (LongMapFixedSize!401 (defaultEntry!1914 Int) (mask!5696 (_ BitVec 32)) (extraKeys!1805 (_ BitVec 32)) (zeroValue!1832 V!2553) (minValue!1832 V!2553) (_size!249 (_ BitVec 32)) (_keys!3520 array!3266) (_values!1897 array!3268) (_vacant!249 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!400)

(declare-fun valid!132 (LongMapFixedSize!400) Bool)

(assert (=> b!50048 (= res!28886 (valid!132 newMap!16))))

(declare-fun b!50049 () Bool)

(declare-fun res!28884 () Bool)

(assert (=> b!50049 (=> (not res!28884) (not e!32285))))

(declare-datatypes ((Cell!226 0))(
  ( (Cell!227 (v!2153 LongMapFixedSize!400)) )
))
(declare-datatypes ((LongMap!226 0))(
  ( (LongMap!227 (underlying!124 Cell!226)) )
))
(declare-fun thiss!992 () LongMap!226)

(assert (=> b!50049 (= res!28884 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5696 newMap!16)) (_size!249 (v!2153 (underlying!124 thiss!992)))))))

(declare-fun b!50050 () Bool)

(declare-fun e!32293 () Bool)

(assert (=> b!50050 (= e!32284 e!32293)))

(declare-fun e!32295 () Bool)

(declare-fun e!32288 () Bool)

(declare-fun array_inv!909 (array!3266) Bool)

(declare-fun array_inv!910 (array!3268) Bool)

(assert (=> b!50051 (= e!32288 (and tp!6626 tp_is_empty!2179 (array_inv!909 (_keys!3520 newMap!16)) (array_inv!910 (_values!1897 newMap!16)) e!32295))))

(declare-fun mapNonEmpty!2155 () Bool)

(declare-fun mapRes!2155 () Bool)

(declare-fun tp!6623 () Bool)

(assert (=> mapNonEmpty!2155 (= mapRes!2155 (and tp!6623 e!32287))))

(declare-fun mapKey!2156 () (_ BitVec 32))

(declare-fun mapValue!2155 () ValueCell!746)

(declare-fun mapRest!2155 () (Array (_ BitVec 32) ValueCell!746))

(assert (=> mapNonEmpty!2155 (= (arr!1563 (_values!1897 newMap!16)) (store mapRest!2155 mapKey!2156 mapValue!2155))))

(declare-fun mapIsEmpty!2155 () Bool)

(declare-fun mapRes!2156 () Bool)

(assert (=> mapIsEmpty!2155 mapRes!2156))

(declare-fun b!50052 () Bool)

(declare-fun res!28887 () Bool)

(assert (=> b!50052 (=> (not res!28887) (not e!32285))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!50052 (= res!28887 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1784 (_keys!3520 (v!2153 (underlying!124 thiss!992)))))))))

(declare-fun mapIsEmpty!2156 () Bool)

(assert (=> mapIsEmpty!2156 mapRes!2155))

(declare-fun e!32290 () Bool)

(assert (=> b!50053 (= e!32293 (and tp!6625 tp_is_empty!2179 (array_inv!909 (_keys!3520 (v!2153 (underlying!124 thiss!992)))) (array_inv!910 (_values!1897 (v!2153 (underlying!124 thiss!992)))) e!32290))))

(declare-fun b!50054 () Bool)

(declare-fun e!32292 () Bool)

(assert (=> b!50054 (= e!32292 tp_is_empty!2179)))

(declare-fun res!28885 () Bool)

(assert (=> start!7988 (=> (not res!28885) (not e!32285))))

(declare-fun valid!133 (LongMap!226) Bool)

(assert (=> start!7988 (= res!28885 (valid!133 thiss!992))))

(assert (=> start!7988 e!32285))

(assert (=> start!7988 e!32294))

(assert (=> start!7988 true))

(assert (=> start!7988 e!32288))

(declare-fun b!50055 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!50055 (= e!32285 (not (validMask!0 (mask!5696 (v!2153 (underlying!124 thiss!992))))))))

(declare-fun b!50056 () Bool)

(assert (=> b!50056 (= e!32295 (and e!32292 mapRes!2155))))

(declare-fun condMapEmpty!2156 () Bool)

(declare-fun mapDefault!2156 () ValueCell!746)

