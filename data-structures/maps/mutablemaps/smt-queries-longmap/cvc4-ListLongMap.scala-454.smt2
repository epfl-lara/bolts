; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8352 () Bool)

(assert start!8352)

(declare-fun b!55316 () Bool)

(declare-fun b_free!1845 () Bool)

(declare-fun b_next!1845 () Bool)

(assert (=> b!55316 (= b_free!1845 (not b_next!1845))))

(declare-fun tp!7637 () Bool)

(declare-fun b_and!3241 () Bool)

(assert (=> b!55316 (= tp!7637 b_and!3241)))

(declare-fun b!55310 () Bool)

(declare-fun b_free!1847 () Bool)

(declare-fun b_next!1847 () Bool)

(assert (=> b!55310 (= b_free!1847 (not b_next!1847))))

(declare-fun tp!7636 () Bool)

(declare-fun b_and!3243 () Bool)

(assert (=> b!55310 (= tp!7636 b_and!3243)))

(declare-fun b!55302 () Bool)

(declare-fun e!36320 () Bool)

(declare-fun e!36327 () Bool)

(assert (=> b!55302 (= e!36320 e!36327)))

(declare-fun b!55303 () Bool)

(declare-fun e!36314 () Bool)

(declare-fun tp_is_empty!2339 () Bool)

(assert (=> b!55303 (= e!36314 tp_is_empty!2339)))

(declare-fun mapNonEmpty!2687 () Bool)

(declare-fun mapRes!2687 () Bool)

(declare-fun tp!7638 () Bool)

(declare-fun e!36326 () Bool)

(assert (=> mapNonEmpty!2687 (= mapRes!2687 (and tp!7638 e!36326))))

(declare-datatypes ((V!2765 0))(
  ( (V!2766 (val!1214 Int)) )
))
(declare-datatypes ((ValueCell!826 0))(
  ( (ValueCellFull!826 (v!2310 V!2765)) (EmptyCell!826) )
))
(declare-fun mapRest!2688 () (Array (_ BitVec 32) ValueCell!826))

(declare-fun mapKey!2688 () (_ BitVec 32))

(declare-datatypes ((array!3600 0))(
  ( (array!3601 (arr!1722 (Array (_ BitVec 32) (_ BitVec 64))) (size!1951 (_ BitVec 32))) )
))
(declare-datatypes ((array!3602 0))(
  ( (array!3603 (arr!1723 (Array (_ BitVec 32) ValueCell!826)) (size!1952 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!560 0))(
  ( (LongMapFixedSize!561 (defaultEntry!1994 Int) (mask!5849 (_ BitVec 32)) (extraKeys!1885 (_ BitVec 32)) (zeroValue!1912 V!2765) (minValue!1912 V!2765) (_size!329 (_ BitVec 32)) (_keys!3614 array!3600) (_values!1977 array!3602) (_vacant!329 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!370 0))(
  ( (Cell!371 (v!2311 LongMapFixedSize!560)) )
))
(declare-datatypes ((LongMap!370 0))(
  ( (LongMap!371 (underlying!196 Cell!370)) )
))
(declare-fun thiss!992 () LongMap!370)

(declare-fun mapValue!2687 () ValueCell!826)

(assert (=> mapNonEmpty!2687 (= (arr!1723 (_values!1977 (v!2311 (underlying!196 thiss!992)))) (store mapRest!2688 mapKey!2688 mapValue!2687))))

(declare-fun b!55304 () Bool)

(declare-fun e!36319 () Bool)

(declare-fun mapRes!2688 () Bool)

(assert (=> b!55304 (= e!36319 (and e!36314 mapRes!2688))))

(declare-fun condMapEmpty!2688 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!560)

(declare-fun mapDefault!2687 () ValueCell!826)

