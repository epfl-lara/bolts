; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75706 () Bool)

(assert start!75706)

(declare-fun b!889623 () Bool)

(declare-fun b_free!15649 () Bool)

(declare-fun b_next!15649 () Bool)

(assert (=> b!889623 (= b_free!15649 (not b_next!15649))))

(declare-fun tp!54916 () Bool)

(declare-fun b_and!25907 () Bool)

(assert (=> b!889623 (= tp!54916 b_and!25907)))

(declare-fun b!889618 () Bool)

(declare-fun e!495990 () Bool)

(declare-fun e!495994 () Bool)

(declare-fun mapRes!28520 () Bool)

(assert (=> b!889618 (= e!495990 (and e!495994 mapRes!28520))))

(declare-fun condMapEmpty!28520 () Bool)

(declare-datatypes ((array!51920 0))(
  ( (array!51921 (arr!24962 (Array (_ BitVec 32) (_ BitVec 64))) (size!25407 (_ BitVec 32))) )
))
(declare-datatypes ((V!28935 0))(
  ( (V!28936 (val!9039 Int)) )
))
(declare-datatypes ((ValueCell!8507 0))(
  ( (ValueCellFull!8507 (v!11511 V!28935)) (EmptyCell!8507) )
))
(declare-datatypes ((array!51922 0))(
  ( (array!51923 (arr!24963 (Array (_ BitVec 32) ValueCell!8507)) (size!25408 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4030 0))(
  ( (LongMapFixedSize!4031 (defaultEntry!5212 Int) (mask!25662 (_ BitVec 32)) (extraKeys!4906 (_ BitVec 32)) (zeroValue!5010 V!28935) (minValue!5010 V!28935) (_size!2070 (_ BitVec 32)) (_keys!9891 array!51920) (_values!5197 array!51922) (_vacant!2070 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4030)

(declare-fun mapDefault!28520 () ValueCell!8507)

