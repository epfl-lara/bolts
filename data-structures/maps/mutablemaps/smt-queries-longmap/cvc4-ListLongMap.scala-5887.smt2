; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75884 () Bool)

(assert start!75884)

(declare-fun b!892530 () Bool)

(declare-fun b_free!15827 () Bool)

(declare-fun b_next!15827 () Bool)

(assert (=> b!892530 (= b_free!15827 (not b_next!15827))))

(declare-fun tp!55450 () Bool)

(declare-fun b_and!26095 () Bool)

(assert (=> b!892530 (= tp!55450 b_and!26095)))

(declare-fun b!892521 () Bool)

(declare-fun res!604739 () Bool)

(declare-fun e!498326 () Bool)

(assert (=> b!892521 (=> (not res!604739) (not e!498326))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!892521 (= res!604739 (not (= key!785 (bvneg key!785))))))

(declare-fun bm!39542 () Bool)

(declare-datatypes ((V!29171 0))(
  ( (V!29172 (val!9128 Int)) )
))
(declare-fun call!39545 () V!29171)

(declare-fun call!39546 () V!29171)

(assert (=> bm!39542 (= call!39545 call!39546)))

(declare-fun b!892522 () Bool)

(declare-fun e!498332 () Bool)

(declare-datatypes ((array!52276 0))(
  ( (array!52277 (arr!25140 (Array (_ BitVec 32) (_ BitVec 64))) (size!25585 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8596 0))(
  ( (ValueCellFull!8596 (v!11600 V!29171)) (EmptyCell!8596) )
))
(declare-datatypes ((array!52278 0))(
  ( (array!52279 (arr!25141 (Array (_ BitVec 32) ValueCell!8596)) (size!25586 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4208 0))(
  ( (LongMapFixedSize!4209 (defaultEntry!5301 Int) (mask!25809 (_ BitVec 32)) (extraKeys!4995 (_ BitVec 32)) (zeroValue!5099 V!29171) (minValue!5099 V!29171) (_size!2159 (_ BitVec 32)) (_keys!9980 array!52276) (_values!5286 array!52278) (_vacant!2159 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4208)

(assert (=> b!892522 (= e!498332 (= call!39546 (zeroValue!5099 thiss!1181)))))

(declare-fun b!892523 () Bool)

(declare-fun e!498324 () Bool)

(declare-fun tp_is_empty!18155 () Bool)

(assert (=> b!892523 (= e!498324 tp_is_empty!18155)))

(declare-datatypes ((SeekEntryResult!8845 0))(
  ( (MissingZero!8845 (index!37750 (_ BitVec 32))) (Found!8845 (index!37751 (_ BitVec 32))) (Intermediate!8845 (undefined!9657 Bool) (index!37752 (_ BitVec 32)) (x!75858 (_ BitVec 32))) (Undefined!8845) (MissingVacant!8845 (index!37753 (_ BitVec 32))) )
))
(declare-fun lt!403241 () SeekEntryResult!8845)

(declare-fun b!892525 () Bool)

(declare-fun e!498325 () Bool)

(declare-fun get!13241 (ValueCell!8596 V!29171) V!29171)

(declare-fun dynLambda!1292 (Int (_ BitVec 64)) V!29171)

(assert (=> b!892525 (= e!498325 (= call!39545 (get!13241 (select (arr!25141 (_values!5286 thiss!1181)) (index!37751 lt!403241)) (dynLambda!1292 (defaultEntry!5301 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!28787 () Bool)

(declare-fun mapRes!28787 () Bool)

(declare-fun tp!55451 () Bool)

(assert (=> mapNonEmpty!28787 (= mapRes!28787 (and tp!55451 e!498324))))

(declare-fun mapRest!28787 () (Array (_ BitVec 32) ValueCell!8596))

(declare-fun mapValue!28787 () ValueCell!8596)

(declare-fun mapKey!28787 () (_ BitVec 32))

(assert (=> mapNonEmpty!28787 (= (arr!25141 (_values!5286 thiss!1181)) (store mapRest!28787 mapKey!28787 mapValue!28787))))

(declare-fun b!892526 () Bool)

(declare-fun e!498321 () Bool)

(assert (=> b!892526 (= e!498321 tp_is_empty!18155)))

(declare-fun b!892527 () Bool)

(declare-fun e!498327 () Bool)

(assert (=> b!892527 (= e!498327 e!498325)))

(declare-fun c!93899 () Bool)

(assert (=> b!892527 (= c!93899 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!28787 () Bool)

(assert (=> mapIsEmpty!28787 mapRes!28787))

(declare-fun b!892528 () Bool)

(declare-fun res!604736 () Bool)

(declare-fun e!498328 () Bool)

(assert (=> b!892528 (=> (not res!604736) (not e!498328))))

(assert (=> b!892528 (= res!604736 (not (= (bvand (extraKeys!4995 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!892528 (= e!498325 e!498328)))

(declare-fun b!892529 () Bool)

(assert (=> b!892529 (= e!498327 e!498332)))

(declare-fun res!604738 () Bool)

(assert (=> b!892529 (= res!604738 (not (= (bvand (extraKeys!4995 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!892529 (=> (not res!604738) (not e!498332))))

(declare-fun e!498323 () Bool)

(declare-fun e!498329 () Bool)

(declare-fun array_inv!19724 (array!52276) Bool)

(declare-fun array_inv!19725 (array!52278) Bool)

(assert (=> b!892530 (= e!498329 (and tp!55450 tp_is_empty!18155 (array_inv!19724 (_keys!9980 thiss!1181)) (array_inv!19725 (_values!5286 thiss!1181)) e!498323))))

(declare-fun b!892531 () Bool)

(assert (=> b!892531 (= e!498328 (= call!39545 (minValue!5099 thiss!1181)))))

(declare-fun b!892524 () Bool)

(declare-fun e!498322 () Bool)

(assert (=> b!892524 (= e!498326 (not e!498322))))

(declare-fun res!604740 () Bool)

(assert (=> b!892524 (=> res!604740 e!498322)))

(assert (=> b!892524 (= res!604740 (not (is-Found!8845 lt!403241)))))

(declare-fun e!498330 () Bool)

(assert (=> b!892524 e!498330))

(declare-fun res!604735 () Bool)

(assert (=> b!892524 (=> res!604735 e!498330)))

(assert (=> b!892524 (= res!604735 (not (is-Found!8845 lt!403241)))))

(declare-datatypes ((Unit!30371 0))(
  ( (Unit!30372) )
))
(declare-fun lt!403238 () Unit!30371)

(declare-fun lemmaSeekEntryGivesInRangeIndex!60 (array!52276 array!52278 (_ BitVec 32) (_ BitVec 32) V!29171 V!29171 (_ BitVec 64)) Unit!30371)

(assert (=> b!892524 (= lt!403238 (lemmaSeekEntryGivesInRangeIndex!60 (_keys!9980 thiss!1181) (_values!5286 thiss!1181) (mask!25809 thiss!1181) (extraKeys!4995 thiss!1181) (zeroValue!5099 thiss!1181) (minValue!5099 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52276 (_ BitVec 32)) SeekEntryResult!8845)

(assert (=> b!892524 (= lt!403241 (seekEntry!0 key!785 (_keys!9980 thiss!1181) (mask!25809 thiss!1181)))))

(declare-fun res!604737 () Bool)

(assert (=> start!75884 (=> (not res!604737) (not e!498326))))

(declare-fun valid!1616 (LongMapFixedSize!4208) Bool)

(assert (=> start!75884 (= res!604737 (valid!1616 thiss!1181))))

(assert (=> start!75884 e!498326))

(assert (=> start!75884 e!498329))

(assert (=> start!75884 true))

(declare-fun b!892532 () Bool)

(assert (=> b!892532 (= e!498323 (and e!498321 mapRes!28787))))

(declare-fun condMapEmpty!28787 () Bool)

(declare-fun mapDefault!28787 () ValueCell!8596)

