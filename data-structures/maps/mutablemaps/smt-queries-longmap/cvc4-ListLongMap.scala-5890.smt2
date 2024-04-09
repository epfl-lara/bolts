; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75938 () Bool)

(assert start!75938)

(declare-fun b!892997 () Bool)

(declare-fun b_free!15845 () Bool)

(declare-fun b_next!15845 () Bool)

(assert (=> b!892997 (= b_free!15845 (not b_next!15845))))

(declare-fun tp!55508 () Bool)

(declare-fun b_and!26125 () Bool)

(assert (=> b!892997 (= tp!55508 b_and!26125)))

(declare-fun mapIsEmpty!28817 () Bool)

(declare-fun mapRes!28817 () Bool)

(assert (=> mapIsEmpty!28817 mapRes!28817))

(declare-fun b!892993 () Bool)

(declare-fun e!498691 () Bool)

(declare-datatypes ((SeekEntryResult!8854 0))(
  ( (MissingZero!8854 (index!37786 (_ BitVec 32))) (Found!8854 (index!37787 (_ BitVec 32))) (Intermediate!8854 (undefined!9666 Bool) (index!37788 (_ BitVec 32)) (x!75907 (_ BitVec 32))) (Undefined!8854) (MissingVacant!8854 (index!37789 (_ BitVec 32))) )
))
(declare-fun lt!403490 () SeekEntryResult!8854)

(declare-datatypes ((array!52314 0))(
  ( (array!52315 (arr!25158 (Array (_ BitVec 32) (_ BitVec 64))) (size!25603 (_ BitVec 32))) )
))
(declare-datatypes ((V!29195 0))(
  ( (V!29196 (val!9137 Int)) )
))
(declare-datatypes ((ValueCell!8605 0))(
  ( (ValueCellFull!8605 (v!11612 V!29195)) (EmptyCell!8605) )
))
(declare-datatypes ((array!52316 0))(
  ( (array!52317 (arr!25159 (Array (_ BitVec 32) ValueCell!8605)) (size!25604 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4226 0))(
  ( (LongMapFixedSize!4227 (defaultEntry!5313 Int) (mask!25830 (_ BitVec 32)) (extraKeys!5008 (_ BitVec 32)) (zeroValue!5112 V!29195) (minValue!5112 V!29195) (_size!2168 (_ BitVec 32)) (_keys!9994 array!52314) (_values!5299 array!52316) (_vacant!2168 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4226)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892993 (= e!498691 (inRange!0 (index!37787 lt!403490) (mask!25830 thiss!1181)))))

(declare-fun b!892994 () Bool)

(declare-fun e!498696 () Bool)

(declare-fun tp_is_empty!18173 () Bool)

(assert (=> b!892994 (= e!498696 tp_is_empty!18173)))

(declare-fun b!892995 () Bool)

(declare-fun e!498693 () Bool)

(assert (=> b!892995 (= e!498693 (and e!498696 mapRes!28817))))

(declare-fun condMapEmpty!28817 () Bool)

(declare-fun mapDefault!28817 () ValueCell!8605)

