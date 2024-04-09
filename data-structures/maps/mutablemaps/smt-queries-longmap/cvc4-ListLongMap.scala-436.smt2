; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8244 () Bool)

(assert start!8244)

(declare-fun b!52207 () Bool)

(declare-fun b_free!1629 () Bool)

(declare-fun b_next!1629 () Bool)

(assert (=> b!52207 (= b_free!1629 (not b_next!1629))))

(declare-fun tp!6988 () Bool)

(declare-fun b_and!2849 () Bool)

(assert (=> b!52207 (= tp!6988 b_and!2849)))

(declare-fun b!52214 () Bool)

(declare-fun b_free!1631 () Bool)

(declare-fun b_next!1631 () Bool)

(assert (=> b!52214 (= b_free!1631 (not b_next!1631))))

(declare-fun tp!6987 () Bool)

(declare-fun b_and!2851 () Bool)

(assert (=> b!52214 (= tp!6987 b_and!2851)))

(declare-fun mapNonEmpty!2363 () Bool)

(declare-fun mapRes!2364 () Bool)

(declare-fun tp!6990 () Bool)

(declare-fun e!33896 () Bool)

(assert (=> mapNonEmpty!2363 (= mapRes!2364 (and tp!6990 e!33896))))

(declare-datatypes ((V!2621 0))(
  ( (V!2622 (val!1160 Int)) )
))
(declare-datatypes ((ValueCell!772 0))(
  ( (ValueCellFull!772 (v!2205 V!2621)) (EmptyCell!772) )
))
(declare-fun mapValue!2364 () ValueCell!772)

(declare-datatypes ((array!3384 0))(
  ( (array!3385 (arr!1614 (Array (_ BitVec 32) (_ BitVec 64))) (size!1843 (_ BitVec 32))) )
))
(declare-datatypes ((array!3386 0))(
  ( (array!3387 (arr!1615 (Array (_ BitVec 32) ValueCell!772)) (size!1844 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!452 0))(
  ( (LongMapFixedSize!453 (defaultEntry!1940 Int) (mask!5759 (_ BitVec 32)) (extraKeys!1831 (_ BitVec 32)) (zeroValue!1858 V!2621) (minValue!1858 V!2621) (_size!275 (_ BitVec 32)) (_keys!3560 array!3384) (_values!1923 array!3386) (_vacant!275 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!452)

(declare-fun mapKey!2364 () (_ BitVec 32))

(declare-fun mapRest!2364 () (Array (_ BitVec 32) ValueCell!772))

(assert (=> mapNonEmpty!2363 (= (arr!1615 (_values!1923 newMap!16)) (store mapRest!2364 mapKey!2364 mapValue!2364))))

(declare-fun b!52198 () Bool)

(declare-fun res!29757 () Bool)

(declare-fun e!33905 () Bool)

(assert (=> b!52198 (=> (not res!29757) (not e!33905))))

(declare-datatypes ((Cell!268 0))(
  ( (Cell!269 (v!2206 LongMapFixedSize!452)) )
))
(declare-datatypes ((LongMap!268 0))(
  ( (LongMap!269 (underlying!145 Cell!268)) )
))
(declare-fun thiss!992 () LongMap!268)

(assert (=> b!52198 (= res!29757 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5759 newMap!16)) (_size!275 (v!2206 (underlying!145 thiss!992)))))))

(declare-fun b!52199 () Bool)

(declare-fun res!29759 () Bool)

(assert (=> b!52199 (=> (not res!29759) (not e!33905))))

(declare-datatypes ((List!1356 0))(
  ( (Nil!1353) (Cons!1352 (h!1932 (_ BitVec 64)) (t!4398 List!1356)) )
))
(declare-fun arrayNoDuplicates!0 (array!3384 (_ BitVec 32) List!1356) Bool)

(assert (=> b!52199 (= res!29759 (arrayNoDuplicates!0 (_keys!3560 (v!2206 (underlying!145 thiss!992))) #b00000000000000000000000000000000 Nil!1353))))

(declare-fun mapNonEmpty!2364 () Bool)

(declare-fun mapRes!2363 () Bool)

(declare-fun tp!6989 () Bool)

(declare-fun e!33908 () Bool)

(assert (=> mapNonEmpty!2364 (= mapRes!2363 (and tp!6989 e!33908))))

(declare-fun mapRest!2363 () (Array (_ BitVec 32) ValueCell!772))

(declare-fun mapKey!2363 () (_ BitVec 32))

(declare-fun mapValue!2363 () ValueCell!772)

(assert (=> mapNonEmpty!2364 (= (arr!1615 (_values!1923 (v!2206 (underlying!145 thiss!992)))) (store mapRest!2363 mapKey!2363 mapValue!2363))))

(declare-fun b!52200 () Bool)

(declare-fun res!29760 () Bool)

(assert (=> b!52200 (=> (not res!29760) (not e!33905))))

(assert (=> b!52200 (= res!29760 (and (= (size!1844 (_values!1923 (v!2206 (underlying!145 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5759 (v!2206 (underlying!145 thiss!992))))) (= (size!1843 (_keys!3560 (v!2206 (underlying!145 thiss!992)))) (size!1844 (_values!1923 (v!2206 (underlying!145 thiss!992))))) (bvsge (mask!5759 (v!2206 (underlying!145 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1831 (v!2206 (underlying!145 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1831 (v!2206 (underlying!145 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!52201 () Bool)

(declare-fun tp_is_empty!2231 () Bool)

(assert (=> b!52201 (= e!33908 tp_is_empty!2231)))

(declare-fun b!52202 () Bool)

(declare-fun e!33898 () Bool)

(assert (=> b!52202 (= e!33898 tp_is_empty!2231)))

(declare-fun mapIsEmpty!2363 () Bool)

(assert (=> mapIsEmpty!2363 mapRes!2364))

(declare-fun b!52203 () Bool)

(declare-fun e!33900 () Bool)

(assert (=> b!52203 (= e!33900 tp_is_empty!2231)))

(declare-fun b!52204 () Bool)

(declare-fun e!33897 () Bool)

(declare-fun e!33902 () Bool)

(assert (=> b!52204 (= e!33897 e!33902)))

(declare-fun b!52205 () Bool)

(declare-fun res!29756 () Bool)

(assert (=> b!52205 (=> (not res!29756) (not e!33905))))

(declare-fun valid!158 (LongMapFixedSize!452) Bool)

(assert (=> b!52205 (= res!29756 (valid!158 newMap!16))))

(declare-fun mapIsEmpty!2364 () Bool)

(assert (=> mapIsEmpty!2364 mapRes!2363))

(declare-fun b!52206 () Bool)

(declare-fun res!29753 () Bool)

(assert (=> b!52206 (=> (not res!29753) (not e!33905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3384 (_ BitVec 32)) Bool)

(assert (=> b!52206 (= res!29753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3560 (v!2206 (underlying!145 thiss!992))) (mask!5759 (v!2206 (underlying!145 thiss!992)))))))

(declare-fun e!33907 () Bool)

(declare-fun e!33901 () Bool)

(declare-fun array_inv!941 (array!3384) Bool)

(declare-fun array_inv!942 (array!3386) Bool)

(assert (=> b!52207 (= e!33901 (and tp!6988 tp_is_empty!2231 (array_inv!941 (_keys!3560 (v!2206 (underlying!145 thiss!992)))) (array_inv!942 (_values!1923 (v!2206 (underlying!145 thiss!992)))) e!33907))))

(declare-fun b!52208 () Bool)

(assert (=> b!52208 (= e!33902 e!33901)))

(declare-fun b!52209 () Bool)

(declare-fun e!33904 () Bool)

(assert (=> b!52209 (= e!33904 (and e!33900 mapRes!2364))))

(declare-fun condMapEmpty!2363 () Bool)

(declare-fun mapDefault!2363 () ValueCell!772)

