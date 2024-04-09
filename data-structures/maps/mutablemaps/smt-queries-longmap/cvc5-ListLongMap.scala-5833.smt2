; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75328 () Bool)

(assert start!75328)

(declare-fun b!886924 () Bool)

(declare-fun b_free!15499 () Bool)

(declare-fun b_next!15499 () Bool)

(assert (=> b!886924 (= b_free!15499 (not b_next!15499))))

(declare-fun tp!54431 () Bool)

(declare-fun b_and!25723 () Bool)

(assert (=> b!886924 (= tp!54431 b_and!25723)))

(declare-fun b!886923 () Bool)

(declare-fun e!493840 () Bool)

(declare-fun tp_is_empty!17827 () Bool)

(assert (=> b!886923 (= e!493840 tp_is_empty!17827)))

(declare-fun e!493842 () Bool)

(declare-datatypes ((V!28735 0))(
  ( (V!28736 (val!8964 Int)) )
))
(declare-datatypes ((ValueCell!8432 0))(
  ( (ValueCellFull!8432 (v!11404 V!28735)) (EmptyCell!8432) )
))
(declare-datatypes ((array!51600 0))(
  ( (array!51601 (arr!24812 (Array (_ BitVec 32) ValueCell!8432)) (size!25253 (_ BitVec 32))) )
))
(declare-datatypes ((array!51602 0))(
  ( (array!51603 (arr!24813 (Array (_ BitVec 32) (_ BitVec 64))) (size!25254 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3880 0))(
  ( (LongMapFixedSize!3881 (defaultEntry!5128 Int) (mask!25512 (_ BitVec 32)) (extraKeys!4821 (_ BitVec 32)) (zeroValue!4925 V!28735) (minValue!4925 V!28735) (_size!1995 (_ BitVec 32)) (_keys!9799 array!51602) (_values!5112 array!51600) (_vacant!1995 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1034 0))(
  ( (Cell!1035 (v!11405 LongMapFixedSize!3880)) )
))
(declare-datatypes ((LongMap!1034 0))(
  ( (LongMap!1035 (underlying!528 Cell!1034)) )
))
(declare-fun thiss!833 () LongMap!1034)

(declare-fun e!493843 () Bool)

(declare-fun array_inv!19508 (array!51602) Bool)

(declare-fun array_inv!19509 (array!51600) Bool)

(assert (=> b!886924 (= e!493843 (and tp!54431 tp_is_empty!17827 (array_inv!19508 (_keys!9799 (v!11405 (underlying!528 thiss!833)))) (array_inv!19509 (_values!5112 (v!11405 (underlying!528 thiss!833)))) e!493842))))

(declare-fun b!886925 () Bool)

(declare-fun e!493837 () Bool)

(declare-fun mapRes!28260 () Bool)

(assert (=> b!886925 (= e!493842 (and e!493837 mapRes!28260))))

(declare-fun condMapEmpty!28260 () Bool)

(declare-fun mapDefault!28260 () ValueCell!8432)

