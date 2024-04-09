; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107084 () Bool)

(assert start!107084)

(declare-fun b_free!27553 () Bool)

(declare-fun b_next!27553 () Bool)

(assert (=> start!107084 (= b_free!27553 (not b_next!27553))))

(declare-fun tp!96887 () Bool)

(declare-fun b_and!45595 () Bool)

(assert (=> start!107084 (= tp!96887 b_and!45595)))

(declare-fun b!1269073 () Bool)

(declare-fun res!844658 () Bool)

(declare-fun e!723335 () Bool)

(assert (=> b!1269073 (=> (not res!844658) (not e!723335))))

(declare-datatypes ((array!82717 0))(
  ( (array!82718 (arr!39891 (Array (_ BitVec 32) (_ BitVec 64))) (size!40428 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82717)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82717 (_ BitVec 32)) Bool)

(assert (=> b!1269073 (= res!844658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269074 () Bool)

(declare-fun e!723336 () Bool)

(declare-fun e!723338 () Bool)

(declare-fun mapRes!50686 () Bool)

(assert (=> b!1269074 (= e!723336 (and e!723338 mapRes!50686))))

(declare-fun condMapEmpty!50686 () Bool)

(declare-datatypes ((V!48843 0))(
  ( (V!48844 (val!16443 Int)) )
))
(declare-datatypes ((ValueCell!15515 0))(
  ( (ValueCellFull!15515 (v!19078 V!48843)) (EmptyCell!15515) )
))
(declare-datatypes ((array!82719 0))(
  ( (array!82720 (arr!39892 (Array (_ BitVec 32) ValueCell!15515)) (size!40429 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82719)

(declare-fun mapDefault!50686 () ValueCell!15515)

