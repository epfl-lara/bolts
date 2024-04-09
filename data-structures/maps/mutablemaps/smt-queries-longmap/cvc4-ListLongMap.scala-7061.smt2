; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89460 () Bool)

(assert start!89460)

(declare-fun b!1025301 () Bool)

(declare-fun b_free!20423 () Bool)

(declare-fun b_next!20423 () Bool)

(assert (=> b!1025301 (= b_free!20423 (not b_next!20423))))

(declare-fun tp!72316 () Bool)

(declare-fun b_and!32687 () Bool)

(assert (=> b!1025301 (= tp!72316 b_and!32687)))

(declare-fun b!1025299 () Bool)

(declare-fun res!686535 () Bool)

(declare-fun e!578138 () Bool)

(assert (=> b!1025299 (=> res!686535 e!578138)))

(declare-datatypes ((V!37063 0))(
  ( (V!37064 (val!12122 Int)) )
))
(declare-datatypes ((ValueCell!11368 0))(
  ( (ValueCellFull!11368 (v!14692 V!37063)) (EmptyCell!11368) )
))
(declare-datatypes ((array!64320 0))(
  ( (array!64321 (arr!30965 (Array (_ BitVec 32) (_ BitVec 64))) (size!31479 (_ BitVec 32))) )
))
(declare-datatypes ((array!64322 0))(
  ( (array!64323 (arr!30966 (Array (_ BitVec 32) ValueCell!11368)) (size!31480 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5330 0))(
  ( (LongMapFixedSize!5331 (defaultEntry!6017 Int) (mask!29680 (_ BitVec 32)) (extraKeys!5749 (_ BitVec 32)) (zeroValue!5853 V!37063) (minValue!5853 V!37063) (_size!2720 (_ BitVec 32)) (_keys!11161 array!64320) (_values!6040 array!64322) (_vacant!2720 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5330)

(declare-datatypes ((SeekEntryResult!9606 0))(
  ( (MissingZero!9606 (index!40794 (_ BitVec 32))) (Found!9606 (index!40795 (_ BitVec 32))) (Intermediate!9606 (undefined!10418 Bool) (index!40796 (_ BitVec 32)) (x!91159 (_ BitVec 32))) (Undefined!9606) (MissingVacant!9606 (index!40797 (_ BitVec 32))) )
))
(declare-fun lt!450880 () SeekEntryResult!9606)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025299 (= res!686535 (not (validKeyInArray!0 (select (arr!30965 (_keys!11161 thiss!1427)) (index!40795 lt!450880)))))))

(declare-fun res!686536 () Bool)

(declare-fun e!578140 () Bool)

(assert (=> start!89460 (=> (not res!686536) (not e!578140))))

(declare-fun valid!1979 (LongMapFixedSize!5330) Bool)

(assert (=> start!89460 (= res!686536 (valid!1979 thiss!1427))))

(assert (=> start!89460 e!578140))

(declare-fun e!578142 () Bool)

(assert (=> start!89460 e!578142))

(assert (=> start!89460 true))

(declare-fun b!1025300 () Bool)

(declare-fun res!686537 () Bool)

(assert (=> b!1025300 (=> res!686537 e!578138)))

(declare-datatypes ((List!21858 0))(
  ( (Nil!21855) (Cons!21854 (h!23052 (_ BitVec 64)) (t!30927 List!21858)) )
))
(declare-fun arrayNoDuplicates!0 (array!64320 (_ BitVec 32) List!21858) Bool)

(assert (=> b!1025300 (= res!686537 (not (arrayNoDuplicates!0 (_keys!11161 thiss!1427) #b00000000000000000000000000000000 Nil!21855)))))

(declare-fun tp_is_empty!24143 () Bool)

(declare-fun e!578143 () Bool)

(declare-fun array_inv!23837 (array!64320) Bool)

(declare-fun array_inv!23838 (array!64322) Bool)

(assert (=> b!1025301 (= e!578142 (and tp!72316 tp_is_empty!24143 (array_inv!23837 (_keys!11161 thiss!1427)) (array_inv!23838 (_values!6040 thiss!1427)) e!578143))))

(declare-fun b!1025302 () Bool)

(declare-fun res!686533 () Bool)

(assert (=> b!1025302 (=> res!686533 e!578138)))

(assert (=> b!1025302 (= res!686533 (or (not (= (size!31479 (_keys!11161 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29680 thiss!1427)))) (bvslt (index!40795 lt!450880) #b00000000000000000000000000000000) (bvsge (index!40795 lt!450880) (size!31479 (_keys!11161 thiss!1427)))))))

(declare-fun b!1025303 () Bool)

(declare-fun e!578137 () Bool)

(declare-fun mapRes!37643 () Bool)

(assert (=> b!1025303 (= e!578143 (and e!578137 mapRes!37643))))

(declare-fun condMapEmpty!37643 () Bool)

(declare-fun mapDefault!37643 () ValueCell!11368)

