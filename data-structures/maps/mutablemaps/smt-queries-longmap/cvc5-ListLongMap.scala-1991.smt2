; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34838 () Bool)

(assert start!34838)

(declare-fun b_free!7615 () Bool)

(declare-fun b_next!7615 () Bool)

(assert (=> start!34838 (= b_free!7615 (not b_next!7615))))

(declare-fun tp!26411 () Bool)

(declare-fun b_and!14855 () Bool)

(assert (=> start!34838 (= tp!26411 b_and!14855)))

(declare-fun b!348504 () Bool)

(declare-fun e!213520 () Bool)

(declare-fun tp_is_empty!7567 () Bool)

(assert (=> b!348504 (= e!213520 tp_is_empty!7567)))

(declare-fun b!348505 () Bool)

(declare-fun e!213518 () Bool)

(assert (=> b!348505 (= e!213518 false)))

(declare-fun lt!163887 () (_ BitVec 32))

(declare-datatypes ((array!18687 0))(
  ( (array!18688 (arr!8850 (Array (_ BitVec 32) (_ BitVec 64))) (size!9202 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18687)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!18687 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348505 (= lt!163887 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348506 () Bool)

(declare-fun res!193168 () Bool)

(declare-fun e!213519 () Bool)

(assert (=> b!348506 (=> (not res!193168) (not e!213519))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11067 0))(
  ( (V!11068 (val!3828 Int)) )
))
(declare-datatypes ((ValueCell!3440 0))(
  ( (ValueCellFull!3440 (v!6007 V!11067)) (EmptyCell!3440) )
))
(declare-datatypes ((array!18689 0))(
  ( (array!18690 (arr!8851 (Array (_ BitVec 32) ValueCell!3440)) (size!9203 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18689)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348506 (= res!193168 (and (= (size!9203 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9202 _keys!1895) (size!9203 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348507 () Bool)

(assert (=> b!348507 (= e!213519 e!213518)))

(declare-fun res!193170 () Bool)

(assert (=> b!348507 (=> (not res!193170) (not e!213518))))

(declare-datatypes ((SeekEntryResult!3409 0))(
  ( (MissingZero!3409 (index!15815 (_ BitVec 32))) (Found!3409 (index!15816 (_ BitVec 32))) (Intermediate!3409 (undefined!4221 Bool) (index!15817 (_ BitVec 32)) (x!34724 (_ BitVec 32))) (Undefined!3409) (MissingVacant!3409 (index!15818 (_ BitVec 32))) )
))
(declare-fun lt!163886 () SeekEntryResult!3409)

(assert (=> b!348507 (= res!193170 (and (not (is-Found!3409 lt!163886)) (is-MissingZero!3409 lt!163886)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18687 (_ BitVec 32)) SeekEntryResult!3409)

(assert (=> b!348507 (= lt!163886 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!348508 () Bool)

(declare-fun e!213517 () Bool)

(declare-fun e!213521 () Bool)

(declare-fun mapRes!12810 () Bool)

(assert (=> b!348508 (= e!213517 (and e!213521 mapRes!12810))))

(declare-fun condMapEmpty!12810 () Bool)

(declare-fun mapDefault!12810 () ValueCell!3440)

