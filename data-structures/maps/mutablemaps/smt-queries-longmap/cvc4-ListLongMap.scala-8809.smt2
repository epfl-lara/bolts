; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107118 () Bool)

(assert start!107118)

(declare-fun b_free!27587 () Bool)

(declare-fun b_next!27587 () Bool)

(assert (=> start!107118 (= b_free!27587 (not b_next!27587))))

(declare-fun tp!96988 () Bool)

(declare-fun b_and!45629 () Bool)

(assert (=> start!107118 (= tp!96988 b_and!45629)))

(declare-fun b!1269481 () Bool)

(declare-fun res!844915 () Bool)

(declare-fun e!723592 () Bool)

(assert (=> b!1269481 (=> (not res!844915) (not e!723592))))

(declare-datatypes ((V!48887 0))(
  ( (V!48888 (val!16460 Int)) )
))
(declare-datatypes ((ValueCell!15532 0))(
  ( (ValueCellFull!15532 (v!19095 V!48887)) (EmptyCell!15532) )
))
(declare-datatypes ((array!82777 0))(
  ( (array!82778 (arr!39921 (Array (_ BitVec 32) ValueCell!15532)) (size!40458 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82777)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82779 0))(
  ( (array!82780 (arr!39922 (Array (_ BitVec 32) (_ BitVec 64))) (size!40459 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82779)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269481 (= res!844915 (and (= (size!40458 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40459 _keys!1364) (size!40458 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269482 () Bool)

(declare-fun e!723593 () Bool)

(declare-fun e!723589 () Bool)

(declare-fun mapRes!50737 () Bool)

(assert (=> b!1269482 (= e!723593 (and e!723589 mapRes!50737))))

(declare-fun condMapEmpty!50737 () Bool)

(declare-fun mapDefault!50737 () ValueCell!15532)

