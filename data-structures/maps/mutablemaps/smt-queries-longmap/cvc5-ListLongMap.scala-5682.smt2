; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73904 () Bool)

(assert start!73904)

(declare-fun b_free!14791 () Bool)

(declare-fun b_next!14791 () Bool)

(assert (=> start!73904 (= b_free!14791 (not b_next!14791))))

(declare-fun tp!51878 () Bool)

(declare-fun b_and!24561 () Bool)

(assert (=> start!73904 (= tp!51878 b_and!24561)))

(declare-fun b!867741 () Bool)

(declare-fun e!483364 () Bool)

(declare-fun tp_is_empty!16927 () Bool)

(assert (=> b!867741 (= e!483364 tp_is_empty!16927)))

(declare-fun b!867742 () Bool)

(declare-fun res!589711 () Bool)

(declare-fun e!483369 () Bool)

(assert (=> b!867742 (=> (not res!589711) (not e!483369))))

(declare-datatypes ((array!49992 0))(
  ( (array!49993 (arr!24023 (Array (_ BitVec 32) (_ BitVec 64))) (size!24464 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49992)

(declare-datatypes ((List!17159 0))(
  ( (Nil!17156) (Cons!17155 (h!18286 (_ BitVec 64)) (t!24204 List!17159)) )
))
(declare-fun arrayNoDuplicates!0 (array!49992 (_ BitVec 32) List!17159) Bool)

(assert (=> b!867742 (= res!589711 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17156))))

(declare-fun b!867743 () Bool)

(declare-fun e!483365 () Bool)

(declare-fun e!483368 () Bool)

(declare-fun mapRes!26990 () Bool)

(assert (=> b!867743 (= e!483365 (and e!483368 mapRes!26990))))

(declare-fun condMapEmpty!26990 () Bool)

(declare-datatypes ((V!27617 0))(
  ( (V!27618 (val!8511 Int)) )
))
(declare-datatypes ((ValueCell!8024 0))(
  ( (ValueCellFull!8024 (v!10932 V!27617)) (EmptyCell!8024) )
))
(declare-datatypes ((array!49994 0))(
  ( (array!49995 (arr!24024 (Array (_ BitVec 32) ValueCell!8024)) (size!24465 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49994)

(declare-fun mapDefault!26990 () ValueCell!8024)

