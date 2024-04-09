; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108272 () Bool)

(assert start!108272)

(declare-fun b_free!27917 () Bool)

(declare-fun b_next!27917 () Bool)

(assert (=> start!108272 (= b_free!27917 (not b_next!27917))))

(declare-fun tp!98711 () Bool)

(declare-fun b_and!45987 () Bool)

(assert (=> start!108272 (= tp!98711 b_and!45987)))

(declare-fun b!1277980 () Bool)

(declare-fun e!729945 () Bool)

(declare-fun e!729948 () Bool)

(declare-fun mapRes!51737 () Bool)

(assert (=> b!1277980 (= e!729945 (and e!729948 mapRes!51737))))

(declare-fun condMapEmpty!51737 () Bool)

(declare-datatypes ((V!49725 0))(
  ( (V!49726 (val!16808 Int)) )
))
(declare-datatypes ((ValueCell!15835 0))(
  ( (ValueCellFull!15835 (v!19405 V!49725)) (EmptyCell!15835) )
))
(declare-datatypes ((array!83971 0))(
  ( (array!83972 (arr!40490 (Array (_ BitVec 32) ValueCell!15835)) (size!41041 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83971)

(declare-fun mapDefault!51737 () ValueCell!15835)

