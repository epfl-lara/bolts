; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131908 () Bool)

(assert start!131908)

(declare-fun b!1543712 () Bool)

(declare-fun e!859248 () Bool)

(declare-fun tp_is_empty!37865 () Bool)

(assert (=> b!1543712 (= e!859248 tp_is_empty!37865)))

(declare-fun b!1543713 () Bool)

(declare-fun res!1059206 () Bool)

(declare-fun e!859252 () Bool)

(assert (=> b!1543713 (=> (not res!1059206) (not e!859252))))

(declare-datatypes ((array!102905 0))(
  ( (array!102906 (arr!49650 (Array (_ BitVec 32) (_ BitVec 64))) (size!50201 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102905)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58929 0))(
  ( (V!58930 (val!19010 Int)) )
))
(declare-datatypes ((ValueCell!18022 0))(
  ( (ValueCellFull!18022 (v!21808 V!58929)) (EmptyCell!18022) )
))
(declare-datatypes ((array!102907 0))(
  ( (array!102908 (arr!49651 (Array (_ BitVec 32) ValueCell!18022)) (size!50202 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102907)

(assert (=> b!1543713 (= res!1059206 (and (= (size!50202 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50201 _keys!618) (size!50202 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1059204 () Bool)

(assert (=> start!131908 (=> (not res!1059204) (not e!859252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131908 (= res!1059204 (validMask!0 mask!926))))

(assert (=> start!131908 e!859252))

(assert (=> start!131908 true))

(declare-fun e!859250 () Bool)

(declare-fun array_inv!38547 (array!102907) Bool)

(assert (=> start!131908 (and (array_inv!38547 _values!470) e!859250)))

(declare-fun array_inv!38548 (array!102905) Bool)

(assert (=> start!131908 (array_inv!38548 _keys!618)))

(declare-fun b!1543714 () Bool)

(declare-fun e!859249 () Bool)

(assert (=> b!1543714 (= e!859249 tp_is_empty!37865)))

(declare-fun mapIsEmpty!58501 () Bool)

(declare-fun mapRes!58501 () Bool)

(assert (=> mapIsEmpty!58501 mapRes!58501))

(declare-fun b!1543715 () Bool)

(declare-fun res!1059205 () Bool)

(assert (=> b!1543715 (=> (not res!1059205) (not e!859252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102905 (_ BitVec 32)) Bool)

(assert (=> b!1543715 (= res!1059205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58501 () Bool)

(declare-fun tp!111029 () Bool)

(assert (=> mapNonEmpty!58501 (= mapRes!58501 (and tp!111029 e!859248))))

(declare-fun mapValue!58501 () ValueCell!18022)

(declare-fun mapKey!58501 () (_ BitVec 32))

(declare-fun mapRest!58501 () (Array (_ BitVec 32) ValueCell!18022))

(assert (=> mapNonEmpty!58501 (= (arr!49651 _values!470) (store mapRest!58501 mapKey!58501 mapValue!58501))))

(declare-fun b!1543716 () Bool)

(assert (=> b!1543716 (= e!859250 (and e!859249 mapRes!58501))))

(declare-fun condMapEmpty!58501 () Bool)

(declare-fun mapDefault!58501 () ValueCell!18022)

