; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34228 () Bool)

(assert start!34228)

(declare-fun b_free!7243 () Bool)

(declare-fun b_next!7243 () Bool)

(assert (=> start!34228 (= b_free!7243 (not b_next!7243))))

(declare-fun tp!25263 () Bool)

(declare-fun b_and!14461 () Bool)

(assert (=> start!34228 (= tp!25263 b_and!14461)))

(declare-fun b!341150 () Bool)

(declare-fun e!209241 () Bool)

(declare-fun e!209238 () Bool)

(assert (=> b!341150 (= e!209241 e!209238)))

(declare-fun res!188649 () Bool)

(assert (=> b!341150 (=> (not res!188649) (not e!209238))))

(declare-datatypes ((SeekEntryResult!3279 0))(
  ( (MissingZero!3279 (index!15295 (_ BitVec 32))) (Found!3279 (index!15296 (_ BitVec 32))) (Intermediate!3279 (undefined!4091 Bool) (index!15297 (_ BitVec 32)) (x!33988 (_ BitVec 32))) (Undefined!3279) (MissingVacant!3279 (index!15298 (_ BitVec 32))) )
))
(declare-fun lt!161714 () SeekEntryResult!3279)

(assert (=> b!341150 (= res!188649 (and (not (is-Found!3279 lt!161714)) (not (is-MissingZero!3279 lt!161714)) (is-MissingVacant!3279 lt!161714)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!17955 0))(
  ( (array!17956 (arr!8495 (Array (_ BitVec 32) (_ BitVec 64))) (size!8847 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17955)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17955 (_ BitVec 32)) SeekEntryResult!3279)

(assert (=> b!341150 (= lt!161714 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!341151 () Bool)

(declare-fun res!188644 () Bool)

(assert (=> b!341151 (=> (not res!188644) (not e!209241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341151 (= res!188644 (validKeyInArray!0 k!1348))))

(declare-fun b!341152 () Bool)

(declare-fun e!209236 () Bool)

(declare-fun tp_is_empty!7195 () Bool)

(assert (=> b!341152 (= e!209236 tp_is_empty!7195)))

(declare-fun b!341153 () Bool)

(declare-fun e!209239 () Bool)

(assert (=> b!341153 (= e!209239 tp_is_empty!7195)))

(declare-fun b!341154 () Bool)

(declare-fun res!188648 () Bool)

(assert (=> b!341154 (=> (not res!188648) (not e!209241))))

(declare-datatypes ((V!10571 0))(
  ( (V!10572 (val!3642 Int)) )
))
(declare-fun zeroValue!1467 () V!10571)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10571)

(declare-datatypes ((ValueCell!3254 0))(
  ( (ValueCellFull!3254 (v!5810 V!10571)) (EmptyCell!3254) )
))
(declare-datatypes ((array!17957 0))(
  ( (array!17958 (arr!8496 (Array (_ BitVec 32) ValueCell!3254)) (size!8848 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17957)

(declare-datatypes ((tuple2!5266 0))(
  ( (tuple2!5267 (_1!2643 (_ BitVec 64)) (_2!2643 V!10571)) )
))
(declare-datatypes ((List!4909 0))(
  ( (Nil!4906) (Cons!4905 (h!5761 tuple2!5266) (t!10025 List!4909)) )
))
(declare-datatypes ((ListLongMap!4193 0))(
  ( (ListLongMap!4194 (toList!2112 List!4909)) )
))
(declare-fun contains!2162 (ListLongMap!4193 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1632 (array!17955 array!17957 (_ BitVec 32) (_ BitVec 32) V!10571 V!10571 (_ BitVec 32) Int) ListLongMap!4193)

(assert (=> b!341154 (= res!188648 (not (contains!2162 (getCurrentListMap!1632 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!12219 () Bool)

(declare-fun mapRes!12219 () Bool)

(declare-fun tp!25262 () Bool)

(assert (=> mapNonEmpty!12219 (= mapRes!12219 (and tp!25262 e!209236))))

(declare-fun mapKey!12219 () (_ BitVec 32))

(declare-fun mapRest!12219 () (Array (_ BitVec 32) ValueCell!3254))

(declare-fun mapValue!12219 () ValueCell!3254)

(assert (=> mapNonEmpty!12219 (= (arr!8496 _values!1525) (store mapRest!12219 mapKey!12219 mapValue!12219))))

(declare-fun b!341155 () Bool)

(declare-fun res!188645 () Bool)

(assert (=> b!341155 (=> (not res!188645) (not e!209241))))

(assert (=> b!341155 (= res!188645 (and (= (size!8848 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8847 _keys!1895) (size!8848 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341156 () Bool)

(declare-fun res!188647 () Bool)

(assert (=> b!341156 (=> (not res!188647) (not e!209241))))

(declare-datatypes ((List!4910 0))(
  ( (Nil!4907) (Cons!4906 (h!5762 (_ BitVec 64)) (t!10026 List!4910)) )
))
(declare-fun arrayNoDuplicates!0 (array!17955 (_ BitVec 32) List!4910) Bool)

(assert (=> b!341156 (= res!188647 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4907))))

(declare-fun b!341157 () Bool)

(declare-fun e!209240 () Bool)

(assert (=> b!341157 (= e!209240 (and e!209239 mapRes!12219))))

(declare-fun condMapEmpty!12219 () Bool)

(declare-fun mapDefault!12219 () ValueCell!3254)

