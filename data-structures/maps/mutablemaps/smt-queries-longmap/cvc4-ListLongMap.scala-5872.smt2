; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75794 () Bool)

(assert start!75794)

(declare-fun b!890885 () Bool)

(declare-fun b_free!15737 () Bool)

(declare-fun b_next!15737 () Bool)

(assert (=> b!890885 (= b_free!15737 (not b_next!15737))))

(declare-fun tp!55181 () Bool)

(declare-fun b_and!25995 () Bool)

(assert (=> b!890885 (= tp!55181 b_and!25995)))

(declare-fun b!890876 () Bool)

(declare-fun res!603708 () Bool)

(declare-fun e!497063 () Bool)

(assert (=> b!890876 (=> res!603708 e!497063)))

(declare-datatypes ((array!52096 0))(
  ( (array!52097 (arr!25050 (Array (_ BitVec 32) (_ BitVec 64))) (size!25495 (_ BitVec 32))) )
))
(declare-datatypes ((V!29051 0))(
  ( (V!29052 (val!9083 Int)) )
))
(declare-datatypes ((ValueCell!8551 0))(
  ( (ValueCellFull!8551 (v!11555 V!29051)) (EmptyCell!8551) )
))
(declare-datatypes ((array!52098 0))(
  ( (array!52099 (arr!25051 (Array (_ BitVec 32) ValueCell!8551)) (size!25496 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4118 0))(
  ( (LongMapFixedSize!4119 (defaultEntry!5256 Int) (mask!25734 (_ BitVec 32)) (extraKeys!4950 (_ BitVec 32)) (zeroValue!5054 V!29051) (minValue!5054 V!29051) (_size!2114 (_ BitVec 32)) (_keys!9935 array!52096) (_values!5241 array!52098) (_vacant!2114 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4118)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52096 (_ BitVec 32)) Bool)

(assert (=> b!890876 (= res!603708 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9935 thiss!1181) (mask!25734 thiss!1181))))))

(declare-fun mapNonEmpty!28652 () Bool)

(declare-fun mapRes!28652 () Bool)

(declare-fun tp!55180 () Bool)

(declare-fun e!497060 () Bool)

(assert (=> mapNonEmpty!28652 (= mapRes!28652 (and tp!55180 e!497060))))

(declare-fun mapKey!28652 () (_ BitVec 32))

(declare-fun mapRest!28652 () (Array (_ BitVec 32) ValueCell!8551))

(declare-fun mapValue!28652 () ValueCell!8551)

(assert (=> mapNonEmpty!28652 (= (arr!25051 (_values!5241 thiss!1181)) (store mapRest!28652 mapKey!28652 mapValue!28652))))

(declare-fun b!890877 () Bool)

(declare-fun res!603712 () Bool)

(declare-fun e!497057 () Bool)

(assert (=> b!890877 (=> (not res!603712) (not e!497057))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890877 (= res!603712 (not (= key!785 (bvneg key!785))))))

(declare-fun res!603711 () Bool)

(assert (=> start!75794 (=> (not res!603711) (not e!497057))))

(declare-fun valid!1587 (LongMapFixedSize!4118) Bool)

(assert (=> start!75794 (= res!603711 (valid!1587 thiss!1181))))

(assert (=> start!75794 e!497057))

(declare-fun e!497055 () Bool)

(assert (=> start!75794 e!497055))

(assert (=> start!75794 true))

(declare-fun b!890878 () Bool)

(assert (=> b!890878 (= e!497063 true)))

(declare-fun lt!402456 () Bool)

(declare-datatypes ((List!17814 0))(
  ( (Nil!17811) (Cons!17810 (h!18941 (_ BitVec 64)) (t!25121 List!17814)) )
))
(declare-fun arrayNoDuplicates!0 (array!52096 (_ BitVec 32) List!17814) Bool)

(assert (=> b!890878 (= lt!402456 (arrayNoDuplicates!0 (_keys!9935 thiss!1181) #b00000000000000000000000000000000 Nil!17811))))

(declare-fun mapIsEmpty!28652 () Bool)

(assert (=> mapIsEmpty!28652 mapRes!28652))

(declare-fun b!890879 () Bool)

(declare-fun e!497062 () Bool)

(assert (=> b!890879 (= e!497057 (not e!497062))))

(declare-fun res!603709 () Bool)

(assert (=> b!890879 (=> res!603709 e!497062)))

(declare-datatypes ((SeekEntryResult!8808 0))(
  ( (MissingZero!8808 (index!37602 (_ BitVec 32))) (Found!8808 (index!37603 (_ BitVec 32))) (Intermediate!8808 (undefined!9620 Bool) (index!37604 (_ BitVec 32)) (x!75689 (_ BitVec 32))) (Undefined!8808) (MissingVacant!8808 (index!37605 (_ BitVec 32))) )
))
(declare-fun lt!402458 () SeekEntryResult!8808)

(assert (=> b!890879 (= res!603709 (not (is-Found!8808 lt!402458)))))

(declare-fun e!497058 () Bool)

(assert (=> b!890879 e!497058))

(declare-fun res!603714 () Bool)

(assert (=> b!890879 (=> res!603714 e!497058)))

(assert (=> b!890879 (= res!603714 (not (is-Found!8808 lt!402458)))))

(declare-datatypes ((Unit!30301 0))(
  ( (Unit!30302) )
))
(declare-fun lt!402457 () Unit!30301)

(declare-fun lemmaSeekEntryGivesInRangeIndex!29 (array!52096 array!52098 (_ BitVec 32) (_ BitVec 32) V!29051 V!29051 (_ BitVec 64)) Unit!30301)

(assert (=> b!890879 (= lt!402457 (lemmaSeekEntryGivesInRangeIndex!29 (_keys!9935 thiss!1181) (_values!5241 thiss!1181) (mask!25734 thiss!1181) (extraKeys!4950 thiss!1181) (zeroValue!5054 thiss!1181) (minValue!5054 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52096 (_ BitVec 32)) SeekEntryResult!8808)

(assert (=> b!890879 (= lt!402458 (seekEntry!0 key!785 (_keys!9935 thiss!1181) (mask!25734 thiss!1181)))))

(declare-fun b!890880 () Bool)

(declare-fun e!497056 () Bool)

(declare-fun tp_is_empty!18065 () Bool)

(assert (=> b!890880 (= e!497056 tp_is_empty!18065)))

(declare-fun b!890881 () Bool)

(declare-fun e!497061 () Bool)

(assert (=> b!890881 (= e!497061 (and e!497056 mapRes!28652))))

(declare-fun condMapEmpty!28652 () Bool)

(declare-fun mapDefault!28652 () ValueCell!8551)

