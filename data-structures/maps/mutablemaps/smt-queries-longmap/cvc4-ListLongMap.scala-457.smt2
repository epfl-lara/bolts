; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8370 () Bool)

(assert start!8370)

(declare-fun b!55883 () Bool)

(declare-fun b_free!1881 () Bool)

(declare-fun b_next!1881 () Bool)

(assert (=> b!55883 (= b_free!1881 (not b_next!1881))))

(declare-fun tp!7743 () Bool)

(declare-fun b_and!3313 () Bool)

(assert (=> b!55883 (= tp!7743 b_and!3313)))

(declare-fun b!55896 () Bool)

(declare-fun b_free!1883 () Bool)

(declare-fun b_next!1883 () Bool)

(assert (=> b!55896 (= b_free!1883 (not b_next!1883))))

(declare-fun tp!7746 () Bool)

(declare-fun b_and!3315 () Bool)

(assert (=> b!55896 (= tp!7746 b_and!3315)))

(declare-fun tp_is_empty!2357 () Bool)

(declare-fun e!36747 () Bool)

(declare-datatypes ((V!2789 0))(
  ( (V!2790 (val!1223 Int)) )
))
(declare-datatypes ((array!3636 0))(
  ( (array!3637 (arr!1740 (Array (_ BitVec 32) (_ BitVec 64))) (size!1969 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!835 0))(
  ( (ValueCellFull!835 (v!2328 V!2789)) (EmptyCell!835) )
))
(declare-datatypes ((array!3638 0))(
  ( (array!3639 (arr!1741 (Array (_ BitVec 32) ValueCell!835)) (size!1970 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!578 0))(
  ( (LongMapFixedSize!579 (defaultEntry!2003 Int) (mask!5864 (_ BitVec 32)) (extraKeys!1894 (_ BitVec 32)) (zeroValue!1921 V!2789) (minValue!1921 V!2789) (_size!338 (_ BitVec 32)) (_keys!3623 array!3636) (_values!1986 array!3638) (_vacant!338 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!388 0))(
  ( (Cell!389 (v!2329 LongMapFixedSize!578)) )
))
(declare-datatypes ((LongMap!388 0))(
  ( (LongMap!389 (underlying!205 Cell!388)) )
))
(declare-fun thiss!992 () LongMap!388)

(declare-fun e!36746 () Bool)

(declare-fun array_inv!1021 (array!3636) Bool)

(declare-fun array_inv!1022 (array!3638) Bool)

(assert (=> b!55883 (= e!36746 (and tp!7743 tp_is_empty!2357 (array_inv!1021 (_keys!3623 (v!2329 (underlying!205 thiss!992)))) (array_inv!1022 (_values!1986 (v!2329 (underlying!205 thiss!992)))) e!36747))))

(declare-fun mapNonEmpty!2741 () Bool)

(declare-fun mapRes!2742 () Bool)

(declare-fun tp!7745 () Bool)

(declare-fun e!36757 () Bool)

(assert (=> mapNonEmpty!2741 (= mapRes!2742 (and tp!7745 e!36757))))

(declare-fun mapKey!2741 () (_ BitVec 32))

(declare-fun mapValue!2742 () ValueCell!835)

(declare-fun newMap!16 () LongMapFixedSize!578)

(declare-fun mapRest!2741 () (Array (_ BitVec 32) ValueCell!835))

(assert (=> mapNonEmpty!2741 (= (arr!1741 (_values!1986 newMap!16)) (store mapRest!2741 mapKey!2741 mapValue!2742))))

(declare-fun b!55884 () Bool)

(declare-fun res!31442 () Bool)

(declare-fun e!36751 () Bool)

(assert (=> b!55884 (=> res!31442 e!36751)))

(declare-datatypes ((List!1425 0))(
  ( (Nil!1422) (Cons!1421 (h!2001 (_ BitVec 64)) (t!4683 List!1425)) )
))
(declare-fun lt!22077 () List!1425)

(declare-fun noDuplicate!42 (List!1425) Bool)

(assert (=> b!55884 (= res!31442 (not (noDuplicate!42 lt!22077)))))

(declare-fun b!55885 () Bool)

(declare-fun e!36758 () Bool)

(declare-fun mapRes!2741 () Bool)

(assert (=> b!55885 (= e!36747 (and e!36758 mapRes!2741))))

(declare-fun condMapEmpty!2741 () Bool)

(declare-fun mapDefault!2742 () ValueCell!835)

