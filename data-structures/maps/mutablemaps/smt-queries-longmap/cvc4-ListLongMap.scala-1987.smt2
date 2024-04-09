; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34818 () Bool)

(assert start!34818)

(declare-fun b_free!7595 () Bool)

(declare-fun b_next!7595 () Bool)

(assert (=> start!34818 (= b_free!7595 (not b_next!7595))))

(declare-fun tp!26351 () Bool)

(declare-fun b_and!14835 () Bool)

(assert (=> start!34818 (= tp!26351 b_and!14835)))

(declare-fun b!348174 () Bool)

(declare-fun res!192926 () Bool)

(declare-fun e!213341 () Bool)

(assert (=> b!348174 (=> (not res!192926) (not e!213341))))

(declare-datatypes ((array!18647 0))(
  ( (array!18648 (arr!8830 (Array (_ BitVec 32) (_ BitVec 64))) (size!9182 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18647)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348174 (= res!192926 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348175 () Bool)

(declare-fun e!213340 () Bool)

(assert (=> b!348175 (= e!213340 e!213341)))

(declare-fun res!192924 () Bool)

(assert (=> b!348175 (=> (not res!192924) (not e!213341))))

(declare-datatypes ((SeekEntryResult!3403 0))(
  ( (MissingZero!3403 (index!15791 (_ BitVec 32))) (Found!3403 (index!15792 (_ BitVec 32))) (Intermediate!3403 (undefined!4215 Bool) (index!15793 (_ BitVec 32)) (x!34686 (_ BitVec 32))) (Undefined!3403) (MissingVacant!3403 (index!15794 (_ BitVec 32))) )
))
(declare-fun lt!163827 () SeekEntryResult!3403)

(assert (=> b!348175 (= res!192924 (and (not (is-Found!3403 lt!163827)) (is-MissingZero!3403 lt!163827)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18647 (_ BitVec 32)) SeekEntryResult!3403)

(assert (=> b!348175 (= lt!163827 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!348176 () Bool)

(declare-fun res!192930 () Bool)

(assert (=> b!348176 (=> (not res!192930) (not e!213340))))

(declare-datatypes ((List!5155 0))(
  ( (Nil!5152) (Cons!5151 (h!6007 (_ BitVec 64)) (t!10293 List!5155)) )
))
(declare-fun arrayNoDuplicates!0 (array!18647 (_ BitVec 32) List!5155) Bool)

(assert (=> b!348176 (= res!192930 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5152))))

(declare-fun b!348177 () Bool)

(declare-fun res!192925 () Bool)

(assert (=> b!348177 (=> (not res!192925) (not e!213340))))

(declare-datatypes ((V!11039 0))(
  ( (V!11040 (val!3818 Int)) )
))
(declare-datatypes ((ValueCell!3430 0))(
  ( (ValueCellFull!3430 (v!5997 V!11039)) (EmptyCell!3430) )
))
(declare-datatypes ((array!18649 0))(
  ( (array!18650 (arr!8831 (Array (_ BitVec 32) ValueCell!3430)) (size!9183 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18649)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348177 (= res!192925 (and (= (size!9183 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9182 _keys!1895) (size!9183 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348178 () Bool)

(declare-fun res!192927 () Bool)

(assert (=> b!348178 (=> (not res!192927) (not e!213340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348178 (= res!192927 (validKeyInArray!0 k!1348))))

(declare-fun b!348179 () Bool)

(declare-fun res!192931 () Bool)

(assert (=> b!348179 (=> (not res!192931) (not e!213340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18647 (_ BitVec 32)) Bool)

(assert (=> b!348179 (= res!192931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348180 () Bool)

(declare-fun e!213336 () Bool)

(declare-fun tp_is_empty!7547 () Bool)

(assert (=> b!348180 (= e!213336 tp_is_empty!7547)))

(declare-fun res!192928 () Bool)

(assert (=> start!34818 (=> (not res!192928) (not e!213340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34818 (= res!192928 (validMask!0 mask!2385))))

(assert (=> start!34818 e!213340))

(assert (=> start!34818 true))

(assert (=> start!34818 tp_is_empty!7547))

(assert (=> start!34818 tp!26351))

(declare-fun e!213337 () Bool)

(declare-fun array_inv!6522 (array!18649) Bool)

(assert (=> start!34818 (and (array_inv!6522 _values!1525) e!213337)))

(declare-fun array_inv!6523 (array!18647) Bool)

(assert (=> start!34818 (array_inv!6523 _keys!1895)))

(declare-fun mapIsEmpty!12780 () Bool)

(declare-fun mapRes!12780 () Bool)

(assert (=> mapIsEmpty!12780 mapRes!12780))

(declare-fun b!348181 () Bool)

(assert (=> b!348181 (= e!213337 (and e!213336 mapRes!12780))))

(declare-fun condMapEmpty!12780 () Bool)

(declare-fun mapDefault!12780 () ValueCell!3430)

