; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33570 () Bool)

(assert start!33570)

(declare-fun b_free!6833 () Bool)

(declare-fun b_next!6833 () Bool)

(assert (=> start!33570 (= b_free!6833 (not b_next!6833))))

(declare-fun tp!23996 () Bool)

(declare-fun b_and!14027 () Bool)

(assert (=> start!33570 (= tp!23996 b_and!14027)))

(declare-fun b!332884 () Bool)

(declare-fun e!204421 () Bool)

(declare-fun tp_is_empty!6785 () Bool)

(assert (=> b!332884 (= e!204421 tp_is_empty!6785)))

(declare-fun mapIsEmpty!11568 () Bool)

(declare-fun mapRes!11568 () Bool)

(assert (=> mapIsEmpty!11568 mapRes!11568))

(declare-fun mapNonEmpty!11568 () Bool)

(declare-fun tp!23997 () Bool)

(declare-fun e!204419 () Bool)

(assert (=> mapNonEmpty!11568 (= mapRes!11568 (and tp!23997 e!204419))))

(declare-datatypes ((V!10023 0))(
  ( (V!10024 (val!3437 Int)) )
))
(declare-datatypes ((ValueCell!3049 0))(
  ( (ValueCellFull!3049 (v!5593 V!10023)) (EmptyCell!3049) )
))
(declare-fun mapRest!11568 () (Array (_ BitVec 32) ValueCell!3049))

(declare-fun mapValue!11568 () ValueCell!3049)

(declare-datatypes ((array!17163 0))(
  ( (array!17164 (arr!8111 (Array (_ BitVec 32) ValueCell!3049)) (size!8463 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17163)

(declare-fun mapKey!11568 () (_ BitVec 32))

(assert (=> mapNonEmpty!11568 (= (arr!8111 _values!1525) (store mapRest!11568 mapKey!11568 mapValue!11568))))

(declare-fun b!332885 () Bool)

(declare-fun res!183470 () Bool)

(declare-fun e!204423 () Bool)

(assert (=> b!332885 (=> (not res!183470) (not e!204423))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332885 (= res!183470 (validKeyInArray!0 k!1348))))

(declare-fun b!332886 () Bool)

(declare-fun res!183467 () Bool)

(assert (=> b!332886 (=> (not res!183467) (not e!204423))))

(declare-datatypes ((array!17165 0))(
  ( (array!17166 (arr!8112 (Array (_ BitVec 32) (_ BitVec 64))) (size!8464 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17165)

(declare-datatypes ((List!4641 0))(
  ( (Nil!4638) (Cons!4637 (h!5493 (_ BitVec 64)) (t!9733 List!4641)) )
))
(declare-fun arrayNoDuplicates!0 (array!17165 (_ BitVec 32) List!4641) Bool)

(assert (=> b!332886 (= res!183467 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4638))))

(declare-fun b!332887 () Bool)

(declare-fun res!183466 () Bool)

(assert (=> b!332887 (=> (not res!183466) (not e!204423))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17165 (_ BitVec 32)) Bool)

(assert (=> b!332887 (= res!183466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332888 () Bool)

(declare-fun res!183469 () Bool)

(assert (=> b!332888 (=> (not res!183469) (not e!204423))))

(declare-fun zeroValue!1467 () V!10023)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10023)

(declare-datatypes ((tuple2!5002 0))(
  ( (tuple2!5003 (_1!2511 (_ BitVec 64)) (_2!2511 V!10023)) )
))
(declare-datatypes ((List!4642 0))(
  ( (Nil!4639) (Cons!4638 (h!5494 tuple2!5002) (t!9734 List!4642)) )
))
(declare-datatypes ((ListLongMap!3929 0))(
  ( (ListLongMap!3930 (toList!1980 List!4642)) )
))
(declare-fun contains!2018 (ListLongMap!3929 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1503 (array!17165 array!17163 (_ BitVec 32) (_ BitVec 32) V!10023 V!10023 (_ BitVec 32) Int) ListLongMap!3929)

(assert (=> b!332888 (= res!183469 (not (contains!2018 (getCurrentListMap!1503 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!332889 () Bool)

(declare-fun e!204422 () Bool)

(assert (=> b!332889 (= e!204422 (and e!204421 mapRes!11568))))

(declare-fun condMapEmpty!11568 () Bool)

(declare-fun mapDefault!11568 () ValueCell!3049)

