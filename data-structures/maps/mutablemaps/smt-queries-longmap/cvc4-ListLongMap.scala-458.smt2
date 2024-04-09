; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8376 () Bool)

(assert start!8376)

(declare-fun b!56082 () Bool)

(declare-fun b_free!1893 () Bool)

(declare-fun b_next!1893 () Bool)

(assert (=> b!56082 (= b_free!1893 (not b_next!1893))))

(declare-fun tp!7781 () Bool)

(declare-fun b_and!3337 () Bool)

(assert (=> b!56082 (= tp!7781 b_and!3337)))

(declare-fun b!56080 () Bool)

(declare-fun b_free!1895 () Bool)

(declare-fun b_next!1895 () Bool)

(assert (=> b!56080 (= b_free!1895 (not b_next!1895))))

(declare-fun tp!7780 () Bool)

(declare-fun b_and!3339 () Bool)

(assert (=> b!56080 (= tp!7780 b_and!3339)))

(declare-fun b!56078 () Bool)

(declare-fun e!36894 () Bool)

(declare-fun e!36900 () Bool)

(declare-fun mapRes!2760 () Bool)

(assert (=> b!56078 (= e!36894 (and e!36900 mapRes!2760))))

(declare-fun condMapEmpty!2759 () Bool)

(declare-datatypes ((V!2797 0))(
  ( (V!2798 (val!1226 Int)) )
))
(declare-datatypes ((array!3648 0))(
  ( (array!3649 (arr!1746 (Array (_ BitVec 32) (_ BitVec 64))) (size!1975 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!838 0))(
  ( (ValueCellFull!838 (v!2334 V!2797)) (EmptyCell!838) )
))
(declare-datatypes ((array!3650 0))(
  ( (array!3651 (arr!1747 (Array (_ BitVec 32) ValueCell!838)) (size!1976 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!584 0))(
  ( (LongMapFixedSize!585 (defaultEntry!2006 Int) (mask!5869 (_ BitVec 32)) (extraKeys!1897 (_ BitVec 32)) (zeroValue!1924 V!2797) (minValue!1924 V!2797) (_size!341 (_ BitVec 32)) (_keys!3626 array!3648) (_values!1989 array!3650) (_vacant!341 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!394 0))(
  ( (Cell!395 (v!2335 LongMapFixedSize!584)) )
))
(declare-datatypes ((LongMap!394 0))(
  ( (LongMap!395 (underlying!208 Cell!394)) )
))
(declare-fun thiss!992 () LongMap!394)

(declare-fun mapDefault!2759 () ValueCell!838)

