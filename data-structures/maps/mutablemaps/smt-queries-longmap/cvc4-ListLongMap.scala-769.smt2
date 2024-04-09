; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18114 () Bool)

(assert start!18114)

(declare-fun b!180251 () Bool)

(declare-fun b_free!4457 () Bool)

(declare-fun b_next!4457 () Bool)

(assert (=> b!180251 (= b_free!4457 (not b_next!4457))))

(declare-fun tp!16104 () Bool)

(declare-fun b_and!11009 () Bool)

(assert (=> b!180251 (= tp!16104 b_and!11009)))

(declare-fun b!180249 () Bool)

(declare-fun e!118759 () Bool)

(declare-fun e!118758 () Bool)

(assert (=> b!180249 (= e!118759 e!118758)))

(declare-datatypes ((V!5285 0))(
  ( (V!5286 (val!2159 Int)) )
))
(declare-datatypes ((tuple2!3362 0))(
  ( (tuple2!3363 (_1!1691 (_ BitVec 64)) (_2!1691 V!5285)) )
))
(declare-datatypes ((List!2314 0))(
  ( (Nil!2311) (Cons!2310 (h!2935 tuple2!3362) (t!7170 List!2314)) )
))
(declare-datatypes ((ListLongMap!2295 0))(
  ( (ListLongMap!2296 (toList!1163 List!2314)) )
))
(declare-fun lt!89070 () ListLongMap!2295)

(declare-fun call!18221 () ListLongMap!2295)

(assert (=> b!180249 (= lt!89070 call!18221)))

(declare-fun res!85396 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun contains!1232 (ListLongMap!2295 (_ BitVec 64)) Bool)

(assert (=> b!180249 (= res!85396 (not (contains!1232 lt!89070 key!828)))))

(assert (=> b!180249 (=> res!85396 e!118758)))

(declare-fun mapIsEmpty!7240 () Bool)

(declare-fun mapRes!7240 () Bool)

(assert (=> mapIsEmpty!7240 mapRes!7240))

(declare-fun b!180250 () Bool)

(declare-fun e!118761 () Bool)

(declare-fun e!118757 () Bool)

(assert (=> b!180250 (= e!118761 e!118757)))

(declare-fun res!85393 () Bool)

(assert (=> b!180250 (=> (not res!85393) (not e!118757))))

(declare-datatypes ((SeekEntryResult!602 0))(
  ( (MissingZero!602 (index!4577 (_ BitVec 32))) (Found!602 (index!4578 (_ BitVec 32))) (Intermediate!602 (undefined!1414 Bool) (index!4579 (_ BitVec 32)) (x!19714 (_ BitVec 32))) (Undefined!602) (MissingVacant!602 (index!4580 (_ BitVec 32))) )
))
(declare-fun lt!89069 () SeekEntryResult!602)

(assert (=> b!180250 (= res!85393 (and (not (is-Undefined!602 lt!89069)) (not (is-MissingVacant!602 lt!89069)) (is-MissingZero!602 lt!89069)))))

(declare-datatypes ((ValueCell!1771 0))(
  ( (ValueCellFull!1771 (v!4046 V!5285)) (EmptyCell!1771) )
))
(declare-datatypes ((array!7628 0))(
  ( (array!7629 (arr!3612 (Array (_ BitVec 32) (_ BitVec 64))) (size!3920 (_ BitVec 32))) )
))
(declare-datatypes ((array!7630 0))(
  ( (array!7631 (arr!3613 (Array (_ BitVec 32) ValueCell!1771)) (size!3921 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2450 0))(
  ( (LongMapFixedSize!2451 (defaultEntry!3701 Int) (mask!8699 (_ BitVec 32)) (extraKeys!3438 (_ BitVec 32)) (zeroValue!3542 V!5285) (minValue!3542 V!5285) (_size!1274 (_ BitVec 32)) (_keys!5593 array!7628) (_values!3684 array!7630) (_vacant!1274 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2450)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7628 (_ BitVec 32)) SeekEntryResult!602)

(assert (=> b!180250 (= lt!89069 (seekEntryOrOpen!0 key!828 (_keys!5593 thiss!1248) (mask!8699 thiss!1248)))))

(declare-fun e!118756 () Bool)

(declare-fun e!118755 () Bool)

(declare-fun tp_is_empty!4229 () Bool)

(declare-fun array_inv!2317 (array!7628) Bool)

(declare-fun array_inv!2318 (array!7630) Bool)

(assert (=> b!180251 (= e!118755 (and tp!16104 tp_is_empty!4229 (array_inv!2317 (_keys!5593 thiss!1248)) (array_inv!2318 (_values!3684 thiss!1248)) e!118756))))

(declare-fun bm!18217 () Bool)

(declare-datatypes ((tuple2!3364 0))(
  ( (tuple2!3365 (_1!1692 Bool) (_2!1692 LongMapFixedSize!2450)) )
))
(declare-fun lt!89068 () tuple2!3364)

(declare-fun map!1938 (LongMapFixedSize!2450) ListLongMap!2295)

(assert (=> bm!18217 (= call!18221 (map!1938 (_2!1692 lt!89068)))))

(declare-fun mapNonEmpty!7240 () Bool)

(declare-fun tp!16105 () Bool)

(declare-fun e!118762 () Bool)

(assert (=> mapNonEmpty!7240 (= mapRes!7240 (and tp!16105 e!118762))))

(declare-fun mapRest!7240 () (Array (_ BitVec 32) ValueCell!1771))

(declare-fun mapKey!7240 () (_ BitVec 32))

(declare-fun mapValue!7240 () ValueCell!1771)

(assert (=> mapNonEmpty!7240 (= (arr!3613 (_values!3684 thiss!1248)) (store mapRest!7240 mapKey!7240 mapValue!7240))))

(declare-fun b!180252 () Bool)

(assert (=> b!180252 (= e!118762 tp_is_empty!4229)))

(declare-fun b!180253 () Bool)

(declare-fun e!118760 () Bool)

(assert (=> b!180253 (= e!118757 e!118760)))

(declare-fun res!85394 () Bool)

(assert (=> b!180253 (=> res!85394 e!118760)))

(declare-fun valid!1010 (LongMapFixedSize!2450) Bool)

(assert (=> b!180253 (= res!85394 (not (valid!1010 (_2!1692 lt!89068))))))

(declare-fun v!309 () V!5285)

(declare-fun updateHelperNewKey!92 (LongMapFixedSize!2450 (_ BitVec 64) V!5285 (_ BitVec 32)) tuple2!3364)

(assert (=> b!180253 (= lt!89068 (updateHelperNewKey!92 thiss!1248 key!828 v!309 (index!4577 lt!89069)))))

(declare-fun res!85392 () Bool)

(assert (=> start!18114 (=> (not res!85392) (not e!118761))))

(assert (=> start!18114 (= res!85392 (valid!1010 thiss!1248))))

(assert (=> start!18114 e!118761))

(assert (=> start!18114 e!118755))

(assert (=> start!18114 true))

(assert (=> start!18114 tp_is_empty!4229))

(declare-fun b!180248 () Bool)

(declare-fun call!18220 () ListLongMap!2295)

(assert (=> b!180248 (= e!118759 (not (= call!18221 call!18220)))))

(declare-fun b!180254 () Bool)

(declare-fun res!85395 () Bool)

(assert (=> b!180254 (=> (not res!85395) (not e!118761))))

(assert (=> b!180254 (= res!85395 (not (= key!828 (bvneg key!828))))))

(declare-fun b!180255 () Bool)

(declare-fun +!263 (ListLongMap!2295 tuple2!3362) ListLongMap!2295)

(assert (=> b!180255 (= e!118758 (not (= lt!89070 (+!263 call!18220 (tuple2!3363 key!828 v!309)))))))

(declare-fun b!180256 () Bool)

(declare-fun e!118754 () Bool)

(assert (=> b!180256 (= e!118756 (and e!118754 mapRes!7240))))

(declare-fun condMapEmpty!7240 () Bool)

(declare-fun mapDefault!7240 () ValueCell!1771)

