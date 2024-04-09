; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107292 () Bool)

(assert start!107292)

(declare-fun mapIsEmpty!50998 () Bool)

(declare-fun mapRes!50998 () Bool)

(assert (=> mapIsEmpty!50998 mapRes!50998))

(declare-fun b!1271229 () Bool)

(declare-fun res!845879 () Bool)

(declare-fun e!724896 () Bool)

(assert (=> b!1271229 (=> (not res!845879) (not e!724896))))

(declare-datatypes ((V!49119 0))(
  ( (V!49120 (val!16547 Int)) )
))
(declare-datatypes ((ValueCell!15619 0))(
  ( (ValueCellFull!15619 (v!19182 V!49119)) (EmptyCell!15619) )
))
(declare-datatypes ((array!83101 0))(
  ( (array!83102 (arr!40083 (Array (_ BitVec 32) ValueCell!15619)) (size!40620 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83101)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83103 0))(
  ( (array!83104 (arr!40084 (Array (_ BitVec 32) (_ BitVec 64))) (size!40621 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83103)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271229 (= res!845879 (and (= (size!40620 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40621 _keys!1364) (size!40620 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50998 () Bool)

(declare-fun tp!97340 () Bool)

(declare-fun e!724898 () Bool)

(assert (=> mapNonEmpty!50998 (= mapRes!50998 (and tp!97340 e!724898))))

(declare-fun mapKey!50998 () (_ BitVec 32))

(declare-fun mapRest!50998 () (Array (_ BitVec 32) ValueCell!15619))

(declare-fun mapValue!50998 () ValueCell!15619)

(assert (=> mapNonEmpty!50998 (= (arr!40083 _values!1134) (store mapRest!50998 mapKey!50998 mapValue!50998))))

(declare-fun b!1271230 () Bool)

(declare-fun e!724894 () Bool)

(declare-fun e!724897 () Bool)

(assert (=> b!1271230 (= e!724894 (and e!724897 mapRes!50998))))

(declare-fun condMapEmpty!50998 () Bool)

(declare-fun mapDefault!50998 () ValueCell!15619)

