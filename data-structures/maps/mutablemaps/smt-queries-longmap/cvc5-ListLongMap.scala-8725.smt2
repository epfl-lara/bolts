; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105880 () Bool)

(assert start!105880)

(declare-fun b_free!27385 () Bool)

(declare-fun b_next!27385 () Bool)

(assert (=> start!105880 (= b_free!27385 (not b_next!27385))))

(declare-fun tp!95688 () Bool)

(declare-fun b_and!45303 () Bool)

(assert (=> start!105880 (= tp!95688 b_and!45303)))

(declare-fun mapIsEmpty!50233 () Bool)

(declare-fun mapRes!50233 () Bool)

(assert (=> mapIsEmpty!50233 mapRes!50233))

(declare-fun b!1260692 () Bool)

(declare-fun res!840225 () Bool)

(declare-fun e!717460 () Bool)

(assert (=> b!1260692 (=> (not res!840225) (not e!717460))))

(declare-datatypes ((array!82179 0))(
  ( (array!82180 (arr!39638 (Array (_ BitVec 32) (_ BitVec 64))) (size!40175 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82179)

(declare-datatypes ((List!28336 0))(
  ( (Nil!28333) (Cons!28332 (h!29541 (_ BitVec 64)) (t!41842 List!28336)) )
))
(declare-fun arrayNoDuplicates!0 (array!82179 (_ BitVec 32) List!28336) Bool)

(assert (=> b!1260692 (= res!840225 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28333))))

(declare-fun b!1260693 () Bool)

(declare-fun e!717456 () Bool)

(declare-fun e!717459 () Bool)

(assert (=> b!1260693 (= e!717456 (and e!717459 mapRes!50233))))

(declare-fun condMapEmpty!50233 () Bool)

(declare-datatypes ((V!48415 0))(
  ( (V!48416 (val!16206 Int)) )
))
(declare-datatypes ((ValueCell!15380 0))(
  ( (ValueCellFull!15380 (v!18910 V!48415)) (EmptyCell!15380) )
))
(declare-datatypes ((array!82181 0))(
  ( (array!82182 (arr!39639 (Array (_ BitVec 32) ValueCell!15380)) (size!40176 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82181)

(declare-fun mapDefault!50233 () ValueCell!15380)

