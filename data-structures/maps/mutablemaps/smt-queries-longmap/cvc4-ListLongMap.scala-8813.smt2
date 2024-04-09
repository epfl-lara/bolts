; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107142 () Bool)

(assert start!107142)

(declare-fun b_free!27611 () Bool)

(declare-fun b_next!27611 () Bool)

(assert (=> start!107142 (= b_free!27611 (not b_next!27611))))

(declare-fun tp!97061 () Bool)

(declare-fun b_and!45653 () Bool)

(assert (=> start!107142 (= tp!97061 b_and!45653)))

(declare-fun b!1269769 () Bool)

(declare-fun res!845093 () Bool)

(declare-fun e!723769 () Bool)

(assert (=> b!1269769 (=> (not res!845093) (not e!723769))))

(declare-datatypes ((V!48919 0))(
  ( (V!48920 (val!16472 Int)) )
))
(declare-datatypes ((ValueCell!15544 0))(
  ( (ValueCellFull!15544 (v!19107 V!48919)) (EmptyCell!15544) )
))
(declare-datatypes ((array!82823 0))(
  ( (array!82824 (arr!39944 (Array (_ BitVec 32) ValueCell!15544)) (size!40481 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82823)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-datatypes ((array!82825 0))(
  ( (array!82826 (arr!39945 (Array (_ BitVec 32) (_ BitVec 64))) (size!40482 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82825)

(assert (=> b!1269769 (= res!845093 (and (= (size!40481 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40482 _keys!1364) (size!40481 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269770 () Bool)

(declare-fun res!845092 () Bool)

(assert (=> b!1269770 (=> (not res!845092) (not e!723769))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1269770 (= res!845092 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40482 _keys!1364)) (bvslt from!1698 (size!40482 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269771 () Bool)

(declare-fun e!723773 () Bool)

(declare-fun e!723770 () Bool)

(declare-fun mapRes!50773 () Bool)

(assert (=> b!1269771 (= e!723773 (and e!723770 mapRes!50773))))

(declare-fun condMapEmpty!50773 () Bool)

(declare-fun mapDefault!50773 () ValueCell!15544)

