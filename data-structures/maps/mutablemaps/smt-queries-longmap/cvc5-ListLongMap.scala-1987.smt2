; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34814 () Bool)

(assert start!34814)

(declare-fun b_free!7591 () Bool)

(declare-fun b_next!7591 () Bool)

(assert (=> start!34814 (= b_free!7591 (not b_next!7591))))

(declare-fun tp!26340 () Bool)

(declare-fun b_and!14831 () Bool)

(assert (=> start!34814 (= tp!26340 b_and!14831)))

(declare-fun b!348108 () Bool)

(declare-fun e!213305 () Bool)

(declare-fun tp_is_empty!7543 () Bool)

(assert (=> b!348108 (= e!213305 tp_is_empty!7543)))

(declare-fun b!348109 () Bool)

(declare-fun res!192883 () Bool)

(declare-fun e!213303 () Bool)

(assert (=> b!348109 (=> (not res!192883) (not e!213303))))

(declare-datatypes ((array!18639 0))(
  ( (array!18640 (arr!8826 (Array (_ BitVec 32) (_ BitVec 64))) (size!9178 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18639)

(declare-datatypes ((List!5152 0))(
  ( (Nil!5149) (Cons!5148 (h!6004 (_ BitVec 64)) (t!10290 List!5152)) )
))
(declare-fun arrayNoDuplicates!0 (array!18639 (_ BitVec 32) List!5152) Bool)

(assert (=> b!348109 (= res!192883 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5149))))

(declare-fun b!348110 () Bool)

(declare-fun e!213301 () Bool)

(assert (=> b!348110 (= e!213301 false)))

(declare-fun lt!163815 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!18639 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348110 (= lt!163815 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348111 () Bool)

(declare-fun e!213300 () Bool)

(assert (=> b!348111 (= e!213300 tp_is_empty!7543)))

(declare-fun b!348112 () Bool)

(declare-fun res!192879 () Bool)

(assert (=> b!348112 (=> (not res!192879) (not e!213303))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11035 0))(
  ( (V!11036 (val!3816 Int)) )
))
(declare-datatypes ((ValueCell!3428 0))(
  ( (ValueCellFull!3428 (v!5995 V!11035)) (EmptyCell!3428) )
))
(declare-datatypes ((array!18641 0))(
  ( (array!18642 (arr!8827 (Array (_ BitVec 32) ValueCell!3428)) (size!9179 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18641)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348112 (= res!192879 (and (= (size!9179 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9178 _keys!1895) (size!9179 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!192880 () Bool)

(assert (=> start!34814 (=> (not res!192880) (not e!213303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34814 (= res!192880 (validMask!0 mask!2385))))

(assert (=> start!34814 e!213303))

(assert (=> start!34814 true))

(assert (=> start!34814 tp_is_empty!7543))

(assert (=> start!34814 tp!26340))

(declare-fun e!213304 () Bool)

(declare-fun array_inv!6518 (array!18641) Bool)

(assert (=> start!34814 (and (array_inv!6518 _values!1525) e!213304)))

(declare-fun array_inv!6519 (array!18639) Bool)

(assert (=> start!34814 (array_inv!6519 _keys!1895)))

(declare-fun b!348113 () Bool)

(assert (=> b!348113 (= e!213303 e!213301)))

(declare-fun res!192878 () Bool)

(assert (=> b!348113 (=> (not res!192878) (not e!213301))))

(declare-datatypes ((SeekEntryResult!3401 0))(
  ( (MissingZero!3401 (index!15783 (_ BitVec 32))) (Found!3401 (index!15784 (_ BitVec 32))) (Intermediate!3401 (undefined!4213 Bool) (index!15785 (_ BitVec 32)) (x!34684 (_ BitVec 32))) (Undefined!3401) (MissingVacant!3401 (index!15786 (_ BitVec 32))) )
))
(declare-fun lt!163814 () SeekEntryResult!3401)

(assert (=> b!348113 (= res!192878 (and (not (is-Found!3401 lt!163814)) (is-MissingZero!3401 lt!163814)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18639 (_ BitVec 32)) SeekEntryResult!3401)

(assert (=> b!348113 (= lt!163814 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12774 () Bool)

(declare-fun mapRes!12774 () Bool)

(assert (=> mapIsEmpty!12774 mapRes!12774))

(declare-fun b!348114 () Bool)

(assert (=> b!348114 (= e!213304 (and e!213300 mapRes!12774))))

(declare-fun condMapEmpty!12774 () Bool)

(declare-fun mapDefault!12774 () ValueCell!3428)

