; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91556 () Bool)

(assert start!91556)

(declare-fun b!1042447 () Bool)

(declare-fun b_free!21065 () Bool)

(declare-fun b_next!21065 () Bool)

(assert (=> b!1042447 (= b_free!21065 (not b_next!21065))))

(declare-fun tp!74422 () Bool)

(declare-fun b_and!33615 () Bool)

(assert (=> b!1042447 (= tp!74422 b_and!33615)))

(declare-fun b!1042439 () Bool)

(declare-fun e!590563 () Bool)

(declare-datatypes ((V!37919 0))(
  ( (V!37920 (val!12443 Int)) )
))
(declare-datatypes ((ValueCell!11689 0))(
  ( (ValueCellFull!11689 (v!15035 V!37919)) (EmptyCell!11689) )
))
(declare-datatypes ((array!65708 0))(
  ( (array!65709 (arr!31607 (Array (_ BitVec 32) (_ BitVec 64))) (size!32143 (_ BitVec 32))) )
))
(declare-datatypes ((array!65710 0))(
  ( (array!65711 (arr!31608 (Array (_ BitVec 32) ValueCell!11689)) (size!32144 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5972 0))(
  ( (LongMapFixedSize!5973 (defaultEntry!6368 Int) (mask!30426 (_ BitVec 32)) (extraKeys!6096 (_ BitVec 32)) (zeroValue!6202 V!37919) (minValue!6202 V!37919) (_size!3041 (_ BitVec 32)) (_keys!11615 array!65708) (_values!6391 array!65710) (_vacant!3041 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5972)

(declare-datatypes ((List!22102 0))(
  ( (Nil!22099) (Cons!22098 (h!23306 (_ BitVec 64)) (t!31323 List!22102)) )
))
(declare-fun arrayNoDuplicates!0 (array!65708 (_ BitVec 32) List!22102) Bool)

(assert (=> b!1042439 (= e!590563 (arrayNoDuplicates!0 (_keys!11615 thiss!1427) #b00000000000000000000000000000000 Nil!22099))))

(declare-fun b!1042440 () Bool)

(declare-fun e!590558 () Bool)

(declare-fun e!590562 () Bool)

(assert (=> b!1042440 (= e!590558 e!590562)))

(declare-fun res!694682 () Bool)

(assert (=> b!1042440 (=> (not res!694682) (not e!590562))))

(declare-datatypes ((SeekEntryResult!9818 0))(
  ( (MissingZero!9818 (index!41642 (_ BitVec 32))) (Found!9818 (index!41643 (_ BitVec 32))) (Intermediate!9818 (undefined!10630 Bool) (index!41644 (_ BitVec 32)) (x!93065 (_ BitVec 32))) (Undefined!9818) (MissingVacant!9818 (index!41645 (_ BitVec 32))) )
))
(declare-fun lt!459482 () SeekEntryResult!9818)

(assert (=> b!1042440 (= res!694682 (is-Found!9818 lt!459482))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65708 (_ BitVec 32)) SeekEntryResult!9818)

(assert (=> b!1042440 (= lt!459482 (seekEntry!0 key!909 (_keys!11615 thiss!1427) (mask!30426 thiss!1427)))))

(declare-fun res!694683 () Bool)

(assert (=> start!91556 (=> (not res!694683) (not e!590558))))

(declare-fun valid!2194 (LongMapFixedSize!5972) Bool)

(assert (=> start!91556 (= res!694683 (valid!2194 thiss!1427))))

(assert (=> start!91556 e!590558))

(declare-fun e!590559 () Bool)

(assert (=> start!91556 e!590559))

(assert (=> start!91556 true))

(declare-fun b!1042441 () Bool)

(declare-fun e!590560 () Bool)

(declare-fun e!590561 () Bool)

(declare-fun mapRes!38786 () Bool)

(assert (=> b!1042441 (= e!590560 (and e!590561 mapRes!38786))))

(declare-fun condMapEmpty!38786 () Bool)

(declare-fun mapDefault!38786 () ValueCell!11689)

