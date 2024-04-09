; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34244 () Bool)

(assert start!34244)

(declare-fun b_free!7259 () Bool)

(declare-fun b_next!7259 () Bool)

(assert (=> start!34244 (= b_free!7259 (not b_next!7259))))

(declare-fun tp!25310 () Bool)

(declare-fun b_and!14477 () Bool)

(assert (=> start!34244 (= tp!25310 b_and!14477)))

(declare-fun mapNonEmpty!12243 () Bool)

(declare-fun mapRes!12243 () Bool)

(declare-fun tp!25311 () Bool)

(declare-fun e!209389 () Bool)

(assert (=> mapNonEmpty!12243 (= mapRes!12243 (and tp!25311 e!209389))))

(declare-datatypes ((V!10591 0))(
  ( (V!10592 (val!3650 Int)) )
))
(declare-datatypes ((ValueCell!3262 0))(
  ( (ValueCellFull!3262 (v!5818 V!10591)) (EmptyCell!3262) )
))
(declare-fun mapValue!12243 () ValueCell!3262)

(declare-fun mapRest!12243 () (Array (_ BitVec 32) ValueCell!3262))

(declare-datatypes ((array!17987 0))(
  ( (array!17988 (arr!8511 (Array (_ BitVec 32) ValueCell!3262)) (size!8863 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17987)

(declare-fun mapKey!12243 () (_ BitVec 32))

(assert (=> mapNonEmpty!12243 (= (arr!8511 _values!1525) (store mapRest!12243 mapKey!12243 mapValue!12243))))

(declare-fun b!341422 () Bool)

(declare-fun res!188833 () Bool)

(declare-fun e!209392 () Bool)

(assert (=> b!341422 (=> (not res!188833) (not e!209392))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341422 (= res!188833 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12243 () Bool)

(assert (=> mapIsEmpty!12243 mapRes!12243))

(declare-fun b!341424 () Bool)

(declare-fun tp_is_empty!7211 () Bool)

(assert (=> b!341424 (= e!209389 tp_is_empty!7211)))

(declare-fun b!341425 () Bool)

(declare-datatypes ((Unit!10606 0))(
  ( (Unit!10607) )
))
(declare-fun e!209393 () Unit!10606)

(declare-fun Unit!10608 () Unit!10606)

(assert (=> b!341425 (= e!209393 Unit!10608)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10591)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!17989 0))(
  ( (array!17990 (arr!8512 (Array (_ BitVec 32) (_ BitVec 64))) (size!8864 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17989)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10591)

(declare-fun lt!161771 () Unit!10606)

(declare-fun lemmaArrayContainsKeyThenInListMap!290 (array!17989 array!17987 (_ BitVec 32) (_ BitVec 32) V!10591 V!10591 (_ BitVec 64) (_ BitVec 32) Int) Unit!10606)

(declare-fun arrayScanForKey!0 (array!17989 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341425 (= lt!161771 (lemmaArrayContainsKeyThenInListMap!290 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!341425 false))

(declare-fun b!341426 () Bool)

(declare-fun e!209388 () Bool)

(assert (=> b!341426 (= e!209392 e!209388)))

(declare-fun res!188832 () Bool)

(assert (=> b!341426 (=> (not res!188832) (not e!209388))))

(declare-datatypes ((SeekEntryResult!3285 0))(
  ( (MissingZero!3285 (index!15319 (_ BitVec 32))) (Found!3285 (index!15320 (_ BitVec 32))) (Intermediate!3285 (undefined!4097 Bool) (index!15321 (_ BitVec 32)) (x!34010 (_ BitVec 32))) (Undefined!3285) (MissingVacant!3285 (index!15322 (_ BitVec 32))) )
))
(declare-fun lt!161770 () SeekEntryResult!3285)

(assert (=> b!341426 (= res!188832 (and (not (is-Found!3285 lt!161770)) (not (is-MissingZero!3285 lt!161770)) (is-MissingVacant!3285 lt!161770)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17989 (_ BitVec 32)) SeekEntryResult!3285)

(assert (=> b!341426 (= lt!161770 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!341427 () Bool)

(declare-fun res!188830 () Bool)

(assert (=> b!341427 (=> (not res!188830) (not e!209392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17989 (_ BitVec 32)) Bool)

(assert (=> b!341427 (= res!188830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341428 () Bool)

(declare-fun e!209390 () Bool)

(assert (=> b!341428 (= e!209390 tp_is_empty!7211)))

(declare-fun b!341429 () Bool)

(assert (=> b!341429 (= e!209388 false)))

(declare-fun lt!161772 () Unit!10606)

(assert (=> b!341429 (= lt!161772 e!209393)))

(declare-fun c!52613 () Bool)

(declare-fun arrayContainsKey!0 (array!17989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341429 (= c!52613 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!341430 () Bool)

(declare-fun res!188829 () Bool)

(assert (=> b!341430 (=> (not res!188829) (not e!209392))))

(assert (=> b!341430 (= res!188829 (and (= (size!8863 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8864 _keys!1895) (size!8863 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341431 () Bool)

(declare-fun e!209394 () Bool)

(assert (=> b!341431 (= e!209394 (and e!209390 mapRes!12243))))

(declare-fun condMapEmpty!12243 () Bool)

(declare-fun mapDefault!12243 () ValueCell!3262)

