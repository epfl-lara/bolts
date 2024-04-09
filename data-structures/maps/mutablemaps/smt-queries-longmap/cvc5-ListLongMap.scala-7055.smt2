; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89420 () Bool)

(assert start!89420)

(declare-fun b!1024648 () Bool)

(declare-fun b_free!20383 () Bool)

(declare-fun b_next!20383 () Bool)

(assert (=> b!1024648 (= b_free!20383 (not b_next!20383))))

(declare-fun tp!72196 () Bool)

(declare-fun b_and!32647 () Bool)

(assert (=> b!1024648 (= tp!72196 b_and!32647)))

(declare-fun b!1024639 () Bool)

(declare-fun res!686113 () Bool)

(declare-fun e!577657 () Bool)

(assert (=> b!1024639 (=> res!686113 e!577657)))

(declare-datatypes ((List!21839 0))(
  ( (Nil!21836) (Cons!21835 (h!23033 (_ BitVec 64)) (t!30908 List!21839)) )
))
(declare-fun noDuplicate!1477 (List!21839) Bool)

(assert (=> b!1024639 (= res!686113 (not (noDuplicate!1477 Nil!21836)))))

(declare-fun b!1024640 () Bool)

(assert (=> b!1024640 (= e!577657 true)))

(declare-fun lt!450663 () Bool)

(declare-datatypes ((V!37011 0))(
  ( (V!37012 (val!12102 Int)) )
))
(declare-datatypes ((ValueCell!11348 0))(
  ( (ValueCellFull!11348 (v!14672 V!37011)) (EmptyCell!11348) )
))
(declare-datatypes ((array!64240 0))(
  ( (array!64241 (arr!30925 (Array (_ BitVec 32) (_ BitVec 64))) (size!31439 (_ BitVec 32))) )
))
(declare-datatypes ((array!64242 0))(
  ( (array!64243 (arr!30926 (Array (_ BitVec 32) ValueCell!11348)) (size!31440 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5290 0))(
  ( (LongMapFixedSize!5291 (defaultEntry!5997 Int) (mask!29648 (_ BitVec 32)) (extraKeys!5729 (_ BitVec 32)) (zeroValue!5833 V!37011) (minValue!5833 V!37011) (_size!2700 (_ BitVec 32)) (_keys!11141 array!64240) (_values!6020 array!64242) (_vacant!2700 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5290)

(declare-fun arrayNoDuplicates!0 (array!64240 (_ BitVec 32) List!21839) Bool)

(assert (=> b!1024640 (= lt!450663 (arrayNoDuplicates!0 (_keys!11141 thiss!1427) #b00000000000000000000000000000000 Nil!21836))))

(declare-fun mapIsEmpty!37583 () Bool)

(declare-fun mapRes!37583 () Bool)

(assert (=> mapIsEmpty!37583 mapRes!37583))

(declare-fun mapNonEmpty!37583 () Bool)

(declare-fun tp!72195 () Bool)

(declare-fun e!577658 () Bool)

(assert (=> mapNonEmpty!37583 (= mapRes!37583 (and tp!72195 e!577658))))

(declare-fun mapRest!37583 () (Array (_ BitVec 32) ValueCell!11348))

(declare-fun mapKey!37583 () (_ BitVec 32))

(declare-fun mapValue!37583 () ValueCell!11348)

(assert (=> mapNonEmpty!37583 (= (arr!30926 (_values!6020 thiss!1427)) (store mapRest!37583 mapKey!37583 mapValue!37583))))

(declare-fun b!1024642 () Bool)

(declare-fun res!686114 () Bool)

(assert (=> b!1024642 (=> res!686114 e!577657)))

(declare-fun contains!5967 (List!21839 (_ BitVec 64)) Bool)

(assert (=> b!1024642 (= res!686114 (contains!5967 Nil!21836 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024643 () Bool)

(declare-fun e!577659 () Bool)

(declare-fun e!577664 () Bool)

(assert (=> b!1024643 (= e!577659 (and e!577664 mapRes!37583))))

(declare-fun condMapEmpty!37583 () Bool)

(declare-fun mapDefault!37583 () ValueCell!11348)

