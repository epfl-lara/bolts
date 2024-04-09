; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14274 () Bool)

(assert start!14274)

(declare-fun b!132540 () Bool)

(declare-fun b_free!2925 () Bool)

(declare-fun b_next!2925 () Bool)

(assert (=> b!132540 (= b_free!2925 (not b_next!2925))))

(declare-fun tp!11219 () Bool)

(declare-fun b_and!8233 () Bool)

(assert (=> b!132540 (= tp!11219 b_and!8233)))

(declare-fun b!132556 () Bool)

(declare-fun b_free!2927 () Bool)

(declare-fun b_next!2927 () Bool)

(assert (=> b!132556 (= b_free!2927 (not b_next!2927))))

(declare-fun tp!11220 () Bool)

(declare-fun b_and!8235 () Bool)

(assert (=> b!132556 (= tp!11220 b_and!8235)))

(declare-fun res!63845 () Bool)

(declare-fun e!86430 () Bool)

(assert (=> start!14274 (=> (not res!63845) (not e!86430))))

(declare-datatypes ((V!3485 0))(
  ( (V!3486 (val!1484 Int)) )
))
(declare-datatypes ((array!4784 0))(
  ( (array!4785 (arr!2262 (Array (_ BitVec 32) (_ BitVec 64))) (size!2531 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1096 0))(
  ( (ValueCellFull!1096 (v!3198 V!3485)) (EmptyCell!1096) )
))
(declare-datatypes ((array!4786 0))(
  ( (array!4787 (arr!2263 (Array (_ BitVec 32) ValueCell!1096)) (size!2532 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1100 0))(
  ( (LongMapFixedSize!1101 (defaultEntry!2866 Int) (mask!7166 (_ BitVec 32)) (extraKeys!2631 (_ BitVec 32)) (zeroValue!2721 V!3485) (minValue!2721 V!3485) (_size!599 (_ BitVec 32)) (_keys!4615 array!4784) (_values!2849 array!4786) (_vacant!599 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!888 0))(
  ( (Cell!889 (v!3199 LongMapFixedSize!1100)) )
))
(declare-datatypes ((LongMap!888 0))(
  ( (LongMap!889 (underlying!455 Cell!888)) )
))
(declare-fun thiss!992 () LongMap!888)

(declare-fun valid!523 (LongMap!888) Bool)

(assert (=> start!14274 (= res!63845 (valid!523 thiss!992))))

(assert (=> start!14274 e!86430))

(declare-fun e!86438 () Bool)

(assert (=> start!14274 e!86438))

(assert (=> start!14274 true))

(declare-fun e!86432 () Bool)

(assert (=> start!14274 e!86432))

(declare-fun e!86433 () Bool)

(declare-fun tp_is_empty!2879 () Bool)

(declare-fun e!86436 () Bool)

(declare-fun array_inv!1393 (array!4784) Bool)

(declare-fun array_inv!1394 (array!4786) Bool)

(assert (=> b!132540 (= e!86436 (and tp!11219 tp_is_empty!2879 (array_inv!1393 (_keys!4615 (v!3199 (underlying!455 thiss!992)))) (array_inv!1394 (_values!2849 (v!3199 (underlying!455 thiss!992)))) e!86433))))

(declare-fun b!132541 () Bool)

(declare-fun e!86431 () Bool)

(declare-fun mapRes!4649 () Bool)

(assert (=> b!132541 (= e!86433 (and e!86431 mapRes!4649))))

(declare-fun condMapEmpty!4650 () Bool)

(declare-fun mapDefault!4649 () ValueCell!1096)

