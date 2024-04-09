; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104870 () Bool)

(assert start!104870)

(declare-fun b_free!26639 () Bool)

(declare-fun b_next!26639 () Bool)

(assert (=> start!104870 (= b_free!26639 (not b_next!26639))))

(declare-fun tp!93408 () Bool)

(declare-fun b_and!44417 () Bool)

(assert (=> start!104870 (= tp!93408 b_and!44417)))

(declare-fun res!833579 () Bool)

(declare-fun e!709225 () Bool)

(assert (=> start!104870 (=> (not res!833579) (not e!709225))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104870 (= res!833579 (validMask!0 mask!1466))))

(assert (=> start!104870 e!709225))

(assert (=> start!104870 true))

(assert (=> start!104870 tp!93408))

(declare-fun tp_is_empty!31541 () Bool)

(assert (=> start!104870 tp_is_empty!31541))

(declare-datatypes ((array!80739 0))(
  ( (array!80740 (arr!38932 (Array (_ BitVec 32) (_ BitVec 64))) (size!39469 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80739)

(declare-fun array_inv!29637 (array!80739) Bool)

(assert (=> start!104870 (array_inv!29637 _keys!1118)))

(declare-datatypes ((V!47419 0))(
  ( (V!47420 (val!15833 Int)) )
))
(declare-datatypes ((ValueCell!15007 0))(
  ( (ValueCellFull!15007 (v!18529 V!47419)) (EmptyCell!15007) )
))
(declare-datatypes ((array!80741 0))(
  ( (array!80742 (arr!38933 (Array (_ BitVec 32) ValueCell!15007)) (size!39470 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80741)

(declare-fun e!709223 () Bool)

(declare-fun array_inv!29638 (array!80741) Bool)

(assert (=> start!104870 (and (array_inv!29638 _values!914) e!709223)))

(declare-fun mapNonEmpty!49072 () Bool)

(declare-fun mapRes!49072 () Bool)

(declare-fun tp!93407 () Bool)

(declare-fun e!709224 () Bool)

(assert (=> mapNonEmpty!49072 (= mapRes!49072 (and tp!93407 e!709224))))

(declare-fun mapRest!49072 () (Array (_ BitVec 32) ValueCell!15007))

(declare-fun mapKey!49072 () (_ BitVec 32))

(declare-fun mapValue!49072 () ValueCell!15007)

(assert (=> mapNonEmpty!49072 (= (arr!38933 _values!914) (store mapRest!49072 mapKey!49072 mapValue!49072))))

(declare-fun b!1249501 () Bool)

(assert (=> b!1249501 (= e!709224 tp_is_empty!31541)))

(declare-fun b!1249502 () Bool)

(declare-fun e!709226 () Bool)

(assert (=> b!1249502 (= e!709223 (and e!709226 mapRes!49072))))

(declare-fun condMapEmpty!49072 () Bool)

(declare-fun mapDefault!49072 () ValueCell!15007)

