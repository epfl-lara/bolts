; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108236 () Bool)

(assert start!108236)

(declare-fun b_free!27895 () Bool)

(declare-fun b_next!27895 () Bool)

(assert (=> start!108236 (= b_free!27895 (not b_next!27895))))

(declare-fun tp!98643 () Bool)

(declare-fun b_and!45963 () Bool)

(assert (=> start!108236 (= tp!98643 b_and!45963)))

(declare-fun b!1277599 () Bool)

(declare-fun e!729701 () Bool)

(declare-fun e!729704 () Bool)

(declare-fun mapRes!51701 () Bool)

(assert (=> b!1277599 (= e!729701 (and e!729704 mapRes!51701))))

(declare-fun condMapEmpty!51701 () Bool)

(declare-datatypes ((V!49697 0))(
  ( (V!49698 (val!16797 Int)) )
))
(declare-datatypes ((ValueCell!15824 0))(
  ( (ValueCellFull!15824 (v!19393 V!49697)) (EmptyCell!15824) )
))
(declare-datatypes ((array!83929 0))(
  ( (array!83930 (arr!40470 (Array (_ BitVec 32) ValueCell!15824)) (size!41021 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83929)

(declare-fun mapDefault!51701 () ValueCell!15824)

