; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75736 () Bool)

(assert start!75736)

(declare-fun b!889987 () Bool)

(declare-fun b_free!15679 () Bool)

(declare-fun b_next!15679 () Bool)

(assert (=> b!889987 (= b_free!15679 (not b_next!15679))))

(declare-fun tp!55007 () Bool)

(declare-fun b_and!25937 () Bool)

(assert (=> b!889987 (= tp!55007 b_and!25937)))

(declare-fun b!889983 () Bool)

(declare-fun res!603164 () Bool)

(declare-fun e!496309 () Bool)

(assert (=> b!889983 (=> (not res!603164) (not e!496309))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889983 (= res!603164 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889984 () Bool)

(declare-fun e!496310 () Bool)

(declare-fun tp_is_empty!18007 () Bool)

(assert (=> b!889984 (= e!496310 tp_is_empty!18007)))

(declare-fun b!889985 () Bool)

(declare-fun e!496305 () Bool)

(declare-datatypes ((SeekEntryResult!8783 0))(
  ( (MissingZero!8783 (index!37502 (_ BitVec 32))) (Found!8783 (index!37503 (_ BitVec 32))) (Intermediate!8783 (undefined!9595 Bool) (index!37504 (_ BitVec 32)) (x!75592 (_ BitVec 32))) (Undefined!8783) (MissingVacant!8783 (index!37505 (_ BitVec 32))) )
))
(declare-fun lt!402141 () SeekEntryResult!8783)

(declare-datatypes ((array!51980 0))(
  ( (array!51981 (arr!24992 (Array (_ BitVec 32) (_ BitVec 64))) (size!25437 (_ BitVec 32))) )
))
(declare-datatypes ((V!28975 0))(
  ( (V!28976 (val!9054 Int)) )
))
(declare-datatypes ((ValueCell!8522 0))(
  ( (ValueCellFull!8522 (v!11526 V!28975)) (EmptyCell!8522) )
))
(declare-datatypes ((array!51982 0))(
  ( (array!51983 (arr!24993 (Array (_ BitVec 32) ValueCell!8522)) (size!25438 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4060 0))(
  ( (LongMapFixedSize!4061 (defaultEntry!5227 Int) (mask!25687 (_ BitVec 32)) (extraKeys!4921 (_ BitVec 32)) (zeroValue!5025 V!28975) (minValue!5025 V!28975) (_size!2085 (_ BitVec 32)) (_keys!9906 array!51980) (_values!5212 array!51982) (_vacant!2085 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4060)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!889985 (= e!496305 (inRange!0 (index!37503 lt!402141) (mask!25687 thiss!1181)))))

(declare-fun b!889986 () Bool)

(declare-fun e!496304 () Bool)

(declare-fun e!496307 () Bool)

(declare-fun mapRes!28565 () Bool)

(assert (=> b!889986 (= e!496304 (and e!496307 mapRes!28565))))

(declare-fun condMapEmpty!28565 () Bool)

(declare-fun mapDefault!28565 () ValueCell!8522)

