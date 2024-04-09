; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33408 () Bool)

(assert start!33408)

(declare-fun b!331538 () Bool)

(declare-fun res!182722 () Bool)

(declare-fun e!203475 () Bool)

(assert (=> b!331538 (=> (not res!182722) (not e!203475))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9887 0))(
  ( (V!9888 (val!3386 Int)) )
))
(declare-datatypes ((ValueCell!2998 0))(
  ( (ValueCellFull!2998 (v!5540 V!9887)) (EmptyCell!2998) )
))
(declare-datatypes ((array!16961 0))(
  ( (array!16962 (arr!8015 (Array (_ BitVec 32) ValueCell!2998)) (size!8367 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16961)

(declare-datatypes ((array!16963 0))(
  ( (array!16964 (arr!8016 (Array (_ BitVec 32) (_ BitVec 64))) (size!8368 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16963)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331538 (= res!182722 (and (= (size!8367 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8368 _keys!1895) (size!8367 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11400 () Bool)

(declare-fun mapRes!11400 () Bool)

(assert (=> mapIsEmpty!11400 mapRes!11400))

(declare-fun b!331539 () Bool)

(declare-fun res!182724 () Bool)

(assert (=> b!331539 (=> (not res!182724) (not e!203475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16963 (_ BitVec 32)) Bool)

(assert (=> b!331539 (= res!182724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331540 () Bool)

(declare-fun e!203474 () Bool)

(declare-fun tp_is_empty!6683 () Bool)

(assert (=> b!331540 (= e!203474 tp_is_empty!6683)))

(declare-fun b!331541 () Bool)

(declare-fun e!203472 () Bool)

(assert (=> b!331541 (= e!203472 tp_is_empty!6683)))

(declare-fun b!331542 () Bool)

(declare-fun e!203473 () Bool)

(assert (=> b!331542 (= e!203473 (and e!203474 mapRes!11400))))

(declare-fun condMapEmpty!11400 () Bool)

(declare-fun mapDefault!11400 () ValueCell!2998)

