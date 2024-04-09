; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90796 () Bool)

(assert start!90796)

(declare-fun b!1037602 () Bool)

(declare-fun b_free!20911 () Bool)

(declare-fun b_next!20911 () Bool)

(assert (=> b!1037602 (= b_free!20911 (not b_next!20911))))

(declare-fun tp!73886 () Bool)

(declare-fun b_and!33461 () Bool)

(assert (=> b!1037602 (= tp!73886 b_and!33461)))

(declare-fun mapNonEmpty!38481 () Bool)

(declare-fun mapRes!38481 () Bool)

(declare-fun tp!73885 () Bool)

(declare-fun e!587025 () Bool)

(assert (=> mapNonEmpty!38481 (= mapRes!38481 (and tp!73885 e!587025))))

(declare-fun mapKey!38481 () (_ BitVec 32))

(declare-datatypes ((V!37715 0))(
  ( (V!37716 (val!12366 Int)) )
))
(declare-datatypes ((ValueCell!11612 0))(
  ( (ValueCellFull!11612 (v!14950 V!37715)) (EmptyCell!11612) )
))
(declare-datatypes ((array!65354 0))(
  ( (array!65355 (arr!31453 (Array (_ BitVec 32) (_ BitVec 64))) (size!31984 (_ BitVec 32))) )
))
(declare-datatypes ((array!65356 0))(
  ( (array!65357 (arr!31454 (Array (_ BitVec 32) ValueCell!11612)) (size!31985 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5818 0))(
  ( (LongMapFixedSize!5819 (defaultEntry!6291 Int) (mask!30211 (_ BitVec 32)) (extraKeys!6019 (_ BitVec 32)) (zeroValue!6125 V!37715) (minValue!6125 V!37715) (_size!2964 (_ BitVec 32)) (_keys!11486 array!65354) (_values!6314 array!65356) (_vacant!2964 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5818)

(declare-fun mapValue!38481 () ValueCell!11612)

(declare-fun mapRest!38481 () (Array (_ BitVec 32) ValueCell!11612))

(assert (=> mapNonEmpty!38481 (= (arr!31454 (_values!6314 thiss!1427)) (store mapRest!38481 mapKey!38481 mapValue!38481))))

(declare-fun b!1037594 () Bool)

(declare-fun res!692331 () Bool)

(declare-fun e!587024 () Bool)

(assert (=> b!1037594 (=> res!692331 e!587024)))

(declare-datatypes ((List!22042 0))(
  ( (Nil!22039) (Cons!22038 (h!23241 (_ BitVec 64)) (t!31263 List!22042)) )
))
(declare-fun noDuplicate!1491 (List!22042) Bool)

(assert (=> b!1037594 (= res!692331 (not (noDuplicate!1491 Nil!22039)))))

(declare-fun b!1037595 () Bool)

(declare-fun res!692332 () Bool)

(declare-fun e!587030 () Bool)

(assert (=> b!1037595 (=> (not res!692332) (not e!587030))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1037595 (= res!692332 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1037596 () Bool)

(declare-fun e!587023 () Bool)

(declare-fun e!587028 () Bool)

(assert (=> b!1037596 (= e!587023 (and e!587028 mapRes!38481))))

(declare-fun condMapEmpty!38481 () Bool)

(declare-fun mapDefault!38481 () ValueCell!11612)

