; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75836 () Bool)

(assert start!75836)

(declare-fun b!891623 () Bool)

(declare-fun b_free!15779 () Bool)

(declare-fun b_next!15779 () Bool)

(assert (=> b!891623 (= b_free!15779 (not b_next!15779))))

(declare-fun tp!55306 () Bool)

(declare-fun b_and!26037 () Bool)

(assert (=> b!891623 (= tp!55306 b_and!26037)))

(declare-fun b!891614 () Bool)

(declare-fun res!604199 () Bool)

(declare-fun e!497627 () Bool)

(assert (=> b!891614 (=> (not res!604199) (not e!497627))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!891614 (= res!604199 (not (= key!785 (bvneg key!785))))))

(declare-fun b!891615 () Bool)

(declare-fun e!497625 () Bool)

(declare-fun e!497623 () Bool)

(declare-fun mapRes!28715 () Bool)

(assert (=> b!891615 (= e!497625 (and e!497623 mapRes!28715))))

(declare-fun condMapEmpty!28715 () Bool)

(declare-datatypes ((array!52180 0))(
  ( (array!52181 (arr!25092 (Array (_ BitVec 32) (_ BitVec 64))) (size!25537 (_ BitVec 32))) )
))
(declare-datatypes ((V!29107 0))(
  ( (V!29108 (val!9104 Int)) )
))
(declare-datatypes ((ValueCell!8572 0))(
  ( (ValueCellFull!8572 (v!11576 V!29107)) (EmptyCell!8572) )
))
(declare-datatypes ((array!52182 0))(
  ( (array!52183 (arr!25093 (Array (_ BitVec 32) ValueCell!8572)) (size!25538 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4160 0))(
  ( (LongMapFixedSize!4161 (defaultEntry!5277 Int) (mask!25769 (_ BitVec 32)) (extraKeys!4971 (_ BitVec 32)) (zeroValue!5075 V!29107) (minValue!5075 V!29107) (_size!2135 (_ BitVec 32)) (_keys!9956 array!52180) (_values!5262 array!52182) (_vacant!2135 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4160)

(declare-fun mapDefault!28715 () ValueCell!8572)

