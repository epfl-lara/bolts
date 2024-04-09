; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39796 () Bool)

(assert start!39796)

(declare-fun b_free!10055 () Bool)

(declare-fun b_next!10055 () Bool)

(assert (=> start!39796 (= b_free!10055 (not b_next!10055))))

(declare-fun tp!35694 () Bool)

(declare-fun b_and!17787 () Bool)

(assert (=> start!39796 (= tp!35694 b_and!17787)))

(declare-fun mapNonEmpty!18432 () Bool)

(declare-fun mapRes!18432 () Bool)

(declare-fun tp!35693 () Bool)

(declare-fun e!254037 () Bool)

(assert (=> mapNonEmpty!18432 (= mapRes!18432 (and tp!35693 e!254037))))

(declare-datatypes ((V!16047 0))(
  ( (V!16048 (val!5648 Int)) )
))
(declare-datatypes ((ValueCell!5260 0))(
  ( (ValueCellFull!5260 (v!7891 V!16047)) (EmptyCell!5260) )
))
(declare-fun mapValue!18432 () ValueCell!5260)

(declare-datatypes ((array!26231 0))(
  ( (array!26232 (arr!12562 (Array (_ BitVec 32) ValueCell!5260)) (size!12914 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26231)

(declare-fun mapRest!18432 () (Array (_ BitVec 32) ValueCell!5260))

(declare-fun mapKey!18432 () (_ BitVec 32))

(assert (=> mapNonEmpty!18432 (= (arr!12562 _values!549) (store mapRest!18432 mapKey!18432 mapValue!18432))))

(declare-fun b!428766 () Bool)

(declare-fun e!254038 () Bool)

(declare-fun tp_is_empty!11207 () Bool)

(assert (=> b!428766 (= e!254038 tp_is_empty!11207)))

(declare-fun mapIsEmpty!18432 () Bool)

(assert (=> mapIsEmpty!18432 mapRes!18432))

(declare-fun b!428767 () Bool)

(declare-fun res!251820 () Bool)

(declare-fun e!254030 () Bool)

(assert (=> b!428767 (=> (not res!251820) (not e!254030))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428767 (= res!251820 (validMask!0 mask!1025))))

(declare-fun res!251819 () Bool)

(assert (=> start!39796 (=> (not res!251819) (not e!254030))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26233 0))(
  ( (array!26234 (arr!12563 (Array (_ BitVec 32) (_ BitVec 64))) (size!12915 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26233)

(assert (=> start!39796 (= res!251819 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12915 _keys!709))))))

(assert (=> start!39796 e!254030))

(assert (=> start!39796 tp_is_empty!11207))

(assert (=> start!39796 tp!35694))

(assert (=> start!39796 true))

(declare-fun e!254031 () Bool)

(declare-fun array_inv!9140 (array!26231) Bool)

(assert (=> start!39796 (and (array_inv!9140 _values!549) e!254031)))

(declare-fun array_inv!9141 (array!26233) Bool)

(assert (=> start!39796 (array_inv!9141 _keys!709)))

(declare-fun b!428768 () Bool)

(assert (=> b!428768 (= e!254031 (and e!254038 mapRes!18432))))

(declare-fun condMapEmpty!18432 () Bool)

(declare-fun mapDefault!18432 () ValueCell!5260)

