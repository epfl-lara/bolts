; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34306 () Bool)

(assert start!34306)

(declare-fun b_free!7273 () Bool)

(declare-fun b_next!7273 () Bool)

(assert (=> start!34306 (= b_free!7273 (not b_next!7273))))

(declare-fun tp!25359 () Bool)

(declare-fun b_and!14495 () Bool)

(assert (=> start!34306 (= tp!25359 b_and!14495)))

(declare-fun b!341952 () Bool)

(declare-fun res!189080 () Bool)

(declare-fun e!209719 () Bool)

(assert (=> b!341952 (=> (not res!189080) (not e!209719))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10611 0))(
  ( (V!10612 (val!3657 Int)) )
))
(declare-fun zeroValue!1467 () V!10611)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3269 0))(
  ( (ValueCellFull!3269 (v!5827 V!10611)) (EmptyCell!3269) )
))
(declare-datatypes ((array!18019 0))(
  ( (array!18020 (arr!8525 (Array (_ BitVec 32) ValueCell!3269)) (size!8877 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18019)

(declare-datatypes ((array!18021 0))(
  ( (array!18022 (arr!8526 (Array (_ BitVec 32) (_ BitVec 64))) (size!8878 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18021)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10611)

(declare-datatypes ((tuple2!5288 0))(
  ( (tuple2!5289 (_1!2654 (_ BitVec 64)) (_2!2654 V!10611)) )
))
(declare-datatypes ((List!4931 0))(
  ( (Nil!4928) (Cons!4927 (h!5783 tuple2!5288) (t!10051 List!4931)) )
))
(declare-datatypes ((ListLongMap!4215 0))(
  ( (ListLongMap!4216 (toList!2123 List!4931)) )
))
(declare-fun contains!2175 (ListLongMap!4215 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1643 (array!18021 array!18019 (_ BitVec 32) (_ BitVec 32) V!10611 V!10611 (_ BitVec 32) Int) ListLongMap!4215)

(assert (=> b!341952 (= res!189080 (not (contains!2175 (getCurrentListMap!1643 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12270 () Bool)

(declare-fun mapRes!12270 () Bool)

(assert (=> mapIsEmpty!12270 mapRes!12270))

(declare-fun b!341953 () Bool)

(declare-fun res!189079 () Bool)

(assert (=> b!341953 (=> (not res!189079) (not e!209719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18021 (_ BitVec 32)) Bool)

(assert (=> b!341953 (= res!189079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341954 () Bool)

(declare-fun e!209721 () Bool)

(assert (=> b!341954 (= e!209721 false)))

(declare-datatypes ((Unit!10633 0))(
  ( (Unit!10634) )
))
(declare-fun lt!162039 () Unit!10633)

(declare-fun e!209716 () Unit!10633)

(assert (=> b!341954 (= lt!162039 e!209716)))

(declare-fun c!52712 () Bool)

(declare-fun arrayContainsKey!0 (array!18021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341954 (= c!52712 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!341955 () Bool)

(declare-fun res!189082 () Bool)

(assert (=> b!341955 (=> (not res!189082) (not e!209719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341955 (= res!189082 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12270 () Bool)

(declare-fun tp!25358 () Bool)

(declare-fun e!209718 () Bool)

(assert (=> mapNonEmpty!12270 (= mapRes!12270 (and tp!25358 e!209718))))

(declare-fun mapValue!12270 () ValueCell!3269)

(declare-fun mapRest!12270 () (Array (_ BitVec 32) ValueCell!3269))

(declare-fun mapKey!12270 () (_ BitVec 32))

(assert (=> mapNonEmpty!12270 (= (arr!8525 _values!1525) (store mapRest!12270 mapKey!12270 mapValue!12270))))

(declare-fun b!341956 () Bool)

(declare-fun res!189081 () Bool)

(assert (=> b!341956 (=> (not res!189081) (not e!209719))))

(assert (=> b!341956 (= res!189081 (and (= (size!8877 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8878 _keys!1895) (size!8877 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341957 () Bool)

(declare-fun e!209717 () Bool)

(declare-fun e!209715 () Bool)

(assert (=> b!341957 (= e!209717 (and e!209715 mapRes!12270))))

(declare-fun condMapEmpty!12270 () Bool)

(declare-fun mapDefault!12270 () ValueCell!3269)

