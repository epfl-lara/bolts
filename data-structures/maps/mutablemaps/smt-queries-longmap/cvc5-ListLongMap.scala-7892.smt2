; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98132 () Bool)

(assert start!98132)

(declare-fun b_free!23797 () Bool)

(declare-fun b_next!23797 () Bool)

(assert (=> start!98132 (= b_free!23797 (not b_next!23797))))

(declare-fun tp!84095 () Bool)

(declare-fun b_and!38399 () Bool)

(assert (=> start!98132 (= tp!84095 b_and!38399)))

(declare-fun b!1126882 () Bool)

(declare-fun e!641444 () Bool)

(declare-fun e!641452 () Bool)

(declare-fun mapRes!44308 () Bool)

(assert (=> b!1126882 (= e!641444 (and e!641452 mapRes!44308))))

(declare-fun condMapEmpty!44308 () Bool)

(declare-datatypes ((V!42897 0))(
  ( (V!42898 (val!14220 Int)) )
))
(declare-datatypes ((ValueCell!13454 0))(
  ( (ValueCellFull!13454 (v!16854 V!42897)) (EmptyCell!13454) )
))
(declare-datatypes ((array!73476 0))(
  ( (array!73477 (arr!35387 (Array (_ BitVec 32) ValueCell!13454)) (size!35924 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73476)

(declare-fun mapDefault!44308 () ValueCell!13454)

