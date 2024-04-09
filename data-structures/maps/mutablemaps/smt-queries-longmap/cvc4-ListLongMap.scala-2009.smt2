; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35046 () Bool)

(assert start!35046)

(declare-fun b_free!7727 () Bool)

(declare-fun b_next!7727 () Bool)

(assert (=> start!35046 (= b_free!7727 (not b_next!7727))))

(declare-fun tp!26759 () Bool)

(declare-fun b_and!14975 () Bool)

(assert (=> start!35046 (= tp!26759 b_and!14975)))

(declare-fun mapIsEmpty!12990 () Bool)

(declare-fun mapRes!12990 () Bool)

(assert (=> mapIsEmpty!12990 mapRes!12990))

(declare-fun b!351036 () Bool)

(declare-fun res!194733 () Bool)

(declare-fun e!214985 () Bool)

(assert (=> b!351036 (=> (not res!194733) (not e!214985))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11215 0))(
  ( (V!11216 (val!3884 Int)) )
))
(declare-datatypes ((ValueCell!3496 0))(
  ( (ValueCellFull!3496 (v!6067 V!11215)) (EmptyCell!3496) )
))
(declare-datatypes ((array!18899 0))(
  ( (array!18900 (arr!8952 (Array (_ BitVec 32) ValueCell!3496)) (size!9304 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18899)

(declare-datatypes ((array!18901 0))(
  ( (array!18902 (arr!8953 (Array (_ BitVec 32) (_ BitVec 64))) (size!9305 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18901)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!351036 (= res!194733 (and (= (size!9304 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9305 _keys!1895) (size!9304 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351037 () Bool)

(declare-fun e!214990 () Bool)

(assert (=> b!351037 (= e!214985 e!214990)))

(declare-fun res!194738 () Bool)

(assert (=> b!351037 (=> (not res!194738) (not e!214990))))

(declare-datatypes ((SeekEntryResult!3444 0))(
  ( (MissingZero!3444 (index!15955 (_ BitVec 32))) (Found!3444 (index!15956 (_ BitVec 32))) (Intermediate!3444 (undefined!4256 Bool) (index!15957 (_ BitVec 32)) (x!34943 (_ BitVec 32))) (Undefined!3444) (MissingVacant!3444 (index!15958 (_ BitVec 32))) )
))
(declare-fun lt!164688 () SeekEntryResult!3444)

(assert (=> b!351037 (= res!194738 (and (not (is-Found!3444 lt!164688)) (not (is-MissingZero!3444 lt!164688)) (is-MissingVacant!3444 lt!164688)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18901 (_ BitVec 32)) SeekEntryResult!3444)

(assert (=> b!351037 (= lt!164688 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!351038 () Bool)

(declare-fun e!214988 () Bool)

(declare-fun e!214989 () Bool)

(assert (=> b!351038 (= e!214988 (and e!214989 mapRes!12990))))

(declare-fun condMapEmpty!12990 () Bool)

(declare-fun mapDefault!12990 () ValueCell!3496)

