; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14584 () Bool)

(assert start!14584)

(declare-fun b!137873 () Bool)

(declare-fun b_free!2961 () Bool)

(declare-fun b_next!2961 () Bool)

(assert (=> b!137873 (= b_free!2961 (not b_next!2961))))

(declare-fun tp!11345 () Bool)

(declare-fun b_and!8577 () Bool)

(assert (=> b!137873 (= tp!11345 b_and!8577)))

(declare-fun b!137871 () Bool)

(declare-fun b_free!2963 () Bool)

(declare-fun b_next!2963 () Bool)

(assert (=> b!137871 (= b_free!2963 (not b_next!2963))))

(declare-fun tp!11343 () Bool)

(declare-fun b_and!8579 () Bool)

(assert (=> b!137871 (= tp!11343 b_and!8579)))

(declare-fun b!137866 () Bool)

(declare-fun e!89787 () Bool)

(declare-fun e!89775 () Bool)

(declare-fun mapRes!4721 () Bool)

(assert (=> b!137866 (= e!89787 (and e!89775 mapRes!4721))))

(declare-fun condMapEmpty!4721 () Bool)

(declare-datatypes ((V!3509 0))(
  ( (V!3510 (val!1493 Int)) )
))
(declare-datatypes ((array!4824 0))(
  ( (array!4825 (arr!2280 (Array (_ BitVec 32) (_ BitVec 64))) (size!2551 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1105 0))(
  ( (ValueCellFull!1105 (v!3237 V!3509)) (EmptyCell!1105) )
))
(declare-datatypes ((array!4826 0))(
  ( (array!4827 (arr!2281 (Array (_ BitVec 32) ValueCell!1105)) (size!2552 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1118 0))(
  ( (LongMapFixedSize!1119 (defaultEntry!2911 Int) (mask!7235 (_ BitVec 32)) (extraKeys!2668 (_ BitVec 32)) (zeroValue!2762 V!3509) (minValue!2762 V!3509) (_size!608 (_ BitVec 32)) (_keys!4668 array!4824) (_values!2894 array!4826) (_vacant!608 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!906 0))(
  ( (Cell!907 (v!3238 LongMapFixedSize!1118)) )
))
(declare-datatypes ((LongMap!906 0))(
  ( (LongMap!907 (underlying!464 Cell!906)) )
))
(declare-fun thiss!992 () LongMap!906)

(declare-fun mapDefault!4722 () ValueCell!1105)

