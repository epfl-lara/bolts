; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75520 () Bool)

(assert start!75520)

(declare-fun b!888200 () Bool)

(declare-fun b_free!15563 () Bool)

(declare-fun b_next!15563 () Bool)

(assert (=> b!888200 (= b_free!15563 (not b_next!15563))))

(declare-fun tp!54640 () Bool)

(declare-fun b_and!25819 () Bool)

(assert (=> b!888200 (= tp!54640 b_and!25819)))

(declare-fun b!888199 () Bool)

(declare-fun e!494914 () Bool)

(declare-fun e!494913 () Bool)

(declare-fun mapRes!28373 () Bool)

(assert (=> b!888199 (= e!494914 (and e!494913 mapRes!28373))))

(declare-fun condMapEmpty!28373 () Bool)

(declare-datatypes ((array!51738 0))(
  ( (array!51739 (arr!24876 (Array (_ BitVec 32) (_ BitVec 64))) (size!25318 (_ BitVec 32))) )
))
(declare-datatypes ((V!28819 0))(
  ( (V!28820 (val!8996 Int)) )
))
(declare-datatypes ((ValueCell!8464 0))(
  ( (ValueCellFull!8464 (v!11465 V!28819)) (EmptyCell!8464) )
))
(declare-datatypes ((array!51740 0))(
  ( (array!51741 (arr!24877 (Array (_ BitVec 32) ValueCell!8464)) (size!25319 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3944 0))(
  ( (LongMapFixedSize!3945 (defaultEntry!5166 Int) (mask!25577 (_ BitVec 32)) (extraKeys!4860 (_ BitVec 32)) (zeroValue!4964 V!28819) (minValue!4964 V!28819) (_size!2027 (_ BitVec 32)) (_keys!9841 array!51738) (_values!5151 array!51740) (_vacant!2027 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3944)

(declare-fun mapDefault!28373 () ValueCell!8464)

