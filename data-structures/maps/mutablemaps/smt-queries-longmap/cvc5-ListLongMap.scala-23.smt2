; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!560 () Bool)

(assert start!560)

(declare-fun res!5149 () Bool)

(declare-fun e!1598 () Bool)

(assert (=> start!560 (=> (not res!5149) (not e!1598))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!560 (= res!5149 (validMask!0 mask!2250))))

(assert (=> start!560 e!1598))

(assert (=> start!560 true))

(declare-datatypes ((V!339 0))(
  ( (V!340 (val!66 Int)) )
))
(declare-datatypes ((ValueCell!44 0))(
  ( (ValueCellFull!44 (v!1153 V!339)) (EmptyCell!44) )
))
(declare-datatypes ((array!175 0))(
  ( (array!176 (arr!81 (Array (_ BitVec 32) ValueCell!44)) (size!143 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!175)

(declare-fun e!1596 () Bool)

(declare-fun array_inv!59 (array!175) Bool)

(assert (=> start!560 (and (array_inv!59 _values!1492) e!1596)))

(declare-datatypes ((array!177 0))(
  ( (array!178 (arr!82 (Array (_ BitVec 32) (_ BitVec 64))) (size!144 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!177)

(declare-fun array_inv!60 (array!177) Bool)

(assert (=> start!560 (array_inv!60 _keys!1806)))

(declare-fun b!3375 () Bool)

(declare-fun res!5148 () Bool)

(assert (=> b!3375 (=> (not res!5148) (not e!1598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!177 (_ BitVec 32)) Bool)

(assert (=> b!3375 (= res!5148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3376 () Bool)

(declare-fun e!1594 () Bool)

(declare-fun tp_is_empty!121 () Bool)

(assert (=> b!3376 (= e!1594 tp_is_empty!121)))

(declare-fun b!3377 () Bool)

(assert (=> b!3377 (= e!1598 false)))

(declare-fun lt!465 () Bool)

(declare-datatypes ((List!52 0))(
  ( (Nil!49) (Cons!48 (h!614 (_ BitVec 64)) (t!2179 List!52)) )
))
(declare-fun arrayNoDuplicates!0 (array!177 (_ BitVec 32) List!52) Bool)

(assert (=> b!3377 (= lt!465 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!49))))

(declare-fun b!3378 () Bool)

(declare-fun e!1595 () Bool)

(assert (=> b!3378 (= e!1595 tp_is_empty!121)))

(declare-fun b!3379 () Bool)

(declare-fun res!5147 () Bool)

(assert (=> b!3379 (=> (not res!5147) (not e!1598))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3379 (= res!5147 (and (= (size!143 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!144 _keys!1806) (size!143 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!137 () Bool)

(declare-fun mapRes!137 () Bool)

(declare-fun tp!377 () Bool)

(assert (=> mapNonEmpty!137 (= mapRes!137 (and tp!377 e!1595))))

(declare-fun mapValue!137 () ValueCell!44)

(declare-fun mapRest!137 () (Array (_ BitVec 32) ValueCell!44))

(declare-fun mapKey!137 () (_ BitVec 32))

(assert (=> mapNonEmpty!137 (= (arr!81 _values!1492) (store mapRest!137 mapKey!137 mapValue!137))))

(declare-fun b!3380 () Bool)

(assert (=> b!3380 (= e!1596 (and e!1594 mapRes!137))))

(declare-fun condMapEmpty!137 () Bool)

(declare-fun mapDefault!137 () ValueCell!44)

