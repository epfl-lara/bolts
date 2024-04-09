; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8102 () Bool)

(assert start!8102)

(declare-fun b!51009 () Bool)

(declare-fun b_free!1573 () Bool)

(declare-fun b_next!1573 () Bool)

(assert (=> b!51009 (= b_free!1573 (not b_next!1573))))

(declare-fun tp!6792 () Bool)

(declare-fun b_and!2793 () Bool)

(assert (=> b!51009 (= tp!6792 b_and!2793)))

(declare-fun b!51006 () Bool)

(declare-fun b_free!1575 () Bool)

(declare-fun b_next!1575 () Bool)

(assert (=> b!51006 (= b_free!1575 (not b_next!1575))))

(declare-fun tp!6793 () Bool)

(declare-fun b_and!2795 () Bool)

(assert (=> b!51006 (= tp!6793 b_and!2795)))

(declare-fun b!51001 () Bool)

(declare-fun res!29255 () Bool)

(declare-fun e!33026 () Bool)

(assert (=> b!51001 (=> (not res!29255) (not e!33026))))

(declare-datatypes ((V!2585 0))(
  ( (V!2586 (val!1146 Int)) )
))
(declare-datatypes ((array!3320 0))(
  ( (array!3321 (arr!1586 (Array (_ BitVec 32) (_ BitVec 64))) (size!1811 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!758 0))(
  ( (ValueCellFull!758 (v!2177 V!2585)) (EmptyCell!758) )
))
(declare-datatypes ((array!3322 0))(
  ( (array!3323 (arr!1587 (Array (_ BitVec 32) ValueCell!758)) (size!1812 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!424 0))(
  ( (LongMapFixedSize!425 (defaultEntry!1926 Int) (mask!5725 (_ BitVec 32)) (extraKeys!1817 (_ BitVec 32)) (zeroValue!1844 V!2585) (minValue!1844 V!2585) (_size!261 (_ BitVec 32)) (_keys!3538 array!3320) (_values!1909 array!3322) (_vacant!261 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!424)

(declare-datatypes ((Cell!246 0))(
  ( (Cell!247 (v!2178 LongMapFixedSize!424)) )
))
(declare-datatypes ((LongMap!246 0))(
  ( (LongMap!247 (underlying!134 Cell!246)) )
))
(declare-fun thiss!992 () LongMap!246)

(assert (=> b!51001 (= res!29255 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5725 newMap!16)) (_size!261 (v!2178 (underlying!134 thiss!992)))))))

(declare-fun b!51002 () Bool)

(declare-fun e!33029 () Bool)

(declare-fun e!33027 () Bool)

(declare-fun mapRes!2251 () Bool)

(assert (=> b!51002 (= e!33029 (and e!33027 mapRes!2251))))

(declare-fun condMapEmpty!2252 () Bool)

(declare-fun mapDefault!2252 () ValueCell!758)

