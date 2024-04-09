; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8400 () Bool)

(assert start!8400)

(declare-fun b!56849 () Bool)

(declare-fun b_free!1941 () Bool)

(declare-fun b_next!1941 () Bool)

(assert (=> b!56849 (= b_free!1941 (not b_next!1941))))

(declare-fun tp!7923 () Bool)

(declare-fun b_and!3433 () Bool)

(assert (=> b!56849 (= tp!7923 b_and!3433)))

(declare-fun b!56846 () Bool)

(declare-fun b_free!1943 () Bool)

(declare-fun b_next!1943 () Bool)

(assert (=> b!56846 (= b_free!1943 (not b_next!1943))))

(declare-fun tp!7924 () Bool)

(declare-fun b_and!3435 () Bool)

(assert (=> b!56846 (= tp!7924 b_and!3435)))

(declare-fun b!56834 () Bool)

(declare-datatypes ((Unit!1478 0))(
  ( (Unit!1479) )
))
(declare-fun e!37470 () Unit!1478)

(declare-fun Unit!1480 () Unit!1478)

(assert (=> b!56834 (= e!37470 Unit!1480)))

(declare-fun mapNonEmpty!2831 () Bool)

(declare-fun mapRes!2832 () Bool)

(declare-fun tp!7926 () Bool)

(declare-fun e!37466 () Bool)

(assert (=> mapNonEmpty!2831 (= mapRes!2832 (and tp!7926 e!37466))))

(declare-datatypes ((V!2829 0))(
  ( (V!2830 (val!1238 Int)) )
))
(declare-datatypes ((array!3696 0))(
  ( (array!3697 (arr!1770 (Array (_ BitVec 32) (_ BitVec 64))) (size!1999 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!850 0))(
  ( (ValueCellFull!850 (v!2358 V!2829)) (EmptyCell!850) )
))
(declare-datatypes ((array!3698 0))(
  ( (array!3699 (arr!1771 (Array (_ BitVec 32) ValueCell!850)) (size!2000 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!608 0))(
  ( (LongMapFixedSize!609 (defaultEntry!2018 Int) (mask!5889 (_ BitVec 32)) (extraKeys!1909 (_ BitVec 32)) (zeroValue!1936 V!2829) (minValue!1936 V!2829) (_size!353 (_ BitVec 32)) (_keys!3638 array!3696) (_values!2001 array!3698) (_vacant!353 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!418 0))(
  ( (Cell!419 (v!2359 LongMapFixedSize!608)) )
))
(declare-datatypes ((LongMap!418 0))(
  ( (LongMap!419 (underlying!220 Cell!418)) )
))
(declare-fun thiss!992 () LongMap!418)

(declare-fun mapKey!2831 () (_ BitVec 32))

(declare-fun mapRest!2831 () (Array (_ BitVec 32) ValueCell!850))

(declare-fun mapValue!2832 () ValueCell!850)

(assert (=> mapNonEmpty!2831 (= (arr!1771 (_values!2001 (v!2359 (underlying!220 thiss!992)))) (store mapRest!2831 mapKey!2831 mapValue!2832))))

(declare-fun b!56835 () Bool)

(declare-fun e!37479 () Bool)

(declare-fun e!37469 () Bool)

(declare-fun mapRes!2831 () Bool)

(assert (=> b!56835 (= e!37479 (and e!37469 mapRes!2831))))

(declare-fun condMapEmpty!2831 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!608)

(declare-fun mapDefault!2832 () ValueCell!850)

