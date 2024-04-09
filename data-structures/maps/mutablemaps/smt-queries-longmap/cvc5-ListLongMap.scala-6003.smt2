; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77898 () Bool)

(assert start!77898)

(declare-fun b_free!16429 () Bool)

(declare-fun b_next!16429 () Bool)

(assert (=> start!77898 (= b_free!16429 (not b_next!16429))))

(declare-fun tp!57552 () Bool)

(declare-fun b_and!27015 () Bool)

(assert (=> start!77898 (= tp!57552 b_and!27015)))

(declare-fun b!909115 () Bool)

(declare-fun res!613723 () Bool)

(declare-fun e!509605 () Bool)

(assert (=> b!909115 (=> (not res!613723) (not e!509605))))

(declare-datatypes ((array!53714 0))(
  ( (array!53715 (arr!25811 (Array (_ BitVec 32) (_ BitVec 64))) (size!26271 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53714)

(declare-datatypes ((List!18232 0))(
  ( (Nil!18229) (Cons!18228 (h!19374 (_ BitVec 64)) (t!25821 List!18232)) )
))
(declare-fun arrayNoDuplicates!0 (array!53714 (_ BitVec 32) List!18232) Bool)

(assert (=> b!909115 (= res!613723 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18229))))

(declare-fun res!613724 () Bool)

(assert (=> start!77898 (=> (not res!613724) (not e!509605))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77898 (= res!613724 (validMask!0 mask!1756))))

(assert (=> start!77898 e!509605))

(declare-datatypes ((V!30095 0))(
  ( (V!30096 (val!9474 Int)) )
))
(declare-datatypes ((ValueCell!8942 0))(
  ( (ValueCellFull!8942 (v!11981 V!30095)) (EmptyCell!8942) )
))
(declare-datatypes ((array!53716 0))(
  ( (array!53717 (arr!25812 (Array (_ BitVec 32) ValueCell!8942)) (size!26272 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53716)

(declare-fun e!509606 () Bool)

(declare-fun array_inv!20180 (array!53716) Bool)

(assert (=> start!77898 (and (array_inv!20180 _values!1152) e!509606)))

(assert (=> start!77898 tp!57552))

(assert (=> start!77898 true))

(declare-fun tp_is_empty!18847 () Bool)

(assert (=> start!77898 tp_is_empty!18847))

(declare-fun array_inv!20181 (array!53714) Bool)

(assert (=> start!77898 (array_inv!20181 _keys!1386)))

(declare-fun b!909116 () Bool)

(declare-fun e!509609 () Bool)

(declare-fun mapRes!29986 () Bool)

(assert (=> b!909116 (= e!509606 (and e!509609 mapRes!29986))))

(declare-fun condMapEmpty!29986 () Bool)

(declare-fun mapDefault!29986 () ValueCell!8942)

