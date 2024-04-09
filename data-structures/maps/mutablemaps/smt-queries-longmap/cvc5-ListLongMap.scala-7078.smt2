; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89558 () Bool)

(assert start!89558)

(declare-fun b!1026712 () Bool)

(declare-fun b_free!20521 () Bool)

(declare-fun b_next!20521 () Bool)

(assert (=> b!1026712 (= b_free!20521 (not b_next!20521))))

(declare-fun tp!72609 () Bool)

(declare-fun b_and!32785 () Bool)

(assert (=> b!1026712 (= tp!72609 b_and!32785)))

(declare-fun mapIsEmpty!37790 () Bool)

(declare-fun mapRes!37790 () Bool)

(assert (=> mapIsEmpty!37790 mapRes!37790))

(declare-fun b!1026707 () Bool)

(declare-fun e!579316 () Bool)

(assert (=> b!1026707 (= e!579316 true)))

(declare-fun lt!451760 () Bool)

(declare-datatypes ((V!37195 0))(
  ( (V!37196 (val!12171 Int)) )
))
(declare-datatypes ((ValueCell!11417 0))(
  ( (ValueCellFull!11417 (v!14741 V!37195)) (EmptyCell!11417) )
))
(declare-datatypes ((array!64516 0))(
  ( (array!64517 (arr!31063 (Array (_ BitVec 32) (_ BitVec 64))) (size!31577 (_ BitVec 32))) )
))
(declare-datatypes ((array!64518 0))(
  ( (array!64519 (arr!31064 (Array (_ BitVec 32) ValueCell!11417)) (size!31578 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5428 0))(
  ( (LongMapFixedSize!5429 (defaultEntry!6066 Int) (mask!29763 (_ BitVec 32)) (extraKeys!5798 (_ BitVec 32)) (zeroValue!5902 V!37195) (minValue!5902 V!37195) (_size!2769 (_ BitVec 32)) (_keys!11210 array!64516) (_values!6089 array!64518) (_vacant!2769 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5428)

(declare-datatypes ((List!21894 0))(
  ( (Nil!21891) (Cons!21890 (h!23088 (_ BitVec 64)) (t!30963 List!21894)) )
))
(declare-fun arrayNoDuplicates!0 (array!64516 (_ BitVec 32) List!21894) Bool)

(assert (=> b!1026707 (= lt!451760 (arrayNoDuplicates!0 (_keys!11210 thiss!1427) #b00000000000000000000000000000000 Nil!21891))))

(declare-fun b!1026708 () Bool)

(declare-fun res!687354 () Bool)

(assert (=> b!1026708 (=> res!687354 e!579316)))

(assert (=> b!1026708 (= res!687354 (or (not (= (size!31578 (_values!6089 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29763 thiss!1427)))) (not (= (size!31577 (_keys!11210 thiss!1427)) (size!31578 (_values!6089 thiss!1427)))) (bvslt (mask!29763 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5798 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5798 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1026709 () Bool)

(declare-fun e!579317 () Bool)

(declare-fun tp_is_empty!24241 () Bool)

(assert (=> b!1026709 (= e!579317 tp_is_empty!24241)))

(declare-fun b!1026710 () Bool)

(declare-fun e!579315 () Bool)

(assert (=> b!1026710 (= e!579315 tp_is_empty!24241)))

(declare-fun mapNonEmpty!37790 () Bool)

(declare-fun tp!72610 () Bool)

(assert (=> mapNonEmpty!37790 (= mapRes!37790 (and tp!72610 e!579315))))

(declare-fun mapKey!37790 () (_ BitVec 32))

(declare-fun mapRest!37790 () (Array (_ BitVec 32) ValueCell!11417))

(declare-fun mapValue!37790 () ValueCell!11417)

(assert (=> mapNonEmpty!37790 (= (arr!31064 (_values!6089 thiss!1427)) (store mapRest!37790 mapKey!37790 mapValue!37790))))

(declare-fun e!579314 () Bool)

(declare-fun e!579318 () Bool)

(declare-fun array_inv!23905 (array!64516) Bool)

(declare-fun array_inv!23906 (array!64518) Bool)

(assert (=> b!1026712 (= e!579314 (and tp!72609 tp_is_empty!24241 (array_inv!23905 (_keys!11210 thiss!1427)) (array_inv!23906 (_values!6089 thiss!1427)) e!579318))))

(declare-fun b!1026713 () Bool)

(declare-fun res!687352 () Bool)

(declare-fun e!579313 () Bool)

(assert (=> b!1026713 (=> (not res!687352) (not e!579313))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026713 (= res!687352 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026714 () Bool)

(declare-fun e!579319 () Bool)

(assert (=> b!1026714 (= e!579313 e!579319)))

(declare-fun res!687355 () Bool)

(assert (=> b!1026714 (=> (not res!687355) (not e!579319))))

(declare-datatypes ((SeekEntryResult!9643 0))(
  ( (MissingZero!9643 (index!40942 (_ BitVec 32))) (Found!9643 (index!40943 (_ BitVec 32))) (Intermediate!9643 (undefined!10455 Bool) (index!40944 (_ BitVec 32)) (x!91332 (_ BitVec 32))) (Undefined!9643) (MissingVacant!9643 (index!40945 (_ BitVec 32))) )
))
(declare-fun lt!451764 () SeekEntryResult!9643)

(assert (=> b!1026714 (= res!687355 (is-Found!9643 lt!451764))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64516 (_ BitVec 32)) SeekEntryResult!9643)

(assert (=> b!1026714 (= lt!451764 (seekEntry!0 key!909 (_keys!11210 thiss!1427) (mask!29763 thiss!1427)))))

(declare-fun res!687356 () Bool)

(assert (=> start!89558 (=> (not res!687356) (not e!579313))))

(declare-fun valid!2013 (LongMapFixedSize!5428) Bool)

(assert (=> start!89558 (= res!687356 (valid!2013 thiss!1427))))

(assert (=> start!89558 e!579313))

(assert (=> start!89558 e!579314))

(assert (=> start!89558 true))

(declare-fun b!1026711 () Bool)

(assert (=> b!1026711 (= e!579318 (and e!579317 mapRes!37790))))

(declare-fun condMapEmpty!37790 () Bool)

(declare-fun mapDefault!37790 () ValueCell!11417)

