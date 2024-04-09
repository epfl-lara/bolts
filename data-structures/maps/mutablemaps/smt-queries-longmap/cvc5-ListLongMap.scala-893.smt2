; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20466 () Bool)

(assert start!20466)

(declare-fun b_free!5113 () Bool)

(declare-fun b_next!5113 () Bool)

(assert (=> start!20466 (= b_free!5113 (not b_next!5113))))

(declare-fun tp!18370 () Bool)

(declare-fun b_and!11877 () Bool)

(assert (=> start!20466 (= tp!18370 b_and!11877)))

(declare-fun b!202627 () Bool)

(declare-fun res!97180 () Bool)

(declare-fun e!132720 () Bool)

(assert (=> b!202627 (=> (not res!97180) (not e!132720))))

(declare-datatypes ((array!9162 0))(
  ( (array!9163 (arr!4331 (Array (_ BitVec 32) (_ BitVec 64))) (size!4656 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9162)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6273 0))(
  ( (V!6274 (val!2529 Int)) )
))
(declare-datatypes ((ValueCell!2141 0))(
  ( (ValueCellFull!2141 (v!4495 V!6273)) (EmptyCell!2141) )
))
(declare-datatypes ((array!9164 0))(
  ( (array!9165 (arr!4332 (Array (_ BitVec 32) ValueCell!2141)) (size!4657 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9164)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!202627 (= res!97180 (and (= (size!4657 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4656 _keys!825) (size!4657 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!97173 () Bool)

(assert (=> start!20466 (=> (not res!97173) (not e!132720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20466 (= res!97173 (validMask!0 mask!1149))))

(assert (=> start!20466 e!132720))

(declare-fun e!132716 () Bool)

(declare-fun array_inv!2849 (array!9164) Bool)

(assert (=> start!20466 (and (array_inv!2849 _values!649) e!132716)))

(assert (=> start!20466 true))

(declare-fun tp_is_empty!4969 () Bool)

(assert (=> start!20466 tp_is_empty!4969))

(declare-fun array_inv!2850 (array!9162) Bool)

(assert (=> start!20466 (array_inv!2850 _keys!825)))

(assert (=> start!20466 tp!18370))

(declare-fun mapNonEmpty!8522 () Bool)

(declare-fun mapRes!8522 () Bool)

(declare-fun tp!18371 () Bool)

(declare-fun e!132719 () Bool)

(assert (=> mapNonEmpty!8522 (= mapRes!8522 (and tp!18371 e!132719))))

(declare-fun mapValue!8522 () ValueCell!2141)

(declare-fun mapRest!8522 () (Array (_ BitVec 32) ValueCell!2141))

(declare-fun mapKey!8522 () (_ BitVec 32))

(assert (=> mapNonEmpty!8522 (= (arr!4332 _values!649) (store mapRest!8522 mapKey!8522 mapValue!8522))))

(declare-fun mapIsEmpty!8522 () Bool)

(assert (=> mapIsEmpty!8522 mapRes!8522))

(declare-fun b!202628 () Bool)

(assert (=> b!202628 (= e!132719 tp_is_empty!4969)))

(declare-fun b!202629 () Bool)

(declare-fun res!97176 () Bool)

(assert (=> b!202629 (=> (not res!97176) (not e!132720))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202629 (= res!97176 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4656 _keys!825))))))

(declare-fun b!202630 () Bool)

(declare-fun e!132717 () Bool)

(assert (=> b!202630 (= e!132716 (and e!132717 mapRes!8522))))

(declare-fun condMapEmpty!8522 () Bool)

(declare-fun mapDefault!8522 () ValueCell!2141)

