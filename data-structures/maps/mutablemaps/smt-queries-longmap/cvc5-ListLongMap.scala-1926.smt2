; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34210 () Bool)

(assert start!34210)

(declare-fun b_free!7225 () Bool)

(declare-fun b_next!7225 () Bool)

(assert (=> start!34210 (= b_free!7225 (not b_next!7225))))

(declare-fun tp!25209 () Bool)

(declare-fun b_and!14443 () Bool)

(assert (=> start!34210 (= tp!25209 b_and!14443)))

(declare-fun b!340853 () Bool)

(declare-fun res!188431 () Bool)

(declare-fun e!209076 () Bool)

(assert (=> b!340853 (=> (not res!188431) (not e!209076))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10547 0))(
  ( (V!10548 (val!3633 Int)) )
))
(declare-fun zeroValue!1467 () V!10547)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3245 0))(
  ( (ValueCellFull!3245 (v!5801 V!10547)) (EmptyCell!3245) )
))
(declare-datatypes ((array!17919 0))(
  ( (array!17920 (arr!8477 (Array (_ BitVec 32) ValueCell!3245)) (size!8829 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17919)

(declare-datatypes ((array!17921 0))(
  ( (array!17922 (arr!8478 (Array (_ BitVec 32) (_ BitVec 64))) (size!8830 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17921)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10547)

(declare-datatypes ((tuple2!5252 0))(
  ( (tuple2!5253 (_1!2636 (_ BitVec 64)) (_2!2636 V!10547)) )
))
(declare-datatypes ((List!4897 0))(
  ( (Nil!4894) (Cons!4893 (h!5749 tuple2!5252) (t!10013 List!4897)) )
))
(declare-datatypes ((ListLongMap!4179 0))(
  ( (ListLongMap!4180 (toList!2105 List!4897)) )
))
(declare-fun contains!2155 (ListLongMap!4179 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1625 (array!17921 array!17919 (_ BitVec 32) (_ BitVec 32) V!10547 V!10547 (_ BitVec 32) Int) ListLongMap!4179)

(assert (=> b!340853 (= res!188431 (not (contains!2155 (getCurrentListMap!1625 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!340854 () Bool)

(declare-fun e!209074 () Bool)

(declare-fun tp_is_empty!7177 () Bool)

(assert (=> b!340854 (= e!209074 tp_is_empty!7177)))

(declare-fun b!340855 () Bool)

(declare-fun e!209079 () Bool)

(assert (=> b!340855 (= e!209076 e!209079)))

(declare-fun res!188433 () Bool)

(assert (=> b!340855 (=> (not res!188433) (not e!209079))))

(declare-datatypes ((SeekEntryResult!3272 0))(
  ( (MissingZero!3272 (index!15267 (_ BitVec 32))) (Found!3272 (index!15268 (_ BitVec 32))) (Intermediate!3272 (undefined!4084 Bool) (index!15269 (_ BitVec 32)) (x!33957 (_ BitVec 32))) (Undefined!3272) (MissingVacant!3272 (index!15270 (_ BitVec 32))) )
))
(declare-fun lt!161660 () SeekEntryResult!3272)

(assert (=> b!340855 (= res!188433 (and (not (is-Found!3272 lt!161660)) (not (is-MissingZero!3272 lt!161660)) (is-MissingVacant!3272 lt!161660)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17921 (_ BitVec 32)) SeekEntryResult!3272)

(assert (=> b!340855 (= lt!161660 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!340856 () Bool)

(declare-fun res!188435 () Bool)

(assert (=> b!340856 (=> (not res!188435) (not e!209076))))

(declare-datatypes ((List!4898 0))(
  ( (Nil!4895) (Cons!4894 (h!5750 (_ BitVec 64)) (t!10014 List!4898)) )
))
(declare-fun arrayNoDuplicates!0 (array!17921 (_ BitVec 32) List!4898) Bool)

(assert (=> b!340856 (= res!188435 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4895))))

(declare-fun b!340857 () Bool)

(assert (=> b!340857 (= e!209079 false)))

(declare-fun lt!161661 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17921 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340857 (= lt!161661 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!340858 () Bool)

(declare-fun res!188428 () Bool)

(assert (=> b!340858 (=> (not res!188428) (not e!209079))))

(declare-fun arrayContainsKey!0 (array!17921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340858 (= res!188428 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun res!188434 () Bool)

(assert (=> start!34210 (=> (not res!188434) (not e!209076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34210 (= res!188434 (validMask!0 mask!2385))))

(assert (=> start!34210 e!209076))

(assert (=> start!34210 true))

(assert (=> start!34210 tp_is_empty!7177))

(assert (=> start!34210 tp!25209))

(declare-fun e!209075 () Bool)

(declare-fun array_inv!6270 (array!17919) Bool)

(assert (=> start!34210 (and (array_inv!6270 _values!1525) e!209075)))

(declare-fun array_inv!6271 (array!17921) Bool)

(assert (=> start!34210 (array_inv!6271 _keys!1895)))

(declare-fun b!340859 () Bool)

(declare-fun res!188429 () Bool)

(assert (=> b!340859 (=> (not res!188429) (not e!209076))))

(assert (=> b!340859 (= res!188429 (and (= (size!8829 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8830 _keys!1895) (size!8829 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12192 () Bool)

(declare-fun mapRes!12192 () Bool)

(assert (=> mapIsEmpty!12192 mapRes!12192))

(declare-fun b!340860 () Bool)

(declare-fun e!209077 () Bool)

(assert (=> b!340860 (= e!209075 (and e!209077 mapRes!12192))))

(declare-fun condMapEmpty!12192 () Bool)

(declare-fun mapDefault!12192 () ValueCell!3245)

