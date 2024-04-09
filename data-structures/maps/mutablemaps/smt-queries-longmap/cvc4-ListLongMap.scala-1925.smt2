; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34208 () Bool)

(assert start!34208)

(declare-fun b_free!7223 () Bool)

(declare-fun b_next!7223 () Bool)

(assert (=> start!34208 (= b_free!7223 (not b_next!7223))))

(declare-fun tp!25203 () Bool)

(declare-fun b_and!14441 () Bool)

(assert (=> start!34208 (= tp!25203 b_and!14441)))

(declare-fun b!340820 () Bool)

(declare-fun e!209061 () Bool)

(assert (=> b!340820 (= e!209061 false)))

(declare-fun lt!161655 () (_ BitVec 32))

(declare-datatypes ((array!17915 0))(
  ( (array!17916 (arr!8475 (Array (_ BitVec 32) (_ BitVec 64))) (size!8827 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17915)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!17915 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340820 (= lt!161655 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!340821 () Bool)

(declare-fun res!188409 () Bool)

(assert (=> b!340821 (=> (not res!188409) (not e!209061))))

(declare-fun arrayContainsKey!0 (array!17915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340821 (= res!188409 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun res!188404 () Bool)

(declare-fun e!209059 () Bool)

(assert (=> start!34208 (=> (not res!188404) (not e!209059))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34208 (= res!188404 (validMask!0 mask!2385))))

(assert (=> start!34208 e!209059))

(assert (=> start!34208 true))

(declare-fun tp_is_empty!7175 () Bool)

(assert (=> start!34208 tp_is_empty!7175))

(assert (=> start!34208 tp!25203))

(declare-datatypes ((V!10543 0))(
  ( (V!10544 (val!3632 Int)) )
))
(declare-datatypes ((ValueCell!3244 0))(
  ( (ValueCellFull!3244 (v!5800 V!10543)) (EmptyCell!3244) )
))
(declare-datatypes ((array!17917 0))(
  ( (array!17918 (arr!8476 (Array (_ BitVec 32) ValueCell!3244)) (size!8828 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17917)

(declare-fun e!209056 () Bool)

(declare-fun array_inv!6268 (array!17917) Bool)

(assert (=> start!34208 (and (array_inv!6268 _values!1525) e!209056)))

(declare-fun array_inv!6269 (array!17915) Bool)

(assert (=> start!34208 (array_inv!6269 _keys!1895)))

(declare-fun b!340822 () Bool)

(declare-fun res!188411 () Bool)

(assert (=> b!340822 (=> (not res!188411) (not e!209059))))

(declare-datatypes ((List!4896 0))(
  ( (Nil!4893) (Cons!4892 (h!5748 (_ BitVec 64)) (t!10012 List!4896)) )
))
(declare-fun arrayNoDuplicates!0 (array!17915 (_ BitVec 32) List!4896) Bool)

(assert (=> b!340822 (= res!188411 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4893))))

(declare-fun b!340823 () Bool)

(declare-fun res!188410 () Bool)

(assert (=> b!340823 (=> (not res!188410) (not e!209059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17915 (_ BitVec 32)) Bool)

(assert (=> b!340823 (= res!188410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!340824 () Bool)

(declare-fun e!209058 () Bool)

(assert (=> b!340824 (= e!209058 tp_is_empty!7175)))

(declare-fun b!340825 () Bool)

(declare-fun mapRes!12189 () Bool)

(assert (=> b!340825 (= e!209056 (and e!209058 mapRes!12189))))

(declare-fun condMapEmpty!12189 () Bool)

(declare-fun mapDefault!12189 () ValueCell!3244)

