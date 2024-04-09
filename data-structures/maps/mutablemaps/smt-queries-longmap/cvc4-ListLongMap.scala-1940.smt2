; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34346 () Bool)

(assert start!34346)

(declare-fun b_free!7313 () Bool)

(declare-fun b_next!7313 () Bool)

(assert (=> start!34346 (= b_free!7313 (not b_next!7313))))

(declare-fun tp!25479 () Bool)

(declare-fun b_and!14535 () Bool)

(assert (=> start!34346 (= tp!25479 b_and!14535)))

(declare-fun b!342672 () Bool)

(declare-fun res!189503 () Bool)

(declare-fun e!210138 () Bool)

(assert (=> b!342672 (=> (not res!189503) (not e!210138))))

(declare-datatypes ((array!18097 0))(
  ( (array!18098 (arr!8564 (Array (_ BitVec 32) (_ BitVec 64))) (size!8916 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18097)

(declare-datatypes ((List!4961 0))(
  ( (Nil!4958) (Cons!4957 (h!5813 (_ BitVec 64)) (t!10081 List!4961)) )
))
(declare-fun arrayNoDuplicates!0 (array!18097 (_ BitVec 32) List!4961) Bool)

(assert (=> b!342672 (= res!189503 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4958))))

(declare-fun b!342673 () Bool)

(declare-fun e!210140 () Bool)

(declare-fun tp_is_empty!7265 () Bool)

(assert (=> b!342673 (= e!210140 tp_is_empty!7265)))

(declare-fun res!189502 () Bool)

(assert (=> start!34346 (=> (not res!189502) (not e!210138))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34346 (= res!189502 (validMask!0 mask!2385))))

(assert (=> start!34346 e!210138))

(assert (=> start!34346 true))

(assert (=> start!34346 tp_is_empty!7265))

(assert (=> start!34346 tp!25479))

(declare-datatypes ((V!10663 0))(
  ( (V!10664 (val!3677 Int)) )
))
(declare-datatypes ((ValueCell!3289 0))(
  ( (ValueCellFull!3289 (v!5847 V!10663)) (EmptyCell!3289) )
))
(declare-datatypes ((array!18099 0))(
  ( (array!18100 (arr!8565 (Array (_ BitVec 32) ValueCell!3289)) (size!8917 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18099)

(declare-fun e!210139 () Bool)

(declare-fun array_inv!6332 (array!18099) Bool)

(assert (=> start!34346 (and (array_inv!6332 _values!1525) e!210139)))

(declare-fun array_inv!6333 (array!18097) Bool)

(assert (=> start!34346 (array_inv!6333 _keys!1895)))

(declare-fun b!342674 () Bool)

(declare-fun res!189499 () Bool)

(assert (=> b!342674 (=> (not res!189499) (not e!210138))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342674 (= res!189499 (validKeyInArray!0 k!1348))))

(declare-fun b!342675 () Bool)

(declare-fun e!210141 () Bool)

(assert (=> b!342675 (= e!210141 tp_is_empty!7265)))

(declare-fun b!342676 () Bool)

(declare-fun res!189501 () Bool)

(assert (=> b!342676 (=> (not res!189501) (not e!210138))))

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10663)

(declare-fun zeroValue!1467 () V!10663)

(declare-datatypes ((tuple2!5318 0))(
  ( (tuple2!5319 (_1!2669 (_ BitVec 64)) (_2!2669 V!10663)) )
))
(declare-datatypes ((List!4962 0))(
  ( (Nil!4959) (Cons!4958 (h!5814 tuple2!5318) (t!10082 List!4962)) )
))
(declare-datatypes ((ListLongMap!4245 0))(
  ( (ListLongMap!4246 (toList!2138 List!4962)) )
))
(declare-fun contains!2190 (ListLongMap!4245 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1658 (array!18097 array!18099 (_ BitVec 32) (_ BitVec 32) V!10663 V!10663 (_ BitVec 32) Int) ListLongMap!4245)

(assert (=> b!342676 (= res!189501 (not (contains!2190 (getCurrentListMap!1658 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!342677 () Bool)

(declare-fun e!210136 () Bool)

(assert (=> b!342677 (= e!210136 false)))

(declare-datatypes ((Unit!10693 0))(
  ( (Unit!10694) )
))
(declare-fun lt!162228 () Unit!10693)

(declare-fun e!210135 () Unit!10693)

(assert (=> b!342677 (= lt!162228 e!210135)))

(declare-fun c!52772 () Bool)

(declare-fun arrayContainsKey!0 (array!18097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342677 (= c!52772 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!342678 () Bool)

(declare-fun res!189500 () Bool)

(assert (=> b!342678 (=> (not res!189500) (not e!210138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18097 (_ BitVec 32)) Bool)

(assert (=> b!342678 (= res!189500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342679 () Bool)

(declare-fun Unit!10695 () Unit!10693)

(assert (=> b!342679 (= e!210135 Unit!10695)))

(declare-fun lt!162227 () Unit!10693)

(declare-fun lemmaArrayContainsKeyThenInListMap!310 (array!18097 array!18099 (_ BitVec 32) (_ BitVec 32) V!10663 V!10663 (_ BitVec 64) (_ BitVec 32) Int) Unit!10693)

(declare-fun arrayScanForKey!0 (array!18097 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342679 (= lt!162227 (lemmaArrayContainsKeyThenInListMap!310 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342679 false))

(declare-fun b!342680 () Bool)

(declare-fun res!189498 () Bool)

(assert (=> b!342680 (=> (not res!189498) (not e!210138))))

(assert (=> b!342680 (= res!189498 (and (= (size!8917 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8916 _keys!1895) (size!8917 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12330 () Bool)

(declare-fun mapRes!12330 () Bool)

(assert (=> mapIsEmpty!12330 mapRes!12330))

(declare-fun b!342681 () Bool)

(declare-fun Unit!10696 () Unit!10693)

(assert (=> b!342681 (= e!210135 Unit!10696)))

(declare-fun b!342682 () Bool)

(assert (=> b!342682 (= e!210139 (and e!210141 mapRes!12330))))

(declare-fun condMapEmpty!12330 () Bool)

(declare-fun mapDefault!12330 () ValueCell!3289)

