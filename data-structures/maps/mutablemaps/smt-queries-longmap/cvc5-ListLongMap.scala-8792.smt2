; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107012 () Bool)

(assert start!107012)

(declare-fun b!1268385 () Bool)

(declare-fun res!844293 () Bool)

(declare-fun e!722798 () Bool)

(assert (=> b!1268385 (=> (not res!844293) (not e!722798))))

(declare-datatypes ((V!48747 0))(
  ( (V!48748 (val!16407 Int)) )
))
(declare-datatypes ((ValueCell!15479 0))(
  ( (ValueCellFull!15479 (v!19042 V!48747)) (EmptyCell!15479) )
))
(declare-datatypes ((array!82581 0))(
  ( (array!82582 (arr!39823 (Array (_ BitVec 32) ValueCell!15479)) (size!40360 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82581)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82583 0))(
  ( (array!82584 (arr!39824 (Array (_ BitVec 32) (_ BitVec 64))) (size!40361 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82583)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268385 (= res!844293 (and (= (size!40360 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40361 _keys!1364) (size!40360 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50578 () Bool)

(declare-fun mapRes!50578 () Bool)

(declare-fun tp!96758 () Bool)

(declare-fun e!722795 () Bool)

(assert (=> mapNonEmpty!50578 (= mapRes!50578 (and tp!96758 e!722795))))

(declare-fun mapKey!50578 () (_ BitVec 32))

(declare-fun mapValue!50578 () ValueCell!15479)

(declare-fun mapRest!50578 () (Array (_ BitVec 32) ValueCell!15479))

(assert (=> mapNonEmpty!50578 (= (arr!39823 _values!1134) (store mapRest!50578 mapKey!50578 mapValue!50578))))

(declare-fun b!1268387 () Bool)

(declare-fun e!722797 () Bool)

(declare-fun e!722794 () Bool)

(assert (=> b!1268387 (= e!722797 (and e!722794 mapRes!50578))))

(declare-fun condMapEmpty!50578 () Bool)

(declare-fun mapDefault!50578 () ValueCell!15479)

