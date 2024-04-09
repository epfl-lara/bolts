; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34142 () Bool)

(assert start!34142)

(declare-fun b_free!7177 () Bool)

(declare-fun b_next!7177 () Bool)

(assert (=> start!34142 (= b_free!7177 (not b_next!7177))))

(declare-fun tp!25062 () Bool)

(declare-fun b_and!14393 () Bool)

(assert (=> start!34142 (= tp!25062 b_and!14393)))

(declare-fun b!339946 () Bool)

(declare-fun res!187819 () Bool)

(declare-fun e!208568 () Bool)

(assert (=> b!339946 (=> (not res!187819) (not e!208568))))

(declare-datatypes ((array!17829 0))(
  ( (array!17830 (arr!8433 (Array (_ BitVec 32) (_ BitVec 64))) (size!8785 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17829)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17829 (_ BitVec 32)) Bool)

(assert (=> b!339946 (= res!187819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339947 () Bool)

(declare-fun e!208564 () Bool)

(assert (=> b!339947 (= e!208568 e!208564)))

(declare-fun res!187820 () Bool)

(assert (=> b!339947 (=> (not res!187820) (not e!208564))))

(declare-datatypes ((SeekEntryResult!3260 0))(
  ( (MissingZero!3260 (index!15219 (_ BitVec 32))) (Found!3260 (index!15220 (_ BitVec 32))) (Intermediate!3260 (undefined!4072 Bool) (index!15221 (_ BitVec 32)) (x!33871 (_ BitVec 32))) (Undefined!3260) (MissingVacant!3260 (index!15222 (_ BitVec 32))) )
))
(declare-fun lt!161436 () SeekEntryResult!3260)

(assert (=> b!339947 (= res!187820 (and (not (is-Found!3260 lt!161436)) (not (is-MissingZero!3260 lt!161436)) (is-MissingVacant!3260 lt!161436)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17829 (_ BitVec 32)) SeekEntryResult!3260)

(assert (=> b!339947 (= lt!161436 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!339948 () Bool)

(declare-fun res!187825 () Bool)

(assert (=> b!339948 (=> (not res!187825) (not e!208568))))

(declare-datatypes ((V!10483 0))(
  ( (V!10484 (val!3609 Int)) )
))
(declare-fun zeroValue!1467 () V!10483)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10483)

(declare-datatypes ((ValueCell!3221 0))(
  ( (ValueCellFull!3221 (v!5776 V!10483)) (EmptyCell!3221) )
))
(declare-datatypes ((array!17831 0))(
  ( (array!17832 (arr!8434 (Array (_ BitVec 32) ValueCell!3221)) (size!8786 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17831)

(declare-datatypes ((tuple2!5226 0))(
  ( (tuple2!5227 (_1!2623 (_ BitVec 64)) (_2!2623 V!10483)) )
))
(declare-datatypes ((List!4870 0))(
  ( (Nil!4867) (Cons!4866 (h!5722 tuple2!5226) (t!9984 List!4870)) )
))
(declare-datatypes ((ListLongMap!4153 0))(
  ( (ListLongMap!4154 (toList!2092 List!4870)) )
))
(declare-fun contains!2141 (ListLongMap!4153 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1612 (array!17829 array!17831 (_ BitVec 32) (_ BitVec 32) V!10483 V!10483 (_ BitVec 32) Int) ListLongMap!4153)

(assert (=> b!339948 (= res!187825 (not (contains!2141 (getCurrentListMap!1612 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!339949 () Bool)

(declare-fun res!187826 () Bool)

(assert (=> b!339949 (=> (not res!187826) (not e!208568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339949 (= res!187826 (validKeyInArray!0 k!1348))))

(declare-fun b!339950 () Bool)

(declare-fun res!187822 () Bool)

(assert (=> b!339950 (=> (not res!187822) (not e!208568))))

(declare-datatypes ((List!4871 0))(
  ( (Nil!4868) (Cons!4867 (h!5723 (_ BitVec 64)) (t!9985 List!4871)) )
))
(declare-fun arrayNoDuplicates!0 (array!17829 (_ BitVec 32) List!4871) Bool)

(assert (=> b!339950 (= res!187822 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4868))))

(declare-fun b!339951 () Bool)

(declare-fun res!187821 () Bool)

(assert (=> b!339951 (=> (not res!187821) (not e!208568))))

(assert (=> b!339951 (= res!187821 (and (= (size!8786 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8785 _keys!1895) (size!8786 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!339952 () Bool)

(declare-fun e!208569 () Bool)

(declare-fun tp_is_empty!7129 () Bool)

(assert (=> b!339952 (= e!208569 tp_is_empty!7129)))

(declare-fun b!339953 () Bool)

(declare-fun e!208566 () Bool)

(assert (=> b!339953 (= e!208566 tp_is_empty!7129)))

(declare-fun res!187823 () Bool)

(assert (=> start!34142 (=> (not res!187823) (not e!208568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34142 (= res!187823 (validMask!0 mask!2385))))

(assert (=> start!34142 e!208568))

(assert (=> start!34142 true))

(assert (=> start!34142 tp_is_empty!7129))

(assert (=> start!34142 tp!25062))

(declare-fun e!208565 () Bool)

(declare-fun array_inv!6240 (array!17831) Bool)

(assert (=> start!34142 (and (array_inv!6240 _values!1525) e!208565)))

(declare-fun array_inv!6241 (array!17829) Bool)

(assert (=> start!34142 (array_inv!6241 _keys!1895)))

(declare-fun mapNonEmpty!12117 () Bool)

(declare-fun mapRes!12117 () Bool)

(declare-fun tp!25061 () Bool)

(assert (=> mapNonEmpty!12117 (= mapRes!12117 (and tp!25061 e!208566))))

(declare-fun mapValue!12117 () ValueCell!3221)

(declare-fun mapKey!12117 () (_ BitVec 32))

(declare-fun mapRest!12117 () (Array (_ BitVec 32) ValueCell!3221))

(assert (=> mapNonEmpty!12117 (= (arr!8434 _values!1525) (store mapRest!12117 mapKey!12117 mapValue!12117))))

(declare-fun b!339954 () Bool)

(assert (=> b!339954 (= e!208565 (and e!208569 mapRes!12117))))

(declare-fun condMapEmpty!12117 () Bool)

(declare-fun mapDefault!12117 () ValueCell!3221)

