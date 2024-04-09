; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107192 () Bool)

(assert start!107192)

(declare-fun b!1270329 () Bool)

(declare-fun e!724144 () Bool)

(declare-fun tp_is_empty!32845 () Bool)

(assert (=> b!1270329 (= e!724144 tp_is_empty!32845)))

(declare-fun b!1270330 () Bool)

(declare-fun e!724146 () Bool)

(assert (=> b!1270330 (= e!724146 tp_is_empty!32845)))

(declare-fun res!845427 () Bool)

(declare-fun e!724148 () Bool)

(assert (=> start!107192 (=> (not res!845427) (not e!724148))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107192 (= res!845427 (validMask!0 mask!1730))))

(assert (=> start!107192 e!724148))

(declare-datatypes ((V!48987 0))(
  ( (V!48988 (val!16497 Int)) )
))
(declare-datatypes ((ValueCell!15569 0))(
  ( (ValueCellFull!15569 (v!19132 V!48987)) (EmptyCell!15569) )
))
(declare-datatypes ((array!82919 0))(
  ( (array!82920 (arr!39992 (Array (_ BitVec 32) ValueCell!15569)) (size!40529 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82919)

(declare-fun e!724145 () Bool)

(declare-fun array_inv!30375 (array!82919) Bool)

(assert (=> start!107192 (and (array_inv!30375 _values!1134) e!724145)))

(assert (=> start!107192 true))

(declare-datatypes ((array!82921 0))(
  ( (array!82922 (arr!39993 (Array (_ BitVec 32) (_ BitVec 64))) (size!40530 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82921)

(declare-fun array_inv!30376 (array!82921) Bool)

(assert (=> start!107192 (array_inv!30376 _keys!1364)))

(declare-fun mapIsEmpty!50848 () Bool)

(declare-fun mapRes!50848 () Bool)

(assert (=> mapIsEmpty!50848 mapRes!50848))

(declare-fun b!1270331 () Bool)

(declare-fun res!845428 () Bool)

(assert (=> b!1270331 (=> (not res!845428) (not e!724148))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270331 (= res!845428 (and (= (size!40529 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40530 _keys!1364) (size!40529 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50848 () Bool)

(declare-fun tp!97190 () Bool)

(assert (=> mapNonEmpty!50848 (= mapRes!50848 (and tp!97190 e!724144))))

(declare-fun mapValue!50848 () ValueCell!15569)

(declare-fun mapRest!50848 () (Array (_ BitVec 32) ValueCell!15569))

(declare-fun mapKey!50848 () (_ BitVec 32))

(assert (=> mapNonEmpty!50848 (= (arr!39992 _values!1134) (store mapRest!50848 mapKey!50848 mapValue!50848))))

(declare-fun b!1270332 () Bool)

(assert (=> b!1270332 (= e!724148 false)))

(declare-fun lt!574640 () Bool)

(declare-datatypes ((List!28652 0))(
  ( (Nil!28649) (Cons!28648 (h!29857 (_ BitVec 64)) (t!42188 List!28652)) )
))
(declare-fun arrayNoDuplicates!0 (array!82921 (_ BitVec 32) List!28652) Bool)

(assert (=> b!1270332 (= lt!574640 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28649))))

(declare-fun b!1270333 () Bool)

(assert (=> b!1270333 (= e!724145 (and e!724146 mapRes!50848))))

(declare-fun condMapEmpty!50848 () Bool)

(declare-fun mapDefault!50848 () ValueCell!15569)

