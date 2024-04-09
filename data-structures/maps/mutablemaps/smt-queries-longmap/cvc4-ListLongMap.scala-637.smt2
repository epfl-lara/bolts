; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16186 () Bool)

(assert start!16186)

(declare-fun b!161223 () Bool)

(declare-fun b_free!3635 () Bool)

(declare-fun b_next!3635 () Bool)

(assert (=> b!161223 (= b_free!3635 (not b_next!3635))))

(declare-fun tp!13474 () Bool)

(declare-fun b_and!10067 () Bool)

(assert (=> b!161223 (= tp!13474 b_and!10067)))

(declare-fun b!161217 () Bool)

(declare-datatypes ((Unit!5000 0))(
  ( (Unit!5001) )
))
(declare-fun e!105353 () Unit!5000)

(declare-fun Unit!5002 () Unit!5000)

(assert (=> b!161217 (= e!105353 Unit!5002)))

(declare-fun lt!82196 () Unit!5000)

(declare-datatypes ((V!4229 0))(
  ( (V!4230 (val!1763 Int)) )
))
(declare-datatypes ((ValueCell!1375 0))(
  ( (ValueCellFull!1375 (v!3624 V!4229)) (EmptyCell!1375) )
))
(declare-datatypes ((array!5952 0))(
  ( (array!5953 (arr!2820 (Array (_ BitVec 32) (_ BitVec 64))) (size!3104 (_ BitVec 32))) )
))
(declare-datatypes ((array!5954 0))(
  ( (array!5955 (arr!2821 (Array (_ BitVec 32) ValueCell!1375)) (size!3105 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1658 0))(
  ( (LongMapFixedSize!1659 (defaultEntry!3271 Int) (mask!7857 (_ BitVec 32)) (extraKeys!3012 (_ BitVec 32)) (zeroValue!3114 V!4229) (minValue!3114 V!4229) (_size!878 (_ BitVec 32)) (_keys!5072 array!5952) (_values!3254 array!5954) (_vacant!878 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1658)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!74 (array!5952 array!5954 (_ BitVec 32) (_ BitVec 32) V!4229 V!4229 (_ BitVec 64) Int) Unit!5000)

(assert (=> b!161217 (= lt!82196 (lemmaInListMapThenSeekEntryOrOpenFindsIt!74 (_keys!5072 thiss!1248) (_values!3254 thiss!1248) (mask!7857 thiss!1248) (extraKeys!3012 thiss!1248) (zeroValue!3114 thiss!1248) (minValue!3114 thiss!1248) key!828 (defaultEntry!3271 thiss!1248)))))

(assert (=> b!161217 false))

(declare-fun b!161218 () Bool)

(declare-fun res!76462 () Bool)

(declare-fun e!105355 () Bool)

(assert (=> b!161218 (=> (not res!76462) (not e!105355))))

(declare-datatypes ((SeekEntryResult!356 0))(
  ( (MissingZero!356 (index!3592 (_ BitVec 32))) (Found!356 (index!3593 (_ BitVec 32))) (Intermediate!356 (undefined!1168 Bool) (index!3594 (_ BitVec 32)) (x!17796 (_ BitVec 32))) (Undefined!356) (MissingVacant!356 (index!3595 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5952 (_ BitVec 32)) SeekEntryResult!356)

(assert (=> b!161218 (= res!76462 (is-Undefined!356 (seekEntryOrOpen!0 key!828 (_keys!5072 thiss!1248) (mask!7857 thiss!1248))))))

(declare-fun res!76463 () Bool)

(assert (=> start!16186 (=> (not res!76463) (not e!105355))))

(declare-fun valid!753 (LongMapFixedSize!1658) Bool)

(assert (=> start!16186 (= res!76463 (valid!753 thiss!1248))))

(assert (=> start!16186 e!105355))

(declare-fun e!105351 () Bool)

(assert (=> start!16186 e!105351))

(assert (=> start!16186 true))

(declare-fun b!161219 () Bool)

(declare-fun res!76461 () Bool)

(assert (=> b!161219 (=> (not res!76461) (not e!105355))))

(assert (=> b!161219 (= res!76461 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161220 () Bool)

(declare-fun e!105354 () Bool)

(declare-fun tp_is_empty!3437 () Bool)

(assert (=> b!161220 (= e!105354 tp_is_empty!3437)))

(declare-fun b!161221 () Bool)

(declare-fun e!105352 () Bool)

(assert (=> b!161221 (= e!105352 tp_is_empty!3437)))

(declare-fun mapIsEmpty!5843 () Bool)

(declare-fun mapRes!5843 () Bool)

(assert (=> mapIsEmpty!5843 mapRes!5843))

(declare-fun b!161222 () Bool)

(assert (=> b!161222 (= e!105355 false)))

(declare-fun lt!82195 () Unit!5000)

(assert (=> b!161222 (= lt!82195 e!105353)))

(declare-fun c!29922 () Bool)

(declare-datatypes ((tuple2!2936 0))(
  ( (tuple2!2937 (_1!1478 (_ BitVec 64)) (_2!1478 V!4229)) )
))
(declare-datatypes ((List!1990 0))(
  ( (Nil!1987) (Cons!1986 (h!2599 tuple2!2936) (t!6800 List!1990)) )
))
(declare-datatypes ((ListLongMap!1945 0))(
  ( (ListLongMap!1946 (toList!988 List!1990)) )
))
(declare-fun contains!1018 (ListLongMap!1945 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!648 (array!5952 array!5954 (_ BitVec 32) (_ BitVec 32) V!4229 V!4229 (_ BitVec 32) Int) ListLongMap!1945)

(assert (=> b!161222 (= c!29922 (contains!1018 (getCurrentListMap!648 (_keys!5072 thiss!1248) (_values!3254 thiss!1248) (mask!7857 thiss!1248) (extraKeys!3012 thiss!1248) (zeroValue!3114 thiss!1248) (minValue!3114 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3271 thiss!1248)) key!828))))

(declare-fun e!105350 () Bool)

(declare-fun array_inv!1787 (array!5952) Bool)

(declare-fun array_inv!1788 (array!5954) Bool)

(assert (=> b!161223 (= e!105351 (and tp!13474 tp_is_empty!3437 (array_inv!1787 (_keys!5072 thiss!1248)) (array_inv!1788 (_values!3254 thiss!1248)) e!105350))))

(declare-fun b!161224 () Bool)

(assert (=> b!161224 (= e!105350 (and e!105352 mapRes!5843))))

(declare-fun condMapEmpty!5843 () Bool)

(declare-fun mapDefault!5843 () ValueCell!1375)

