; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20586 () Bool)

(assert start!20586)

(declare-fun b_free!5233 () Bool)

(declare-fun b_next!5233 () Bool)

(assert (=> start!20586 (= b_free!5233 (not b_next!5233))))

(declare-fun tp!18731 () Bool)

(declare-fun b_and!11997 () Bool)

(assert (=> start!20586 (= tp!18731 b_and!11997)))

(declare-fun b!204797 () Bool)

(declare-fun res!98809 () Bool)

(declare-fun e!133978 () Bool)

(assert (=> b!204797 (=> (not res!98809) (not e!133978))))

(declare-datatypes ((array!9392 0))(
  ( (array!9393 (arr!4446 (Array (_ BitVec 32) (_ BitVec 64))) (size!4771 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9392)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9392 (_ BitVec 32)) Bool)

(assert (=> b!204797 (= res!98809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204798 () Bool)

(declare-fun e!133977 () Bool)

(declare-fun tp_is_empty!5089 () Bool)

(assert (=> b!204798 (= e!133977 tp_is_empty!5089)))

(declare-fun res!98803 () Bool)

(assert (=> start!20586 (=> (not res!98803) (not e!133978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20586 (= res!98803 (validMask!0 mask!1149))))

(assert (=> start!20586 e!133978))

(declare-datatypes ((V!6433 0))(
  ( (V!6434 (val!2589 Int)) )
))
(declare-datatypes ((ValueCell!2201 0))(
  ( (ValueCellFull!2201 (v!4555 V!6433)) (EmptyCell!2201) )
))
(declare-datatypes ((array!9394 0))(
  ( (array!9395 (arr!4447 (Array (_ BitVec 32) ValueCell!2201)) (size!4772 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9394)

(declare-fun e!133980 () Bool)

(declare-fun array_inv!2925 (array!9394) Bool)

(assert (=> start!20586 (and (array_inv!2925 _values!649) e!133980)))

(assert (=> start!20586 true))

(assert (=> start!20586 tp_is_empty!5089))

(declare-fun array_inv!2926 (array!9392) Bool)

(assert (=> start!20586 (array_inv!2926 _keys!825)))

(assert (=> start!20586 tp!18731))

(declare-fun b!204796 () Bool)

(declare-fun res!98808 () Bool)

(assert (=> b!204796 (=> (not res!98808) (not e!133978))))

(declare-datatypes ((List!2844 0))(
  ( (Nil!2841) (Cons!2840 (h!3482 (_ BitVec 64)) (t!7783 List!2844)) )
))
(declare-fun arrayNoDuplicates!0 (array!9392 (_ BitVec 32) List!2844) Bool)

(assert (=> b!204796 (= res!98808 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2841))))

(declare-fun b!204799 () Bool)

(declare-fun e!133979 () Bool)

(assert (=> b!204799 (= e!133979 tp_is_empty!5089)))

(declare-fun mapNonEmpty!8702 () Bool)

(declare-fun mapRes!8702 () Bool)

(declare-fun tp!18730 () Bool)

(assert (=> mapNonEmpty!8702 (= mapRes!8702 (and tp!18730 e!133979))))

(declare-fun mapKey!8702 () (_ BitVec 32))

(declare-fun mapRest!8702 () (Array (_ BitVec 32) ValueCell!2201))

(declare-fun mapValue!8702 () ValueCell!2201)

(assert (=> mapNonEmpty!8702 (= (arr!4447 _values!649) (store mapRest!8702 mapKey!8702 mapValue!8702))))

(declare-fun b!204800 () Bool)

(declare-fun res!98806 () Bool)

(assert (=> b!204800 (=> (not res!98806) (not e!133978))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204800 (= res!98806 (and (= (size!4772 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4771 _keys!825) (size!4772 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8702 () Bool)

(assert (=> mapIsEmpty!8702 mapRes!8702))

(declare-fun b!204801 () Bool)

(assert (=> b!204801 (= e!133980 (and e!133977 mapRes!8702))))

(declare-fun condMapEmpty!8702 () Bool)

(declare-fun mapDefault!8702 () ValueCell!2201)

