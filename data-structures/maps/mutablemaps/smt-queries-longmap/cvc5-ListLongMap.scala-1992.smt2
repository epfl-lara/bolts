; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34844 () Bool)

(assert start!34844)

(declare-fun b_free!7621 () Bool)

(declare-fun b_next!7621 () Bool)

(assert (=> start!34844 (= b_free!7621 (not b_next!7621))))

(declare-fun tp!26430 () Bool)

(declare-fun b_and!14861 () Bool)

(assert (=> start!34844 (= tp!26430 b_and!14861)))

(declare-fun res!193238 () Bool)

(declare-fun e!213570 () Bool)

(assert (=> start!34844 (=> (not res!193238) (not e!213570))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34844 (= res!193238 (validMask!0 mask!2385))))

(assert (=> start!34844 e!213570))

(assert (=> start!34844 true))

(declare-fun tp_is_empty!7573 () Bool)

(assert (=> start!34844 tp_is_empty!7573))

(assert (=> start!34844 tp!26430))

(declare-datatypes ((V!11075 0))(
  ( (V!11076 (val!3831 Int)) )
))
(declare-datatypes ((ValueCell!3443 0))(
  ( (ValueCellFull!3443 (v!6010 V!11075)) (EmptyCell!3443) )
))
(declare-datatypes ((array!18699 0))(
  ( (array!18700 (arr!8856 (Array (_ BitVec 32) ValueCell!3443)) (size!9208 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18699)

(declare-fun e!213571 () Bool)

(declare-fun array_inv!6532 (array!18699) Bool)

(assert (=> start!34844 (and (array_inv!6532 _values!1525) e!213571)))

(declare-datatypes ((array!18701 0))(
  ( (array!18702 (arr!8857 (Array (_ BitVec 32) (_ BitVec 64))) (size!9209 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18701)

(declare-fun array_inv!6533 (array!18701) Bool)

(assert (=> start!34844 (array_inv!6533 _keys!1895)))

(declare-fun b!348603 () Bool)

(declare-fun res!193242 () Bool)

(assert (=> b!348603 (=> (not res!193242) (not e!213570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18701 (_ BitVec 32)) Bool)

(assert (=> b!348603 (= res!193242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12819 () Bool)

(declare-fun mapRes!12819 () Bool)

(assert (=> mapIsEmpty!12819 mapRes!12819))

(declare-fun b!348604 () Bool)

(declare-fun res!193243 () Bool)

(assert (=> b!348604 (=> (not res!193243) (not e!213570))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348604 (= res!193243 (validKeyInArray!0 k!1348))))

(declare-fun b!348605 () Bool)

(declare-fun res!193240 () Bool)

(assert (=> b!348605 (=> (not res!193240) (not e!213570))))

(declare-datatypes ((List!5173 0))(
  ( (Nil!5170) (Cons!5169 (h!6025 (_ BitVec 64)) (t!10311 List!5173)) )
))
(declare-fun arrayNoDuplicates!0 (array!18701 (_ BitVec 32) List!5173) Bool)

(assert (=> b!348605 (= res!193240 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5170))))

(declare-fun b!348606 () Bool)

(declare-fun res!193237 () Bool)

(declare-fun e!213574 () Bool)

(assert (=> b!348606 (=> (not res!193237) (not e!213574))))

(declare-fun arrayContainsKey!0 (array!18701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348606 (= res!193237 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348607 () Bool)

(assert (=> b!348607 (= e!213570 e!213574)))

(declare-fun res!193236 () Bool)

(assert (=> b!348607 (=> (not res!193236) (not e!213574))))

(declare-datatypes ((SeekEntryResult!3411 0))(
  ( (MissingZero!3411 (index!15823 (_ BitVec 32))) (Found!3411 (index!15824 (_ BitVec 32))) (Intermediate!3411 (undefined!4223 Bool) (index!15825 (_ BitVec 32)) (x!34734 (_ BitVec 32))) (Undefined!3411) (MissingVacant!3411 (index!15826 (_ BitVec 32))) )
))
(declare-fun lt!163905 () SeekEntryResult!3411)

(assert (=> b!348607 (= res!193236 (and (not (is-Found!3411 lt!163905)) (is-MissingZero!3411 lt!163905)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18701 (_ BitVec 32)) SeekEntryResult!3411)

(assert (=> b!348607 (= lt!163905 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!348608 () Bool)

(declare-fun e!213575 () Bool)

(assert (=> b!348608 (= e!213571 (and e!213575 mapRes!12819))))

(declare-fun condMapEmpty!12819 () Bool)

(declare-fun mapDefault!12819 () ValueCell!3443)

