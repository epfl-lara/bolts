; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20824 () Bool)

(assert start!20824)

(declare-fun b_free!5465 () Bool)

(declare-fun b_next!5465 () Bool)

(assert (=> start!20824 (= b_free!5465 (not b_next!5465))))

(declare-fun tp!19436 () Bool)

(declare-fun b_and!12229 () Bool)

(assert (=> start!20824 (= tp!19436 b_and!12229)))

(declare-fun mapIsEmpty!9059 () Bool)

(declare-fun mapRes!9059 () Bool)

(assert (=> mapIsEmpty!9059 mapRes!9059))

(declare-fun b!208596 () Bool)

(declare-fun res!101531 () Bool)

(declare-fun e!136026 () Bool)

(assert (=> b!208596 (=> (not res!101531) (not e!136026))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6749 0))(
  ( (V!6750 (val!2708 Int)) )
))
(declare-datatypes ((ValueCell!2320 0))(
  ( (ValueCellFull!2320 (v!4674 V!6749)) (EmptyCell!2320) )
))
(declare-datatypes ((array!9856 0))(
  ( (array!9857 (arr!4678 (Array (_ BitVec 32) ValueCell!2320)) (size!5003 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9856)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((array!9858 0))(
  ( (array!9859 (arr!4679 (Array (_ BitVec 32) (_ BitVec 64))) (size!5004 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9858)

(assert (=> b!208596 (= res!101531 (and (= (size!5003 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5004 _keys!825) (size!5003 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!101533 () Bool)

(assert (=> start!20824 (=> (not res!101533) (not e!136026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20824 (= res!101533 (validMask!0 mask!1149))))

(assert (=> start!20824 e!136026))

(declare-fun e!136027 () Bool)

(declare-fun array_inv!3095 (array!9856) Bool)

(assert (=> start!20824 (and (array_inv!3095 _values!649) e!136027)))

(assert (=> start!20824 true))

(declare-fun tp_is_empty!5327 () Bool)

(assert (=> start!20824 tp_is_empty!5327))

(declare-fun array_inv!3096 (array!9858) Bool)

(assert (=> start!20824 (array_inv!3096 _keys!825)))

(assert (=> start!20824 tp!19436))

(declare-fun mapNonEmpty!9059 () Bool)

(declare-fun tp!19435 () Bool)

(declare-fun e!136028 () Bool)

(assert (=> mapNonEmpty!9059 (= mapRes!9059 (and tp!19435 e!136028))))

(declare-fun mapRest!9059 () (Array (_ BitVec 32) ValueCell!2320))

(declare-fun mapKey!9059 () (_ BitVec 32))

(declare-fun mapValue!9059 () ValueCell!2320)

(assert (=> mapNonEmpty!9059 (= (arr!4678 _values!649) (store mapRest!9059 mapKey!9059 mapValue!9059))))

(declare-fun b!208597 () Bool)

(declare-fun e!136029 () Bool)

(assert (=> b!208597 (= e!136027 (and e!136029 mapRes!9059))))

(declare-fun condMapEmpty!9059 () Bool)

(declare-fun mapDefault!9059 () ValueCell!2320)

