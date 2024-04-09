; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!576 () Bool)

(assert start!576)

(declare-fun mapIsEmpty!161 () Bool)

(declare-fun mapRes!161 () Bool)

(assert (=> mapIsEmpty!161 mapRes!161))

(declare-fun b!3519 () Bool)

(declare-fun e!1714 () Bool)

(assert (=> b!3519 (= e!1714 false)))

(declare-fun lt!489 () Bool)

(declare-datatypes ((array!207 0))(
  ( (array!208 (arr!97 (Array (_ BitVec 32) (_ BitVec 64))) (size!159 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!207)

(declare-datatypes ((List!58 0))(
  ( (Nil!55) (Cons!54 (h!620 (_ BitVec 64)) (t!2185 List!58)) )
))
(declare-fun arrayNoDuplicates!0 (array!207 (_ BitVec 32) List!58) Bool)

(assert (=> b!3519 (= lt!489 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!55))))

(declare-fun b!3520 () Bool)

(declare-fun res!5219 () Bool)

(assert (=> b!3520 (=> (not res!5219) (not e!1714))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!207 (_ BitVec 32)) Bool)

(assert (=> b!3520 (= res!5219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3521 () Bool)

(declare-fun e!1715 () Bool)

(declare-fun tp_is_empty!137 () Bool)

(assert (=> b!3521 (= e!1715 tp_is_empty!137)))

(declare-fun b!3522 () Bool)

(declare-fun e!1717 () Bool)

(assert (=> b!3522 (= e!1717 tp_is_empty!137)))

(declare-fun mapNonEmpty!161 () Bool)

(declare-fun tp!401 () Bool)

(assert (=> mapNonEmpty!161 (= mapRes!161 (and tp!401 e!1717))))

(declare-datatypes ((V!359 0))(
  ( (V!360 (val!74 Int)) )
))
(declare-datatypes ((ValueCell!52 0))(
  ( (ValueCellFull!52 (v!1161 V!359)) (EmptyCell!52) )
))
(declare-datatypes ((array!209 0))(
  ( (array!210 (arr!98 (Array (_ BitVec 32) ValueCell!52)) (size!160 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!209)

(declare-fun mapRest!161 () (Array (_ BitVec 32) ValueCell!52))

(declare-fun mapValue!161 () ValueCell!52)

(declare-fun mapKey!161 () (_ BitVec 32))

(assert (=> mapNonEmpty!161 (= (arr!98 _values!1492) (store mapRest!161 mapKey!161 mapValue!161))))

(declare-fun res!5221 () Bool)

(assert (=> start!576 (=> (not res!5221) (not e!1714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!576 (= res!5221 (validMask!0 mask!2250))))

(assert (=> start!576 e!1714))

(assert (=> start!576 true))

(declare-fun e!1716 () Bool)

(declare-fun array_inv!69 (array!209) Bool)

(assert (=> start!576 (and (array_inv!69 _values!1492) e!1716)))

(declare-fun array_inv!70 (array!207) Bool)

(assert (=> start!576 (array_inv!70 _keys!1806)))

(declare-fun b!3523 () Bool)

(assert (=> b!3523 (= e!1716 (and e!1715 mapRes!161))))

(declare-fun condMapEmpty!161 () Bool)

(declare-fun mapDefault!161 () ValueCell!52)

