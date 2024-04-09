; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33998 () Bool)

(assert start!33998)

(declare-fun b_free!7121 () Bool)

(declare-fun b_next!7121 () Bool)

(assert (=> start!33998 (= b_free!7121 (not b_next!7121))))

(declare-fun tp!24882 () Bool)

(declare-fun b_and!14329 () Bool)

(assert (=> start!33998 (= tp!24882 b_and!14329)))

(declare-fun res!187032 () Bool)

(declare-fun e!207674 () Bool)

(assert (=> start!33998 (=> (not res!187032) (not e!207674))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33998 (= res!187032 (validMask!0 mask!2385))))

(assert (=> start!33998 e!207674))

(assert (=> start!33998 true))

(declare-fun tp_is_empty!7073 () Bool)

(assert (=> start!33998 tp_is_empty!7073))

(assert (=> start!33998 tp!24882))

(declare-datatypes ((V!10407 0))(
  ( (V!10408 (val!3581 Int)) )
))
(declare-datatypes ((ValueCell!3193 0))(
  ( (ValueCellFull!3193 (v!5744 V!10407)) (EmptyCell!3193) )
))
(declare-datatypes ((array!17713 0))(
  ( (array!17714 (arr!8379 (Array (_ BitVec 32) ValueCell!3193)) (size!8731 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17713)

(declare-fun e!207672 () Bool)

(declare-fun array_inv!6204 (array!17713) Bool)

(assert (=> start!33998 (and (array_inv!6204 _values!1525) e!207672)))

(declare-datatypes ((array!17715 0))(
  ( (array!17716 (arr!8380 (Array (_ BitVec 32) (_ BitVec 64))) (size!8732 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17715)

(declare-fun array_inv!6205 (array!17715) Bool)

(assert (=> start!33998 (array_inv!6205 _keys!1895)))

(declare-fun mapIsEmpty!12021 () Bool)

(declare-fun mapRes!12021 () Bool)

(assert (=> mapIsEmpty!12021 mapRes!12021))

(declare-fun b!338453 () Bool)

(declare-fun e!207675 () Bool)

(assert (=> b!338453 (= e!207674 e!207675)))

(declare-fun res!187033 () Bool)

(assert (=> b!338453 (=> (not res!187033) (not e!207675))))

(declare-datatypes ((SeekEntryResult!3241 0))(
  ( (MissingZero!3241 (index!15143 (_ BitVec 32))) (Found!3241 (index!15144 (_ BitVec 32))) (Intermediate!3241 (undefined!4053 Bool) (index!15145 (_ BitVec 32)) (x!33732 (_ BitVec 32))) (Undefined!3241) (MissingVacant!3241 (index!15146 (_ BitVec 32))) )
))
(declare-fun lt!160830 () SeekEntryResult!3241)

(assert (=> b!338453 (= res!187033 (and (not (is-Found!3241 lt!160830)) (is-MissingZero!3241 lt!160830)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17715 (_ BitVec 32)) SeekEntryResult!3241)

(assert (=> b!338453 (= lt!160830 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!338454 () Bool)

(declare-fun e!207678 () Bool)

(assert (=> b!338454 (= e!207678 tp_is_empty!7073)))

(declare-fun b!338455 () Bool)

(declare-fun e!207676 () Bool)

(assert (=> b!338455 (= e!207676 tp_is_empty!7073)))

(declare-fun mapNonEmpty!12021 () Bool)

(declare-fun tp!24881 () Bool)

(assert (=> mapNonEmpty!12021 (= mapRes!12021 (and tp!24881 e!207676))))

(declare-fun mapRest!12021 () (Array (_ BitVec 32) ValueCell!3193))

(declare-fun mapKey!12021 () (_ BitVec 32))

(declare-fun mapValue!12021 () ValueCell!3193)

(assert (=> mapNonEmpty!12021 (= (arr!8379 _values!1525) (store mapRest!12021 mapKey!12021 mapValue!12021))))

(declare-fun b!338456 () Bool)

(declare-fun res!187028 () Bool)

(assert (=> b!338456 (=> (not res!187028) (not e!207674))))

(declare-datatypes ((List!4830 0))(
  ( (Nil!4827) (Cons!4826 (h!5682 (_ BitVec 64)) (t!9936 List!4830)) )
))
(declare-fun arrayNoDuplicates!0 (array!17715 (_ BitVec 32) List!4830) Bool)

(assert (=> b!338456 (= res!187028 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4827))))

(declare-fun b!338457 () Bool)

(declare-datatypes ((Unit!10515 0))(
  ( (Unit!10516) )
))
(declare-fun e!207677 () Unit!10515)

(declare-fun Unit!10517 () Unit!10515)

(assert (=> b!338457 (= e!207677 Unit!10517)))

(declare-fun b!338458 () Bool)

(declare-fun Unit!10518 () Unit!10515)

(assert (=> b!338458 (= e!207677 Unit!10518)))

(declare-fun zeroValue!1467 () V!10407)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lt!160829 () Unit!10515)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10407)

(declare-fun lemmaArrayContainsKeyThenInListMap!274 (array!17715 array!17713 (_ BitVec 32) (_ BitVec 32) V!10407 V!10407 (_ BitVec 64) (_ BitVec 32) Int) Unit!10515)

(declare-fun arrayScanForKey!0 (array!17715 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338458 (= lt!160829 (lemmaArrayContainsKeyThenInListMap!274 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338458 false))

(declare-fun b!338459 () Bool)

(assert (=> b!338459 (= e!207672 (and e!207678 mapRes!12021))))

(declare-fun condMapEmpty!12021 () Bool)

(declare-fun mapDefault!12021 () ValueCell!3193)

