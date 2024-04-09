; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75526 () Bool)

(assert start!75526)

(declare-fun b!888256 () Bool)

(declare-fun b_free!15569 () Bool)

(declare-fun b_next!15569 () Bool)

(assert (=> b!888256 (= b_free!15569 (not b_next!15569))))

(declare-fun tp!54658 () Bool)

(declare-fun b_and!25825 () Bool)

(assert (=> b!888256 (= tp!54658 b_and!25825)))

(declare-fun b!888251 () Bool)

(declare-fun e!494968 () Bool)

(declare-fun tp_is_empty!17897 () Bool)

(assert (=> b!888251 (= e!494968 tp_is_empty!17897)))

(declare-fun b!888252 () Bool)

(declare-fun e!494967 () Bool)

(assert (=> b!888252 (= e!494967 tp_is_empty!17897)))

(declare-fun b!888253 () Bool)

(declare-fun e!494964 () Bool)

(declare-fun mapRes!28382 () Bool)

(assert (=> b!888253 (= e!494964 (and e!494967 mapRes!28382))))

(declare-fun condMapEmpty!28382 () Bool)

(declare-datatypes ((array!51750 0))(
  ( (array!51751 (arr!24882 (Array (_ BitVec 32) (_ BitVec 64))) (size!25324 (_ BitVec 32))) )
))
(declare-datatypes ((V!28827 0))(
  ( (V!28828 (val!8999 Int)) )
))
(declare-datatypes ((ValueCell!8467 0))(
  ( (ValueCellFull!8467 (v!11468 V!28827)) (EmptyCell!8467) )
))
(declare-datatypes ((array!51752 0))(
  ( (array!51753 (arr!24883 (Array (_ BitVec 32) ValueCell!8467)) (size!25325 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3950 0))(
  ( (LongMapFixedSize!3951 (defaultEntry!5169 Int) (mask!25582 (_ BitVec 32)) (extraKeys!4863 (_ BitVec 32)) (zeroValue!4967 V!28827) (minValue!4967 V!28827) (_size!2030 (_ BitVec 32)) (_keys!9844 array!51750) (_values!5154 array!51752) (_vacant!2030 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3950)

(declare-fun mapDefault!28382 () ValueCell!8467)

