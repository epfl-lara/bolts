; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33994 () Bool)

(assert start!33994)

(declare-fun b_free!7117 () Bool)

(declare-fun b_next!7117 () Bool)

(assert (=> start!33994 (= b_free!7117 (not b_next!7117))))

(declare-fun tp!24870 () Bool)

(declare-fun b_and!14325 () Bool)

(assert (=> start!33994 (= tp!24870 b_and!14325)))

(declare-fun b!338381 () Bool)

(declare-fun e!207633 () Bool)

(declare-fun e!207632 () Bool)

(assert (=> b!338381 (= e!207633 e!207632)))

(declare-fun res!186989 () Bool)

(assert (=> b!338381 (=> (not res!186989) (not e!207632))))

(declare-datatypes ((SeekEntryResult!3239 0))(
  ( (MissingZero!3239 (index!15135 (_ BitVec 32))) (Found!3239 (index!15136 (_ BitVec 32))) (Intermediate!3239 (undefined!4051 Bool) (index!15137 (_ BitVec 32)) (x!33730 (_ BitVec 32))) (Undefined!3239) (MissingVacant!3239 (index!15138 (_ BitVec 32))) )
))
(declare-fun lt!160811 () SeekEntryResult!3239)

(assert (=> b!338381 (= res!186989 (and (not (is-Found!3239 lt!160811)) (is-MissingZero!3239 lt!160811)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!17705 0))(
  ( (array!17706 (arr!8375 (Array (_ BitVec 32) (_ BitVec 64))) (size!8727 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17705)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17705 (_ BitVec 32)) SeekEntryResult!3239)

(assert (=> b!338381 (= lt!160811 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!338382 () Bool)

(declare-fun res!186990 () Bool)

(assert (=> b!338382 (=> (not res!186990) (not e!207633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17705 (_ BitVec 32)) Bool)

(assert (=> b!338382 (= res!186990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338383 () Bool)

(assert (=> b!338383 (= e!207632 false)))

(declare-datatypes ((Unit!10508 0))(
  ( (Unit!10509) )
))
(declare-fun lt!160812 () Unit!10508)

(declare-fun e!207631 () Unit!10508)

(assert (=> b!338383 (= lt!160812 e!207631)))

(declare-fun c!52358 () Bool)

(declare-fun arrayContainsKey!0 (array!17705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338383 (= c!52358 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!338384 () Bool)

(declare-fun res!186991 () Bool)

(assert (=> b!338384 (=> (not res!186991) (not e!207633))))

(declare-datatypes ((V!10403 0))(
  ( (V!10404 (val!3579 Int)) )
))
(declare-datatypes ((ValueCell!3191 0))(
  ( (ValueCellFull!3191 (v!5742 V!10403)) (EmptyCell!3191) )
))
(declare-datatypes ((array!17707 0))(
  ( (array!17708 (arr!8376 (Array (_ BitVec 32) ValueCell!3191)) (size!8728 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17707)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!338384 (= res!186991 (and (= (size!8728 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8727 _keys!1895) (size!8728 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338385 () Bool)

(declare-fun Unit!10510 () Unit!10508)

(assert (=> b!338385 (= e!207631 Unit!10510)))

(declare-fun zeroValue!1467 () V!10403)

(declare-fun lt!160810 () Unit!10508)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10403)

(declare-fun lemmaArrayContainsKeyThenInListMap!272 (array!17705 array!17707 (_ BitVec 32) (_ BitVec 32) V!10403 V!10403 (_ BitVec 64) (_ BitVec 32) Int) Unit!10508)

(declare-fun arrayScanForKey!0 (array!17705 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338385 (= lt!160810 (lemmaArrayContainsKeyThenInListMap!272 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338385 false))

(declare-fun res!186986 () Bool)

(assert (=> start!33994 (=> (not res!186986) (not e!207633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33994 (= res!186986 (validMask!0 mask!2385))))

(assert (=> start!33994 e!207633))

(assert (=> start!33994 true))

(declare-fun tp_is_empty!7069 () Bool)

(assert (=> start!33994 tp_is_empty!7069))

(assert (=> start!33994 tp!24870))

(declare-fun e!207634 () Bool)

(declare-fun array_inv!6200 (array!17707) Bool)

(assert (=> start!33994 (and (array_inv!6200 _values!1525) e!207634)))

(declare-fun array_inv!6201 (array!17705) Bool)

(assert (=> start!33994 (array_inv!6201 _keys!1895)))

(declare-fun mapIsEmpty!12015 () Bool)

(declare-fun mapRes!12015 () Bool)

(assert (=> mapIsEmpty!12015 mapRes!12015))

(declare-fun b!338386 () Bool)

(declare-fun res!186992 () Bool)

(assert (=> b!338386 (=> (not res!186992) (not e!207633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338386 (= res!186992 (validKeyInArray!0 k!1348))))

(declare-fun b!338387 () Bool)

(declare-fun e!207630 () Bool)

(assert (=> b!338387 (= e!207630 tp_is_empty!7069)))

(declare-fun b!338388 () Bool)

(declare-fun res!186988 () Bool)

(assert (=> b!338388 (=> (not res!186988) (not e!207633))))

(declare-datatypes ((List!4827 0))(
  ( (Nil!4824) (Cons!4823 (h!5679 (_ BitVec 64)) (t!9933 List!4827)) )
))
(declare-fun arrayNoDuplicates!0 (array!17705 (_ BitVec 32) List!4827) Bool)

(assert (=> b!338388 (= res!186988 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4824))))

(declare-fun b!338389 () Bool)

(assert (=> b!338389 (= e!207634 (and e!207630 mapRes!12015))))

(declare-fun condMapEmpty!12015 () Bool)

(declare-fun mapDefault!12015 () ValueCell!3191)

