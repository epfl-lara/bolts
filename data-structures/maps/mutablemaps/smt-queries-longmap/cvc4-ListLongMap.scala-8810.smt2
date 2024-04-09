; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107124 () Bool)

(assert start!107124)

(declare-fun b_free!27593 () Bool)

(declare-fun b_next!27593 () Bool)

(assert (=> start!107124 (= b_free!27593 (not b_next!27593))))

(declare-fun tp!97007 () Bool)

(declare-fun b_and!45635 () Bool)

(assert (=> start!107124 (= tp!97007 b_and!45635)))

(declare-fun b!1269553 () Bool)

(declare-fun res!844958 () Bool)

(declare-fun e!723637 () Bool)

(assert (=> b!1269553 (=> (not res!844958) (not e!723637))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!82789 0))(
  ( (array!82790 (arr!39927 (Array (_ BitVec 32) (_ BitVec 64))) (size!40464 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82789)

(assert (=> b!1269553 (= res!844958 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40464 _keys!1364)) (bvslt from!1698 (size!40464 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269554 () Bool)

(declare-fun res!844960 () Bool)

(assert (=> b!1269554 (=> (not res!844960) (not e!723637))))

(declare-datatypes ((V!48895 0))(
  ( (V!48896 (val!16463 Int)) )
))
(declare-datatypes ((ValueCell!15535 0))(
  ( (ValueCellFull!15535 (v!19098 V!48895)) (EmptyCell!15535) )
))
(declare-datatypes ((array!82791 0))(
  ( (array!82792 (arr!39928 (Array (_ BitVec 32) ValueCell!15535)) (size!40465 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82791)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(assert (=> b!1269554 (= res!844960 (and (= (size!40465 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40464 _keys!1364) (size!40465 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269555 () Bool)

(declare-fun e!723634 () Bool)

(declare-fun e!723638 () Bool)

(declare-fun mapRes!50746 () Bool)

(assert (=> b!1269555 (= e!723634 (and e!723638 mapRes!50746))))

(declare-fun condMapEmpty!50746 () Bool)

(declare-fun mapDefault!50746 () ValueCell!15535)

