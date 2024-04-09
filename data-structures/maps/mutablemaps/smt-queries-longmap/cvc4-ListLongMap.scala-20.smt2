; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!546 () Bool)

(assert start!546)

(declare-fun res!5084 () Bool)

(declare-fun e!1489 () Bool)

(assert (=> start!546 (=> (not res!5084) (not e!1489))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!546 (= res!5084 (validMask!0 mask!2250))))

(assert (=> start!546 e!1489))

(assert (=> start!546 true))

(declare-datatypes ((V!319 0))(
  ( (V!320 (val!59 Int)) )
))
(declare-datatypes ((ValueCell!37 0))(
  ( (ValueCellFull!37 (v!1146 V!319)) (EmptyCell!37) )
))
(declare-datatypes ((array!149 0))(
  ( (array!150 (arr!68 (Array (_ BitVec 32) ValueCell!37)) (size!130 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!149)

(declare-fun e!1490 () Bool)

(declare-fun array_inv!47 (array!149) Bool)

(assert (=> start!546 (and (array_inv!47 _values!1492) e!1490)))

(declare-datatypes ((array!151 0))(
  ( (array!152 (arr!69 (Array (_ BitVec 32) (_ BitVec 64))) (size!131 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!151)

(declare-fun array_inv!48 (array!151) Bool)

(assert (=> start!546 (array_inv!48 _keys!1806)))

(declare-fun b!3249 () Bool)

(declare-fun e!1491 () Bool)

(declare-fun tp_is_empty!107 () Bool)

(assert (=> b!3249 (= e!1491 tp_is_empty!107)))

(declare-fun mapIsEmpty!116 () Bool)

(declare-fun mapRes!116 () Bool)

(assert (=> mapIsEmpty!116 mapRes!116))

(declare-fun b!3250 () Bool)

(declare-fun res!5086 () Bool)

(assert (=> b!3250 (=> (not res!5086) (not e!1489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!151 (_ BitVec 32)) Bool)

(assert (=> b!3250 (= res!5086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3251 () Bool)

(assert (=> b!3251 (= e!1489 false)))

(declare-fun lt!444 () Bool)

(declare-datatypes ((List!47 0))(
  ( (Nil!44) (Cons!43 (h!609 (_ BitVec 64)) (t!2174 List!47)) )
))
(declare-fun arrayNoDuplicates!0 (array!151 (_ BitVec 32) List!47) Bool)

(assert (=> b!3251 (= lt!444 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!44))))

(declare-fun b!3252 () Bool)

(declare-fun e!1492 () Bool)

(assert (=> b!3252 (= e!1492 tp_is_empty!107)))

(declare-fun mapNonEmpty!116 () Bool)

(declare-fun tp!356 () Bool)

(assert (=> mapNonEmpty!116 (= mapRes!116 (and tp!356 e!1491))))

(declare-fun mapRest!116 () (Array (_ BitVec 32) ValueCell!37))

(declare-fun mapKey!116 () (_ BitVec 32))

(declare-fun mapValue!116 () ValueCell!37)

(assert (=> mapNonEmpty!116 (= (arr!68 _values!1492) (store mapRest!116 mapKey!116 mapValue!116))))

(declare-fun b!3253 () Bool)

(declare-fun res!5085 () Bool)

(assert (=> b!3253 (=> (not res!5085) (not e!1489))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3253 (= res!5085 (and (= (size!130 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!131 _keys!1806) (size!130 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3254 () Bool)

(assert (=> b!3254 (= e!1490 (and e!1492 mapRes!116))))

(declare-fun condMapEmpty!116 () Bool)

(declare-fun mapDefault!116 () ValueCell!37)

