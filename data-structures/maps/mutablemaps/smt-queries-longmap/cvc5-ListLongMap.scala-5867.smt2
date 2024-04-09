; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75760 () Bool)

(assert start!75760)

(declare-fun b!890321 () Bool)

(declare-fun b_free!15703 () Bool)

(declare-fun b_next!15703 () Bool)

(assert (=> b!890321 (= b_free!15703 (not b_next!15703))))

(declare-fun tp!55079 () Bool)

(declare-fun b_and!25961 () Bool)

(assert (=> b!890321 (= tp!55079 b_and!25961)))

(declare-fun mapNonEmpty!28601 () Bool)

(declare-fun mapRes!28601 () Bool)

(declare-fun tp!55078 () Bool)

(declare-fun e!496603 () Bool)

(assert (=> mapNonEmpty!28601 (= mapRes!28601 (and tp!55078 e!496603))))

(declare-datatypes ((array!52028 0))(
  ( (array!52029 (arr!25016 (Array (_ BitVec 32) (_ BitVec 64))) (size!25461 (_ BitVec 32))) )
))
(declare-datatypes ((V!29007 0))(
  ( (V!29008 (val!9066 Int)) )
))
(declare-datatypes ((ValueCell!8534 0))(
  ( (ValueCellFull!8534 (v!11538 V!29007)) (EmptyCell!8534) )
))
(declare-datatypes ((array!52030 0))(
  ( (array!52031 (arr!25017 (Array (_ BitVec 32) ValueCell!8534)) (size!25462 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4084 0))(
  ( (LongMapFixedSize!4085 (defaultEntry!5239 Int) (mask!25707 (_ BitVec 32)) (extraKeys!4933 (_ BitVec 32)) (zeroValue!5037 V!29007) (minValue!5037 V!29007) (_size!2097 (_ BitVec 32)) (_keys!9918 array!52028) (_values!5224 array!52030) (_vacant!2097 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4084)

(declare-fun mapKey!28601 () (_ BitVec 32))

(declare-fun mapRest!28601 () (Array (_ BitVec 32) ValueCell!8534))

(declare-fun mapValue!28601 () ValueCell!8534)

(assert (=> mapNonEmpty!28601 (= (arr!25017 (_values!5224 thiss!1181)) (store mapRest!28601 mapKey!28601 mapValue!28601))))

(declare-fun mapIsEmpty!28601 () Bool)

(assert (=> mapIsEmpty!28601 mapRes!28601))

(declare-fun b!890315 () Bool)

(declare-fun e!496597 () Bool)

(declare-fun e!496604 () Bool)

(assert (=> b!890315 (= e!496597 (not e!496604))))

(declare-fun res!603353 () Bool)

(assert (=> b!890315 (=> res!603353 e!496604)))

(declare-datatypes ((SeekEntryResult!8794 0))(
  ( (MissingZero!8794 (index!37546 (_ BitVec 32))) (Found!8794 (index!37547 (_ BitVec 32))) (Intermediate!8794 (undefined!9606 Bool) (index!37548 (_ BitVec 32)) (x!75635 (_ BitVec 32))) (Undefined!8794) (MissingVacant!8794 (index!37549 (_ BitVec 32))) )
))
(declare-fun lt!402255 () SeekEntryResult!8794)

(assert (=> b!890315 (= res!603353 (not (is-Found!8794 lt!402255)))))

(declare-fun e!496601 () Bool)

(assert (=> b!890315 e!496601))

(declare-fun res!603354 () Bool)

(assert (=> b!890315 (=> res!603354 e!496601)))

(assert (=> b!890315 (= res!603354 (not (is-Found!8794 lt!402255)))))

(declare-datatypes ((Unit!30273 0))(
  ( (Unit!30274) )
))
(declare-fun lt!402253 () Unit!30273)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!16 (array!52028 array!52030 (_ BitVec 32) (_ BitVec 32) V!29007 V!29007 (_ BitVec 64)) Unit!30273)

(assert (=> b!890315 (= lt!402253 (lemmaSeekEntryGivesInRangeIndex!16 (_keys!9918 thiss!1181) (_values!5224 thiss!1181) (mask!25707 thiss!1181) (extraKeys!4933 thiss!1181) (zeroValue!5037 thiss!1181) (minValue!5037 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52028 (_ BitVec 32)) SeekEntryResult!8794)

(assert (=> b!890315 (= lt!402255 (seekEntry!0 key!785 (_keys!9918 thiss!1181) (mask!25707 thiss!1181)))))

(declare-fun b!890316 () Bool)

(declare-fun res!603351 () Bool)

(declare-fun e!496598 () Bool)

(assert (=> b!890316 (=> res!603351 e!496598)))

(assert (=> b!890316 (= res!603351 (or (not (= (size!25462 (_values!5224 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25707 thiss!1181)))) (not (= (size!25461 (_keys!9918 thiss!1181)) (size!25462 (_values!5224 thiss!1181)))) (bvslt (mask!25707 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4933 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4933 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890317 () Bool)

(declare-fun res!603355 () Bool)

(assert (=> b!890317 (=> (not res!603355) (not e!496597))))

(assert (=> b!890317 (= res!603355 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890318 () Bool)

(declare-fun tp_is_empty!18031 () Bool)

(assert (=> b!890318 (= e!496603 tp_is_empty!18031)))

(declare-fun b!890319 () Bool)

(assert (=> b!890319 (= e!496604 e!496598)))

(declare-fun res!603356 () Bool)

(assert (=> b!890319 (=> res!603356 e!496598)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890319 (= res!603356 (not (validMask!0 (mask!25707 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890319 (arrayContainsKey!0 (_keys!9918 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402254 () Unit!30273)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52028 (_ BitVec 64) (_ BitVec 32)) Unit!30273)

(assert (=> b!890319 (= lt!402254 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9918 thiss!1181) key!785 (index!37547 lt!402255)))))

(declare-fun b!890320 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890320 (= e!496601 (inRange!0 (index!37547 lt!402255) (mask!25707 thiss!1181)))))

(declare-fun res!603352 () Bool)

(assert (=> start!75760 (=> (not res!603352) (not e!496597))))

(declare-fun valid!1575 (LongMapFixedSize!4084) Bool)

(assert (=> start!75760 (= res!603352 (valid!1575 thiss!1181))))

(assert (=> start!75760 e!496597))

(declare-fun e!496596 () Bool)

(assert (=> start!75760 e!496596))

(assert (=> start!75760 true))

(declare-fun e!496600 () Bool)

(declare-fun array_inv!19640 (array!52028) Bool)

(declare-fun array_inv!19641 (array!52030) Bool)

(assert (=> b!890321 (= e!496596 (and tp!55079 tp_is_empty!18031 (array_inv!19640 (_keys!9918 thiss!1181)) (array_inv!19641 (_values!5224 thiss!1181)) e!496600))))

(declare-fun b!890322 () Bool)

(declare-fun res!603357 () Bool)

(assert (=> b!890322 (=> res!603357 e!496598)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52028 (_ BitVec 32)) Bool)

(assert (=> b!890322 (= res!603357 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9918 thiss!1181) (mask!25707 thiss!1181))))))

(declare-fun b!890323 () Bool)

(declare-fun e!496602 () Bool)

(assert (=> b!890323 (= e!496602 tp_is_empty!18031)))

(declare-fun b!890324 () Bool)

(assert (=> b!890324 (= e!496600 (and e!496602 mapRes!28601))))

(declare-fun condMapEmpty!28601 () Bool)

(declare-fun mapDefault!28601 () ValueCell!8534)

