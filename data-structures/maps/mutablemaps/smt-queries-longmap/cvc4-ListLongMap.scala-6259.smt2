; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80052 () Bool)

(assert start!80052)

(declare-fun b!940717 () Bool)

(declare-fun b_free!17879 () Bool)

(declare-fun b_next!17879 () Bool)

(assert (=> b!940717 (= b_free!17879 (not b_next!17879))))

(declare-fun tp!62112 () Bool)

(declare-fun b_and!29309 () Bool)

(assert (=> b!940717 (= tp!62112 b_and!29309)))

(declare-fun b!940716 () Bool)

(declare-fun e!528790 () Bool)

(declare-fun tp_is_empty!20387 () Bool)

(assert (=> b!940716 (= e!528790 tp_is_empty!20387)))

(declare-datatypes ((V!32147 0))(
  ( (V!32148 (val!10244 Int)) )
))
(declare-datatypes ((ValueCell!9712 0))(
  ( (ValueCellFull!9712 (v!12775 V!32147)) (EmptyCell!9712) )
))
(declare-datatypes ((array!56744 0))(
  ( (array!56745 (arr!27303 (Array (_ BitVec 32) ValueCell!9712)) (size!27765 (_ BitVec 32))) )
))
(declare-datatypes ((array!56746 0))(
  ( (array!56747 (arr!27304 (Array (_ BitVec 32) (_ BitVec 64))) (size!27766 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4574 0))(
  ( (LongMapFixedSize!4575 (defaultEntry!5578 Int) (mask!27120 (_ BitVec 32)) (extraKeys!5310 (_ BitVec 32)) (zeroValue!5414 V!32147) (minValue!5414 V!32147) (_size!2342 (_ BitVec 32)) (_keys!10424 array!56746) (_values!5601 array!56744) (_vacant!2342 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4574)

(declare-fun e!528788 () Bool)

(declare-fun e!528789 () Bool)

(declare-fun array_inv!21174 (array!56746) Bool)

(declare-fun array_inv!21175 (array!56744) Bool)

(assert (=> b!940717 (= e!528789 (and tp!62112 tp_is_empty!20387 (array_inv!21174 (_keys!10424 thiss!1141)) (array_inv!21175 (_values!5601 thiss!1141)) e!528788))))

(declare-fun b!940718 () Bool)

(declare-fun res!632623 () Bool)

(declare-fun e!528791 () Bool)

(assert (=> b!940718 (=> (not res!632623) (not e!528791))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!940718 (= res!632623 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940719 () Bool)

(declare-fun e!528792 () Bool)

(assert (=> b!940719 (= e!528791 e!528792)))

(declare-fun res!632624 () Bool)

(assert (=> b!940719 (=> (not res!632624) (not e!528792))))

(declare-datatypes ((SeekEntryResult!9001 0))(
  ( (MissingZero!9001 (index!38374 (_ BitVec 32))) (Found!9001 (index!38375 (_ BitVec 32))) (Intermediate!9001 (undefined!9813 Bool) (index!38376 (_ BitVec 32)) (x!80687 (_ BitVec 32))) (Undefined!9001) (MissingVacant!9001 (index!38377 (_ BitVec 32))) )
))
(declare-fun lt!424784 () SeekEntryResult!9001)

(assert (=> b!940719 (= res!632624 (is-Found!9001 lt!424784))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56746 (_ BitVec 32)) SeekEntryResult!9001)

(assert (=> b!940719 (= lt!424784 (seekEntry!0 key!756 (_keys!10424 thiss!1141) (mask!27120 thiss!1141)))))

(declare-fun b!940720 () Bool)

(declare-fun e!528787 () Bool)

(assert (=> b!940720 (= e!528787 tp_is_empty!20387)))

(declare-fun b!940721 () Bool)

(declare-fun mapRes!32371 () Bool)

(assert (=> b!940721 (= e!528788 (and e!528787 mapRes!32371))))

(declare-fun condMapEmpty!32371 () Bool)

(declare-fun mapDefault!32371 () ValueCell!9712)

