; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75724 () Bool)

(assert start!75724)

(declare-fun b!889859 () Bool)

(declare-fun b_free!15667 () Bool)

(declare-fun b_next!15667 () Bool)

(assert (=> b!889859 (= b_free!15667 (not b_next!15667))))

(declare-fun tp!54970 () Bool)

(declare-fun b_and!25925 () Bool)

(assert (=> b!889859 (= tp!54970 b_and!25925)))

(declare-fun b!889857 () Bool)

(declare-fun e!496181 () Bool)

(declare-fun tp_is_empty!17995 () Bool)

(assert (=> b!889857 (= e!496181 tp_is_empty!17995)))

(declare-fun b!889858 () Bool)

(declare-fun e!496182 () Bool)

(assert (=> b!889858 (= e!496182 (not true))))

(declare-fun e!496180 () Bool)

(assert (=> b!889858 e!496180))

(declare-fun res!603111 () Bool)

(assert (=> b!889858 (=> res!603111 e!496180)))

(declare-datatypes ((SeekEntryResult!8778 0))(
  ( (MissingZero!8778 (index!37482 (_ BitVec 32))) (Found!8778 (index!37483 (_ BitVec 32))) (Intermediate!8778 (undefined!9590 Bool) (index!37484 (_ BitVec 32)) (x!75571 (_ BitVec 32))) (Undefined!8778) (MissingVacant!8778 (index!37485 (_ BitVec 32))) )
))
(declare-fun lt!402104 () SeekEntryResult!8778)

(assert (=> b!889858 (= res!603111 (not (is-Found!8778 lt!402104)))))

(declare-datatypes ((Unit!30247 0))(
  ( (Unit!30248) )
))
(declare-fun lt!402105 () Unit!30247)

(declare-datatypes ((array!51956 0))(
  ( (array!51957 (arr!24980 (Array (_ BitVec 32) (_ BitVec 64))) (size!25425 (_ BitVec 32))) )
))
(declare-datatypes ((V!28959 0))(
  ( (V!28960 (val!9048 Int)) )
))
(declare-datatypes ((ValueCell!8516 0))(
  ( (ValueCellFull!8516 (v!11520 V!28959)) (EmptyCell!8516) )
))
(declare-datatypes ((array!51958 0))(
  ( (array!51959 (arr!24981 (Array (_ BitVec 32) ValueCell!8516)) (size!25426 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4048 0))(
  ( (LongMapFixedSize!4049 (defaultEntry!5221 Int) (mask!25677 (_ BitVec 32)) (extraKeys!4915 (_ BitVec 32)) (zeroValue!5019 V!28959) (minValue!5019 V!28959) (_size!2079 (_ BitVec 32)) (_keys!9900 array!51956) (_values!5206 array!51958) (_vacant!2079 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4048)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!3 (array!51956 array!51958 (_ BitVec 32) (_ BitVec 32) V!28959 V!28959 (_ BitVec 64)) Unit!30247)

(assert (=> b!889858 (= lt!402105 (lemmaSeekEntryGivesInRangeIndex!3 (_keys!9900 thiss!1181) (_values!5206 thiss!1181) (mask!25677 thiss!1181) (extraKeys!4915 thiss!1181) (zeroValue!5019 thiss!1181) (minValue!5019 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51956 (_ BitVec 32)) SeekEntryResult!8778)

(assert (=> b!889858 (= lt!402104 (seekEntry!0 key!785 (_keys!9900 thiss!1181) (mask!25677 thiss!1181)))))

(declare-fun e!496183 () Bool)

(declare-fun e!496184 () Bool)

(declare-fun array_inv!19616 (array!51956) Bool)

(declare-fun array_inv!19617 (array!51958) Bool)

(assert (=> b!889859 (= e!496184 (and tp!54970 tp_is_empty!17995 (array_inv!19616 (_keys!9900 thiss!1181)) (array_inv!19617 (_values!5206 thiss!1181)) e!496183))))

(declare-fun res!603110 () Bool)

(assert (=> start!75724 (=> (not res!603110) (not e!496182))))

(declare-fun valid!1563 (LongMapFixedSize!4048) Bool)

(assert (=> start!75724 (= res!603110 (valid!1563 thiss!1181))))

(assert (=> start!75724 e!496182))

(assert (=> start!75724 e!496184))

(assert (=> start!75724 true))

(declare-fun mapNonEmpty!28547 () Bool)

(declare-fun mapRes!28547 () Bool)

(declare-fun tp!54971 () Bool)

(assert (=> mapNonEmpty!28547 (= mapRes!28547 (and tp!54971 e!496181))))

(declare-fun mapValue!28547 () ValueCell!8516)

(declare-fun mapRest!28547 () (Array (_ BitVec 32) ValueCell!8516))

(declare-fun mapKey!28547 () (_ BitVec 32))

(assert (=> mapNonEmpty!28547 (= (arr!24981 (_values!5206 thiss!1181)) (store mapRest!28547 mapKey!28547 mapValue!28547))))

(declare-fun b!889860 () Bool)

(declare-fun e!496178 () Bool)

(assert (=> b!889860 (= e!496178 tp_is_empty!17995)))

(declare-fun b!889861 () Bool)

(declare-fun res!603109 () Bool)

(assert (=> b!889861 (=> (not res!603109) (not e!496182))))

(assert (=> b!889861 (= res!603109 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28547 () Bool)

(assert (=> mapIsEmpty!28547 mapRes!28547))

(declare-fun b!889862 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!889862 (= e!496180 (inRange!0 (index!37483 lt!402104) (mask!25677 thiss!1181)))))

(declare-fun b!889863 () Bool)

(assert (=> b!889863 (= e!496183 (and e!496178 mapRes!28547))))

(declare-fun condMapEmpty!28547 () Bool)

(declare-fun mapDefault!28547 () ValueCell!8516)

