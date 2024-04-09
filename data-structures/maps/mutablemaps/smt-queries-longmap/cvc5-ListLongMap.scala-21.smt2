; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!548 () Bool)

(assert start!548)

(declare-fun b!3267 () Bool)

(declare-fun res!5095 () Bool)

(declare-fun e!1504 () Bool)

(assert (=> b!3267 (=> (not res!5095) (not e!1504))))

(declare-datatypes ((array!153 0))(
  ( (array!154 (arr!70 (Array (_ BitVec 32) (_ BitVec 64))) (size!132 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!153)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!153 (_ BitVec 32)) Bool)

(assert (=> b!3267 (= res!5095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3268 () Bool)

(assert (=> b!3268 (= e!1504 false)))

(declare-fun lt!447 () Bool)

(declare-datatypes ((List!48 0))(
  ( (Nil!45) (Cons!44 (h!610 (_ BitVec 64)) (t!2175 List!48)) )
))
(declare-fun arrayNoDuplicates!0 (array!153 (_ BitVec 32) List!48) Bool)

(assert (=> b!3268 (= lt!447 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!45))))

(declare-fun mapNonEmpty!119 () Bool)

(declare-fun mapRes!119 () Bool)

(declare-fun tp!359 () Bool)

(declare-fun e!1507 () Bool)

(assert (=> mapNonEmpty!119 (= mapRes!119 (and tp!359 e!1507))))

(declare-fun mapKey!119 () (_ BitVec 32))

(declare-datatypes ((V!323 0))(
  ( (V!324 (val!60 Int)) )
))
(declare-datatypes ((ValueCell!38 0))(
  ( (ValueCellFull!38 (v!1147 V!323)) (EmptyCell!38) )
))
(declare-datatypes ((array!155 0))(
  ( (array!156 (arr!71 (Array (_ BitVec 32) ValueCell!38)) (size!133 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!155)

(declare-fun mapRest!119 () (Array (_ BitVec 32) ValueCell!38))

(declare-fun mapValue!119 () ValueCell!38)

(assert (=> mapNonEmpty!119 (= (arr!71 _values!1492) (store mapRest!119 mapKey!119 mapValue!119))))

(declare-fun res!5093 () Bool)

(assert (=> start!548 (=> (not res!5093) (not e!1504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!548 (= res!5093 (validMask!0 mask!2250))))

(assert (=> start!548 e!1504))

(assert (=> start!548 true))

(declare-fun e!1508 () Bool)

(declare-fun array_inv!49 (array!155) Bool)

(assert (=> start!548 (and (array_inv!49 _values!1492) e!1508)))

(declare-fun array_inv!50 (array!153) Bool)

(assert (=> start!548 (array_inv!50 _keys!1806)))

(declare-fun b!3269 () Bool)

(declare-fun e!1505 () Bool)

(declare-fun tp_is_empty!109 () Bool)

(assert (=> b!3269 (= e!1505 tp_is_empty!109)))

(declare-fun mapIsEmpty!119 () Bool)

(assert (=> mapIsEmpty!119 mapRes!119))

(declare-fun b!3270 () Bool)

(assert (=> b!3270 (= e!1508 (and e!1505 mapRes!119))))

(declare-fun condMapEmpty!119 () Bool)

(declare-fun mapDefault!119 () ValueCell!38)

