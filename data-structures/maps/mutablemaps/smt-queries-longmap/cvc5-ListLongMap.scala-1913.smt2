; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34076 () Bool)

(assert start!34076)

(declare-fun b_free!7147 () Bool)

(declare-fun b_next!7147 () Bool)

(assert (=> start!34076 (= b_free!7147 (not b_next!7147))))

(declare-fun tp!24966 () Bool)

(declare-fun b_and!14359 () Bool)

(assert (=> start!34076 (= tp!24966 b_and!14359)))

(declare-fun res!187445 () Bool)

(declare-fun e!208149 () Bool)

(assert (=> start!34076 (=> (not res!187445) (not e!208149))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34076 (= res!187445 (validMask!0 mask!2385))))

(assert (=> start!34076 e!208149))

(assert (=> start!34076 true))

(declare-fun tp_is_empty!7099 () Bool)

(assert (=> start!34076 tp_is_empty!7099))

(assert (=> start!34076 tp!24966))

(declare-datatypes ((V!10443 0))(
  ( (V!10444 (val!3594 Int)) )
))
(declare-datatypes ((ValueCell!3206 0))(
  ( (ValueCellFull!3206 (v!5759 V!10443)) (EmptyCell!3206) )
))
(declare-datatypes ((array!17769 0))(
  ( (array!17770 (arr!8405 (Array (_ BitVec 32) ValueCell!3206)) (size!8757 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17769)

(declare-fun e!208144 () Bool)

(declare-fun array_inv!6224 (array!17769) Bool)

(assert (=> start!34076 (and (array_inv!6224 _values!1525) e!208144)))

(declare-datatypes ((array!17771 0))(
  ( (array!17772 (arr!8406 (Array (_ BitVec 32) (_ BitVec 64))) (size!8758 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17771)

(declare-fun array_inv!6225 (array!17771) Bool)

(assert (=> start!34076 (array_inv!6225 _keys!1895)))

(declare-fun b!339235 () Bool)

(declare-fun res!187439 () Bool)

(assert (=> b!339235 (=> (not res!187439) (not e!208149))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!339235 (= res!187439 (and (= (size!8757 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8758 _keys!1895) (size!8757 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!339236 () Bool)

(declare-fun res!187444 () Bool)

(assert (=> b!339236 (=> (not res!187444) (not e!208149))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339236 (= res!187444 (validKeyInArray!0 k!1348))))

(declare-fun b!339237 () Bool)

(declare-fun e!208143 () Bool)

(assert (=> b!339237 (= e!208143 false)))

(declare-datatypes ((Unit!10567 0))(
  ( (Unit!10568) )
))
(declare-fun lt!161168 () Unit!10567)

(declare-fun e!208146 () Unit!10567)

(assert (=> b!339237 (= lt!161168 e!208146)))

(declare-fun c!52481 () Bool)

(declare-fun arrayContainsKey!0 (array!17771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!339237 (= c!52481 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!339238 () Bool)

(declare-fun Unit!10569 () Unit!10567)

(assert (=> b!339238 (= e!208146 Unit!10569)))

(declare-fun b!339239 () Bool)

(declare-fun e!208148 () Bool)

(assert (=> b!339239 (= e!208148 tp_is_empty!7099)))

(declare-fun b!339240 () Bool)

(declare-fun Unit!10570 () Unit!10567)

(assert (=> b!339240 (= e!208146 Unit!10570)))

(declare-fun lt!161169 () Unit!10567)

(declare-fun zeroValue!1467 () V!10443)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10443)

(declare-fun lemmaArrayContainsKeyThenInListMap!284 (array!17771 array!17769 (_ BitVec 32) (_ BitVec 32) V!10443 V!10443 (_ BitVec 64) (_ BitVec 32) Int) Unit!10567)

(declare-fun arrayScanForKey!0 (array!17771 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!339240 (= lt!161169 (lemmaArrayContainsKeyThenInListMap!284 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!339240 false))

(declare-fun b!339241 () Bool)

(assert (=> b!339241 (= e!208149 e!208143)))

(declare-fun res!187442 () Bool)

(assert (=> b!339241 (=> (not res!187442) (not e!208143))))

(declare-datatypes ((SeekEntryResult!3253 0))(
  ( (MissingZero!3253 (index!15191 (_ BitVec 32))) (Found!3253 (index!15192 (_ BitVec 32))) (Intermediate!3253 (undefined!4065 Bool) (index!15193 (_ BitVec 32)) (x!33804 (_ BitVec 32))) (Undefined!3253) (MissingVacant!3253 (index!15194 (_ BitVec 32))) )
))
(declare-fun lt!161167 () SeekEntryResult!3253)

(assert (=> b!339241 (= res!187442 (and (not (is-Found!3253 lt!161167)) (is-MissingZero!3253 lt!161167)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17771 (_ BitVec 32)) SeekEntryResult!3253)

(assert (=> b!339241 (= lt!161167 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12066 () Bool)

(declare-fun mapRes!12066 () Bool)

(declare-fun tp!24965 () Bool)

(assert (=> mapNonEmpty!12066 (= mapRes!12066 (and tp!24965 e!208148))))

(declare-fun mapRest!12066 () (Array (_ BitVec 32) ValueCell!3206))

(declare-fun mapValue!12066 () ValueCell!3206)

(declare-fun mapKey!12066 () (_ BitVec 32))

(assert (=> mapNonEmpty!12066 (= (arr!8405 _values!1525) (store mapRest!12066 mapKey!12066 mapValue!12066))))

(declare-fun b!339242 () Bool)

(declare-fun e!208145 () Bool)

(assert (=> b!339242 (= e!208145 tp_is_empty!7099)))

(declare-fun b!339243 () Bool)

(declare-fun res!187443 () Bool)

(assert (=> b!339243 (=> (not res!187443) (not e!208149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17771 (_ BitVec 32)) Bool)

(assert (=> b!339243 (= res!187443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339244 () Bool)

(declare-fun res!187441 () Bool)

(assert (=> b!339244 (=> (not res!187441) (not e!208149))))

(declare-datatypes ((tuple2!5208 0))(
  ( (tuple2!5209 (_1!2614 (_ BitVec 64)) (_2!2614 V!10443)) )
))
(declare-datatypes ((List!4851 0))(
  ( (Nil!4848) (Cons!4847 (h!5703 tuple2!5208) (t!9961 List!4851)) )
))
(declare-datatypes ((ListLongMap!4135 0))(
  ( (ListLongMap!4136 (toList!2083 List!4851)) )
))
(declare-fun contains!2130 (ListLongMap!4135 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1603 (array!17771 array!17769 (_ BitVec 32) (_ BitVec 32) V!10443 V!10443 (_ BitVec 32) Int) ListLongMap!4135)

(assert (=> b!339244 (= res!187441 (not (contains!2130 (getCurrentListMap!1603 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12066 () Bool)

(assert (=> mapIsEmpty!12066 mapRes!12066))

(declare-fun b!339245 () Bool)

(assert (=> b!339245 (= e!208144 (and e!208145 mapRes!12066))))

(declare-fun condMapEmpty!12066 () Bool)

(declare-fun mapDefault!12066 () ValueCell!3206)

