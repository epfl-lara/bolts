; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35158 () Bool)

(assert start!35158)

(declare-fun b_free!7769 () Bool)

(declare-fun b_next!7769 () Bool)

(assert (=> start!35158 (= b_free!7769 (not b_next!7769))))

(declare-fun tp!26894 () Bool)

(declare-fun b_and!15023 () Bool)

(assert (=> start!35158 (= tp!26894 b_and!15023)))

(declare-fun b!352242 () Bool)

(declare-fun res!195400 () Bool)

(declare-fun e!215712 () Bool)

(assert (=> b!352242 (=> (not res!195400) (not e!215712))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352242 (= res!195400 (validKeyInArray!0 k!1348))))

(declare-fun b!352243 () Bool)

(declare-fun e!215715 () Bool)

(declare-fun tp_is_empty!7721 () Bool)

(assert (=> b!352243 (= e!215715 tp_is_empty!7721)))

(declare-fun b!352244 () Bool)

(declare-fun res!195402 () Bool)

(assert (=> b!352244 (=> (not res!195402) (not e!215712))))

(declare-datatypes ((array!18989 0))(
  ( (array!18990 (arr!8994 (Array (_ BitVec 32) (_ BitVec 64))) (size!9346 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18989)

(declare-datatypes ((List!5267 0))(
  ( (Nil!5264) (Cons!5263 (h!6119 (_ BitVec 64)) (t!10419 List!5267)) )
))
(declare-fun arrayNoDuplicates!0 (array!18989 (_ BitVec 32) List!5267) Bool)

(assert (=> b!352244 (= res!195402 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5264))))

(declare-fun b!352245 () Bool)

(declare-datatypes ((Unit!10902 0))(
  ( (Unit!10903) )
))
(declare-fun e!215716 () Unit!10902)

(declare-fun Unit!10904 () Unit!10902)

(assert (=> b!352245 (= e!215716 Unit!10904)))

(declare-fun b!352246 () Bool)

(declare-fun e!215719 () Bool)

(assert (=> b!352246 (= e!215712 e!215719)))

(declare-fun res!195403 () Bool)

(assert (=> b!352246 (=> (not res!195403) (not e!215719))))

(declare-datatypes ((SeekEntryResult!3459 0))(
  ( (MissingZero!3459 (index!16015 (_ BitVec 32))) (Found!3459 (index!16016 (_ BitVec 32))) (Intermediate!3459 (undefined!4271 Bool) (index!16017 (_ BitVec 32)) (x!35044 (_ BitVec 32))) (Undefined!3459) (MissingVacant!3459 (index!16018 (_ BitVec 32))) )
))
(declare-fun lt!165175 () SeekEntryResult!3459)

(assert (=> b!352246 (= res!195403 (and (not (is-Found!3459 lt!165175)) (not (is-MissingZero!3459 lt!165175)) (is-MissingVacant!3459 lt!165175)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18989 (_ BitVec 32)) SeekEntryResult!3459)

(assert (=> b!352246 (= lt!165175 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!352247 () Bool)

(declare-fun e!215717 () Bool)

(assert (=> b!352247 (= e!215717 (not (= (select (arr!8994 _keys!1895) (index!16018 lt!165175)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!13062 () Bool)

(declare-fun mapRes!13062 () Bool)

(declare-fun tp!26895 () Bool)

(declare-fun e!215720 () Bool)

(assert (=> mapNonEmpty!13062 (= mapRes!13062 (and tp!26895 e!215720))))

(declare-fun mapKey!13062 () (_ BitVec 32))

(declare-datatypes ((V!11271 0))(
  ( (V!11272 (val!3905 Int)) )
))
(declare-datatypes ((ValueCell!3517 0))(
  ( (ValueCellFull!3517 (v!6091 V!11271)) (EmptyCell!3517) )
))
(declare-fun mapRest!13062 () (Array (_ BitVec 32) ValueCell!3517))

(declare-datatypes ((array!18991 0))(
  ( (array!18992 (arr!8995 (Array (_ BitVec 32) ValueCell!3517)) (size!9347 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18991)

(declare-fun mapValue!13062 () ValueCell!3517)

(assert (=> mapNonEmpty!13062 (= (arr!8995 _values!1525) (store mapRest!13062 mapKey!13062 mapValue!13062))))

(declare-fun mapIsEmpty!13062 () Bool)

(assert (=> mapIsEmpty!13062 mapRes!13062))

(declare-fun b!352249 () Bool)

(assert (=> b!352249 (= e!215720 tp_is_empty!7721)))

(declare-fun b!352250 () Bool)

(declare-fun e!215714 () Bool)

(assert (=> b!352250 (= e!215714 e!215717)))

(declare-fun res!195401 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!352250 (= res!195401 (not (inRange!0 (index!16018 lt!165175) mask!2385)))))

(assert (=> b!352250 (=> res!195401 e!215717)))

(declare-fun b!352251 () Bool)

(declare-fun res!195399 () Bool)

(assert (=> b!352251 (=> (not res!195399) (not e!215712))))

(declare-fun zeroValue!1467 () V!11271)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11271)

(declare-datatypes ((tuple2!5630 0))(
  ( (tuple2!5631 (_1!2825 (_ BitVec 64)) (_2!2825 V!11271)) )
))
(declare-datatypes ((List!5268 0))(
  ( (Nil!5265) (Cons!5264 (h!6120 tuple2!5630) (t!10420 List!5268)) )
))
(declare-datatypes ((ListLongMap!4557 0))(
  ( (ListLongMap!4558 (toList!2294 List!5268)) )
))
(declare-fun contains!2362 (ListLongMap!4557 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1811 (array!18989 array!18991 (_ BitVec 32) (_ BitVec 32) V!11271 V!11271 (_ BitVec 32) Int) ListLongMap!4557)

(assert (=> b!352251 (= res!195399 (not (contains!2362 (getCurrentListMap!1811 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!352252 () Bool)

(declare-fun res!195407 () Bool)

(assert (=> b!352252 (=> (not res!195407) (not e!215712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18989 (_ BitVec 32)) Bool)

(assert (=> b!352252 (= res!195407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!352253 () Bool)

(declare-fun e!215713 () Bool)

(assert (=> b!352253 (= e!215719 e!215713)))

(declare-fun res!195406 () Bool)

(assert (=> b!352253 (=> (not res!195406) (not e!215713))))

(declare-fun lt!165174 () Bool)

(assert (=> b!352253 (= res!195406 (not lt!165174))))

(declare-fun lt!165177 () Unit!10902)

(assert (=> b!352253 (= lt!165177 e!215716)))

(declare-fun c!53501 () Bool)

(assert (=> b!352253 (= c!53501 lt!165174)))

(declare-fun arrayContainsKey!0 (array!18989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!352253 (= lt!165174 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!352254 () Bool)

(assert (=> b!352254 (= e!215714 (not (is-Undefined!3459 lt!165175)))))

(declare-fun b!352248 () Bool)

(declare-fun e!215718 () Bool)

(assert (=> b!352248 (= e!215718 (and e!215715 mapRes!13062))))

(declare-fun condMapEmpty!13062 () Bool)

(declare-fun mapDefault!13062 () ValueCell!3517)

