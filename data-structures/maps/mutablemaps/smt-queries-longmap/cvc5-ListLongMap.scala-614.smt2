; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16004 () Bool)

(assert start!16004)

(declare-fun b!158746 () Bool)

(declare-fun b_free!3493 () Bool)

(declare-fun b_next!3493 () Bool)

(assert (=> b!158746 (= b_free!3493 (not b_next!3493))))

(declare-fun tp!13040 () Bool)

(declare-fun b_and!9925 () Bool)

(assert (=> b!158746 (= tp!13040 b_and!9925)))

(declare-fun b!158742 () Bool)

(declare-fun res!74964 () Bool)

(declare-fun e!103959 () Bool)

(assert (=> b!158742 (=> (not res!74964) (not e!103959))))

(declare-datatypes ((V!4041 0))(
  ( (V!4042 (val!1692 Int)) )
))
(declare-datatypes ((ValueCell!1304 0))(
  ( (ValueCellFull!1304 (v!3553 V!4041)) (EmptyCell!1304) )
))
(declare-datatypes ((array!5662 0))(
  ( (array!5663 (arr!2678 (Array (_ BitVec 32) (_ BitVec 64))) (size!2962 (_ BitVec 32))) )
))
(declare-datatypes ((array!5664 0))(
  ( (array!5665 (arr!2679 (Array (_ BitVec 32) ValueCell!1304)) (size!2963 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1516 0))(
  ( (LongMapFixedSize!1517 (defaultEntry!3200 Int) (mask!7731 (_ BitVec 32)) (extraKeys!2941 (_ BitVec 32)) (zeroValue!3043 V!4041) (minValue!3043 V!4041) (_size!807 (_ BitVec 32)) (_keys!4995 array!5662) (_values!3183 array!5664) (_vacant!807 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1516)

(assert (=> b!158742 (= res!74964 (and (= (size!2963 (_values!3183 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7731 thiss!1248))) (= (size!2962 (_keys!4995 thiss!1248)) (size!2963 (_values!3183 thiss!1248))) (bvsge (mask!7731 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2941 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2941 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!158743 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5662 (_ BitVec 32)) Bool)

(assert (=> b!158743 (= e!103959 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4995 thiss!1248) (mask!7731 thiss!1248))))))

(declare-fun b!158744 () Bool)

(declare-fun e!103960 () Bool)

(declare-fun e!103964 () Bool)

(declare-fun mapRes!5621 () Bool)

(assert (=> b!158744 (= e!103960 (and e!103964 mapRes!5621))))

(declare-fun condMapEmpty!5621 () Bool)

(declare-fun mapDefault!5621 () ValueCell!1304)

