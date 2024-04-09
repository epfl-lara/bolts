; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33860 () Bool)

(assert start!33860)

(declare-fun b_free!7031 () Bool)

(declare-fun b_next!7031 () Bool)

(assert (=> start!33860 (= b_free!7031 (not b_next!7031))))

(declare-fun tp!24606 () Bool)

(declare-fun b_and!14235 () Bool)

(assert (=> start!33860 (= tp!24606 b_and!14235)))

(declare-fun b!336628 () Bool)

(declare-fun e!206625 () Bool)

(declare-fun tp_is_empty!6983 () Bool)

(assert (=> b!336628 (= e!206625 tp_is_empty!6983)))

(declare-fun b!336629 () Bool)

(declare-fun res!185914 () Bool)

(declare-fun e!206620 () Bool)

(assert (=> b!336629 (=> (not res!185914) (not e!206620))))

(declare-datatypes ((array!17543 0))(
  ( (array!17544 (arr!8296 (Array (_ BitVec 32) (_ BitVec 64))) (size!8648 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17543)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17543 (_ BitVec 32)) Bool)

(assert (=> b!336629 (= res!185914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336630 () Bool)

(declare-fun res!185911 () Bool)

(assert (=> b!336630 (=> (not res!185911) (not e!206620))))

(declare-datatypes ((V!10287 0))(
  ( (V!10288 (val!3536 Int)) )
))
(declare-datatypes ((ValueCell!3148 0))(
  ( (ValueCellFull!3148 (v!5697 V!10287)) (EmptyCell!3148) )
))
(declare-datatypes ((array!17545 0))(
  ( (array!17546 (arr!8297 (Array (_ BitVec 32) ValueCell!3148)) (size!8649 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17545)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336630 (= res!185911 (and (= (size!8649 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8648 _keys!1895) (size!8649 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11880 () Bool)

(declare-fun mapRes!11880 () Bool)

(declare-fun tp!24605 () Bool)

(declare-fun e!206622 () Bool)

(assert (=> mapNonEmpty!11880 (= mapRes!11880 (and tp!24605 e!206622))))

(declare-fun mapRest!11880 () (Array (_ BitVec 32) ValueCell!3148))

(declare-fun mapValue!11880 () ValueCell!3148)

(declare-fun mapKey!11880 () (_ BitVec 32))

(assert (=> mapNonEmpty!11880 (= (arr!8297 _values!1525) (store mapRest!11880 mapKey!11880 mapValue!11880))))

(declare-fun b!336631 () Bool)

(declare-fun res!185912 () Bool)

(assert (=> b!336631 (=> (not res!185912) (not e!206620))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10287)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10287)

(declare-datatypes ((tuple2!5140 0))(
  ( (tuple2!5141 (_1!2580 (_ BitVec 64)) (_2!2580 V!10287)) )
))
(declare-datatypes ((List!4777 0))(
  ( (Nil!4774) (Cons!4773 (h!5629 tuple2!5140) (t!9879 List!4777)) )
))
(declare-datatypes ((ListLongMap!4067 0))(
  ( (ListLongMap!4068 (toList!2049 List!4777)) )
))
(declare-fun contains!2092 (ListLongMap!4067 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1569 (array!17543 array!17545 (_ BitVec 32) (_ BitVec 32) V!10287 V!10287 (_ BitVec 32) Int) ListLongMap!4067)

(assert (=> b!336631 (= res!185912 (not (contains!2092 (getCurrentListMap!1569 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!11880 () Bool)

(assert (=> mapIsEmpty!11880 mapRes!11880))

(declare-fun res!185908 () Bool)

(assert (=> start!33860 (=> (not res!185908) (not e!206620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33860 (= res!185908 (validMask!0 mask!2385))))

(assert (=> start!33860 e!206620))

(assert (=> start!33860 true))

(assert (=> start!33860 tp_is_empty!6983))

(assert (=> start!33860 tp!24606))

(declare-fun e!206623 () Bool)

(declare-fun array_inv!6152 (array!17545) Bool)

(assert (=> start!33860 (and (array_inv!6152 _values!1525) e!206623)))

(declare-fun array_inv!6153 (array!17543) Bool)

(assert (=> start!33860 (array_inv!6153 _keys!1895)))

(declare-fun b!336632 () Bool)

(assert (=> b!336632 (= e!206622 tp_is_empty!6983)))

(declare-fun b!336633 () Bool)

(declare-fun res!185909 () Bool)

(declare-fun e!206624 () Bool)

(assert (=> b!336633 (=> (not res!185909) (not e!206624))))

(declare-fun arrayContainsKey!0 (array!17543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336633 (= res!185909 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!336634 () Bool)

(declare-fun res!185915 () Bool)

(assert (=> b!336634 (=> (not res!185915) (not e!206620))))

(declare-datatypes ((List!4778 0))(
  ( (Nil!4775) (Cons!4774 (h!5630 (_ BitVec 64)) (t!9880 List!4778)) )
))
(declare-fun arrayNoDuplicates!0 (array!17543 (_ BitVec 32) List!4778) Bool)

(assert (=> b!336634 (= res!185915 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4775))))

(declare-fun b!336635 () Bool)

(declare-fun res!185910 () Bool)

(assert (=> b!336635 (=> (not res!185910) (not e!206620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336635 (= res!185910 (validKeyInArray!0 k!1348))))

(declare-fun b!336636 () Bool)

(assert (=> b!336636 (= e!206624 false)))

(declare-fun lt!160283 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17543 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336636 (= lt!160283 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!336637 () Bool)

(assert (=> b!336637 (= e!206620 e!206624)))

(declare-fun res!185913 () Bool)

(assert (=> b!336637 (=> (not res!185913) (not e!206624))))

(declare-datatypes ((SeekEntryResult!3216 0))(
  ( (MissingZero!3216 (index!15043 (_ BitVec 32))) (Found!3216 (index!15044 (_ BitVec 32))) (Intermediate!3216 (undefined!4028 Bool) (index!15045 (_ BitVec 32)) (x!33567 (_ BitVec 32))) (Undefined!3216) (MissingVacant!3216 (index!15046 (_ BitVec 32))) )
))
(declare-fun lt!160284 () SeekEntryResult!3216)

(assert (=> b!336637 (= res!185913 (and (not (is-Found!3216 lt!160284)) (is-MissingZero!3216 lt!160284)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17543 (_ BitVec 32)) SeekEntryResult!3216)

(assert (=> b!336637 (= lt!160284 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!336638 () Bool)

(assert (=> b!336638 (= e!206623 (and e!206625 mapRes!11880))))

(declare-fun condMapEmpty!11880 () Bool)

(declare-fun mapDefault!11880 () ValueCell!3148)

