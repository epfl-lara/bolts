; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105826 () Bool)

(assert start!105826)

(declare-fun b_free!27353 () Bool)

(declare-fun b_next!27353 () Bool)

(assert (=> start!105826 (= b_free!27353 (not b_next!27353))))

(declare-fun tp!95589 () Bool)

(declare-fun b_and!45259 () Bool)

(assert (=> start!105826 (= tp!95589 b_and!45259)))

(declare-fun b!1260076 () Bool)

(declare-fun res!839854 () Bool)

(declare-fun e!717004 () Bool)

(assert (=> b!1260076 (=> (not res!839854) (not e!717004))))

(declare-datatypes ((array!82119 0))(
  ( (array!82120 (arr!39609 (Array (_ BitVec 32) (_ BitVec 64))) (size!40146 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82119)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82119 (_ BitVec 32)) Bool)

(assert (=> b!1260076 (= res!839854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260077 () Bool)

(declare-fun e!717007 () Bool)

(declare-fun e!717009 () Bool)

(declare-fun mapRes!50182 () Bool)

(assert (=> b!1260077 (= e!717007 (and e!717009 mapRes!50182))))

(declare-fun condMapEmpty!50182 () Bool)

(declare-datatypes ((V!48371 0))(
  ( (V!48372 (val!16190 Int)) )
))
(declare-datatypes ((ValueCell!15364 0))(
  ( (ValueCellFull!15364 (v!18893 V!48371)) (EmptyCell!15364) )
))
(declare-datatypes ((array!82121 0))(
  ( (array!82122 (arr!39610 (Array (_ BitVec 32) ValueCell!15364)) (size!40147 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82121)

(declare-fun mapDefault!50182 () ValueCell!15364)

