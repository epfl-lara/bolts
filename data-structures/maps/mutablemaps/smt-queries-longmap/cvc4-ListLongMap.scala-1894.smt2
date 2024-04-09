; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33866 () Bool)

(assert start!33866)

(declare-fun b_free!7037 () Bool)

(declare-fun b_next!7037 () Bool)

(assert (=> start!33866 (= b_free!7037 (not b_next!7037))))

(declare-fun tp!24624 () Bool)

(declare-fun b_and!14241 () Bool)

(assert (=> start!33866 (= tp!24624 b_and!14241)))

(declare-fun b!336727 () Bool)

(declare-fun res!185985 () Bool)

(declare-fun e!206675 () Bool)

(assert (=> b!336727 (=> (not res!185985) (not e!206675))))

(declare-datatypes ((array!17555 0))(
  ( (array!17556 (arr!8302 (Array (_ BitVec 32) (_ BitVec 64))) (size!8654 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17555)

(declare-datatypes ((List!4783 0))(
  ( (Nil!4780) (Cons!4779 (h!5635 (_ BitVec 64)) (t!9885 List!4783)) )
))
(declare-fun arrayNoDuplicates!0 (array!17555 (_ BitVec 32) List!4783) Bool)

(assert (=> b!336727 (= res!185985 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4780))))

(declare-fun b!336728 () Bool)

(declare-fun res!185980 () Bool)

(assert (=> b!336728 (=> (not res!185980) (not e!206675))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10295 0))(
  ( (V!10296 (val!3539 Int)) )
))
(declare-fun zeroValue!1467 () V!10295)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3151 0))(
  ( (ValueCellFull!3151 (v!5700 V!10295)) (EmptyCell!3151) )
))
(declare-datatypes ((array!17557 0))(
  ( (array!17558 (arr!8303 (Array (_ BitVec 32) ValueCell!3151)) (size!8655 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17557)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10295)

(declare-datatypes ((tuple2!5146 0))(
  ( (tuple2!5147 (_1!2583 (_ BitVec 64)) (_2!2583 V!10295)) )
))
(declare-datatypes ((List!4784 0))(
  ( (Nil!4781) (Cons!4780 (h!5636 tuple2!5146) (t!9886 List!4784)) )
))
(declare-datatypes ((ListLongMap!4073 0))(
  ( (ListLongMap!4074 (toList!2052 List!4784)) )
))
(declare-fun contains!2095 (ListLongMap!4073 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1572 (array!17555 array!17557 (_ BitVec 32) (_ BitVec 32) V!10295 V!10295 (_ BitVec 32) Int) ListLongMap!4073)

(assert (=> b!336728 (= res!185980 (not (contains!2095 (getCurrentListMap!1572 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!336729 () Bool)

(declare-fun res!185987 () Bool)

(assert (=> b!336729 (=> (not res!185987) (not e!206675))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17555 (_ BitVec 32)) Bool)

(assert (=> b!336729 (= res!185987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11889 () Bool)

(declare-fun mapRes!11889 () Bool)

(assert (=> mapIsEmpty!11889 mapRes!11889))

(declare-fun b!336730 () Bool)

(declare-fun res!185984 () Bool)

(declare-fun e!206678 () Bool)

(assert (=> b!336730 (=> (not res!185984) (not e!206678))))

(declare-fun arrayContainsKey!0 (array!17555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336730 (= res!185984 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun res!185986 () Bool)

(assert (=> start!33866 (=> (not res!185986) (not e!206675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33866 (= res!185986 (validMask!0 mask!2385))))

(assert (=> start!33866 e!206675))

(assert (=> start!33866 true))

(declare-fun tp_is_empty!6989 () Bool)

(assert (=> start!33866 tp_is_empty!6989))

(assert (=> start!33866 tp!24624))

(declare-fun e!206676 () Bool)

(declare-fun array_inv!6156 (array!17557) Bool)

(assert (=> start!33866 (and (array_inv!6156 _values!1525) e!206676)))

(declare-fun array_inv!6157 (array!17555) Bool)

(assert (=> start!33866 (array_inv!6157 _keys!1895)))

(declare-fun b!336731 () Bool)

(declare-fun e!206677 () Bool)

(assert (=> b!336731 (= e!206677 tp_is_empty!6989)))

(declare-fun mapNonEmpty!11889 () Bool)

(declare-fun tp!24623 () Bool)

(declare-fun e!206679 () Bool)

(assert (=> mapNonEmpty!11889 (= mapRes!11889 (and tp!24623 e!206679))))

(declare-fun mapRest!11889 () (Array (_ BitVec 32) ValueCell!3151))

(declare-fun mapValue!11889 () ValueCell!3151)

(declare-fun mapKey!11889 () (_ BitVec 32))

(assert (=> mapNonEmpty!11889 (= (arr!8303 _values!1525) (store mapRest!11889 mapKey!11889 mapValue!11889))))

(declare-fun b!336732 () Bool)

(assert (=> b!336732 (= e!206675 e!206678)))

(declare-fun res!185981 () Bool)

(assert (=> b!336732 (=> (not res!185981) (not e!206678))))

(declare-datatypes ((SeekEntryResult!3218 0))(
  ( (MissingZero!3218 (index!15051 (_ BitVec 32))) (Found!3218 (index!15052 (_ BitVec 32))) (Intermediate!3218 (undefined!4030 Bool) (index!15053 (_ BitVec 32)) (x!33577 (_ BitVec 32))) (Undefined!3218) (MissingVacant!3218 (index!15054 (_ BitVec 32))) )
))
(declare-fun lt!160301 () SeekEntryResult!3218)

(assert (=> b!336732 (= res!185981 (and (not (is-Found!3218 lt!160301)) (is-MissingZero!3218 lt!160301)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17555 (_ BitVec 32)) SeekEntryResult!3218)

(assert (=> b!336732 (= lt!160301 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!336733 () Bool)

(declare-fun res!185982 () Bool)

(assert (=> b!336733 (=> (not res!185982) (not e!206675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336733 (= res!185982 (validKeyInArray!0 k!1348))))

(declare-fun b!336734 () Bool)

(assert (=> b!336734 (= e!206678 false)))

(declare-fun lt!160302 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17555 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336734 (= lt!160302 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!336735 () Bool)

(assert (=> b!336735 (= e!206679 tp_is_empty!6989)))

(declare-fun b!336736 () Bool)

(assert (=> b!336736 (= e!206676 (and e!206677 mapRes!11889))))

(declare-fun condMapEmpty!11889 () Bool)

(declare-fun mapDefault!11889 () ValueCell!3151)

