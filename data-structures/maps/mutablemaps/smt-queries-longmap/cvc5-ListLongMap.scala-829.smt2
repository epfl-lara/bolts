; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20082 () Bool)

(assert start!20082)

(declare-fun b!196477 () Bool)

(declare-fun e!129426 () Bool)

(declare-fun tp_is_empty!4585 () Bool)

(assert (=> b!196477 (= e!129426 tp_is_empty!4585)))

(declare-fun res!92751 () Bool)

(declare-fun e!129430 () Bool)

(assert (=> start!20082 (=> (not res!92751) (not e!129430))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20082 (= res!92751 (validMask!0 mask!1149))))

(assert (=> start!20082 e!129430))

(assert (=> start!20082 true))

(declare-datatypes ((V!5761 0))(
  ( (V!5762 (val!2337 Int)) )
))
(declare-datatypes ((ValueCell!1949 0))(
  ( (ValueCellFull!1949 (v!4303 V!5761)) (EmptyCell!1949) )
))
(declare-datatypes ((array!8426 0))(
  ( (array!8427 (arr!3963 (Array (_ BitVec 32) ValueCell!1949)) (size!4288 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8426)

(declare-fun e!129429 () Bool)

(declare-fun array_inv!2573 (array!8426) Bool)

(assert (=> start!20082 (and (array_inv!2573 _values!649) e!129429)))

(declare-datatypes ((array!8428 0))(
  ( (array!8429 (arr!3964 (Array (_ BitVec 32) (_ BitVec 64))) (size!4289 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8428)

(declare-fun array_inv!2574 (array!8428) Bool)

(assert (=> start!20082 (array_inv!2574 _keys!825)))

(declare-fun mapIsEmpty!7946 () Bool)

(declare-fun mapRes!7946 () Bool)

(assert (=> mapIsEmpty!7946 mapRes!7946))

(declare-fun b!196478 () Bool)

(assert (=> b!196478 (= e!129430 false)))

(declare-fun lt!97654 () Bool)

(declare-datatypes ((List!2497 0))(
  ( (Nil!2494) (Cons!2493 (h!3135 (_ BitVec 64)) (t!7436 List!2497)) )
))
(declare-fun arrayNoDuplicates!0 (array!8428 (_ BitVec 32) List!2497) Bool)

(assert (=> b!196478 (= lt!97654 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2494))))

(declare-fun mapNonEmpty!7946 () Bool)

(declare-fun tp!17234 () Bool)

(assert (=> mapNonEmpty!7946 (= mapRes!7946 (and tp!17234 e!129426))))

(declare-fun mapKey!7946 () (_ BitVec 32))

(declare-fun mapValue!7946 () ValueCell!1949)

(declare-fun mapRest!7946 () (Array (_ BitVec 32) ValueCell!1949))

(assert (=> mapNonEmpty!7946 (= (arr!3963 _values!649) (store mapRest!7946 mapKey!7946 mapValue!7946))))

(declare-fun b!196479 () Bool)

(declare-fun e!129427 () Bool)

(assert (=> b!196479 (= e!129429 (and e!129427 mapRes!7946))))

(declare-fun condMapEmpty!7946 () Bool)

(declare-fun mapDefault!7946 () ValueCell!1949)

