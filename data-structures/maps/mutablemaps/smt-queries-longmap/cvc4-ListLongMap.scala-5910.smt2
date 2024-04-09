; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76544 () Bool)

(assert start!76544)

(declare-fun b!896654 () Bool)

(declare-fun b_free!15965 () Bool)

(declare-fun b_next!15965 () Bool)

(assert (=> b!896654 (= b_free!15965 (not b_next!15965))))

(declare-fun tp!55934 () Bool)

(declare-fun b_and!26275 () Bool)

(assert (=> b!896654 (= tp!55934 b_and!26275)))

(declare-fun b!896651 () Bool)

(declare-fun e!501307 () Bool)

(declare-fun e!501306 () Bool)

(declare-fun mapRes!29064 () Bool)

(assert (=> b!896651 (= e!501307 (and e!501306 mapRes!29064))))

(declare-fun condMapEmpty!29064 () Bool)

(declare-datatypes ((array!52592 0))(
  ( (array!52593 (arr!25278 (Array (_ BitVec 32) (_ BitVec 64))) (size!25731 (_ BitVec 32))) )
))
(declare-datatypes ((V!29355 0))(
  ( (V!29356 (val!9197 Int)) )
))
(declare-datatypes ((ValueCell!8665 0))(
  ( (ValueCellFull!8665 (v!11684 V!29355)) (EmptyCell!8665) )
))
(declare-datatypes ((array!52594 0))(
  ( (array!52595 (arr!25279 (Array (_ BitVec 32) ValueCell!8665)) (size!25732 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4346 0))(
  ( (LongMapFixedSize!4347 (defaultEntry!5385 Int) (mask!26035 (_ BitVec 32)) (extraKeys!5089 (_ BitVec 32)) (zeroValue!5193 V!29355) (minValue!5193 V!29355) (_size!2228 (_ BitVec 32)) (_keys!10122 array!52592) (_values!5380 array!52594) (_vacant!2228 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4346)

(declare-fun mapDefault!29064 () ValueCell!8665)

